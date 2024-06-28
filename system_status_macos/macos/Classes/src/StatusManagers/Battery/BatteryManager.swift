//
//  InternalFinder.swift
//  test-monitor
//
//  Created by Muhammed Raşit Yılmaz on 14.06.2024.
//

import Foundation
import IOKit.ps

public class BatteryManager {
    private var serviceInternal: io_connect_t = 0 // io_object_t
    private var internalChecked: Bool = false
    private var hasInternalBattery: Bool = false
    
    public init() { }
    
    public var batteryPresent: Bool {
        get {
            if !self.internalChecked {
                let snapshot = IOPSCopyPowerSourcesInfo().takeRetainedValue()
                let sources = IOPSCopyPowerSourcesList(snapshot).takeRetainedValue() as Array
                
                self.hasInternalBattery = sources.count > 0
                self.internalChecked = true
            }
            
            return self.hasInternalBattery
        }
    }
    
    fileprivate func open() {
        
        if #available(macOS 12.0, *) {
            // Use kIOMainPortDefault or other macOS 12.0+ APIs
            self.serviceInternal = IOServiceGetMatchingService(kIOMainPortDefault, IOServiceMatching("AppleSmartBattery"))
        } else {
            // Fallback code for older macOS versions
            self.serviceInternal = IOServiceGetMatchingService(kIOMasterPortDefault, IOServiceMatching("AppleSmartBattery"))
        }
       
    }
    
    fileprivate func close() {
        IOServiceClose(self.serviceInternal)
        IOObjectRelease(self.serviceInternal)
        
        self.serviceInternal = 0
    }
    
    func getBatteryStatusInfo() -> BatteryStatusModel? {
        self.open()
        
        if self.serviceInternal == 0 {
            return nil
        }
        
        if self.batteryPresent == true {
            let battery = self.getBatteryData()
            
            self.close()
            
            return battery
        }else{
            
            self.close()
            return nil
        }
        
      
    }
    
    fileprivate func getBatteryData() -> BatteryStatusModel? {
        var battery = BatteryStatusModel()
        
        let snapshot = IOPSCopyPowerSourcesInfo().takeRetainedValue()
        let sources = IOPSCopyPowerSourcesList(snapshot).takeRetainedValue() as Array
        
        for ps in sources {
            // Fetch the information for a given power source out of our snapshot
            let info = IOPSGetPowerSourceDescription(snapshot, ps).takeUnretainedValue() as! Dictionary<String, Any>
            
            if  info["BatteryHealth"] != nil  {
                battery.healthString = (info["BatteryHealth"] as! String)
            }
            
        }
        
        
        // Capacities
        battery.currentCapacity = self.getIntValue("CurrentCapacity" as CFString)
      
        
        // Battery Cycles
        battery.cycleCount = self.getIntValue("CycleCount" as CFString)
     
        
        // Plug
        battery.acPowered = self.getBoolValue("ExternalConnected" as CFString)
        battery.isCharging = self.getBoolValue("IsCharging" as CFString)
        battery.isCharged = self.getBoolValue("FullyCharged" as CFString)
        
        // Power
        battery.amperage = self.getIntValue("Amperage" as CFString)
        battery.voltage = self.getVoltage()
        
        // Various
        battery.temperature = self.getTemperature()
     
        
        if let amperage = battery.amperage,
           let volts = battery.voltage, let isCharging = battery.isCharging {
            let factor: CGFloat = isCharging ? 1 : -1
            let watts: CGFloat = (CGFloat(amperage) * CGFloat(volts)) / 1000.0 * factor
            
            battery.watts = Double(watts)
        }
        
        return battery
    }
    
    fileprivate func getIntValue(_ identifier: CFString) -> Int? {
        if let value = IORegistryEntryCreateCFProperty(self.serviceInternal, identifier, kCFAllocatorDefault, 0) {
            return value.takeRetainedValue() as? Int
        }
        
        return nil
    }
    
    fileprivate func getStringValue(_ identifier: CFString) -> String? {
        if let value = IORegistryEntryCreateCFProperty(self.serviceInternal, identifier, kCFAllocatorDefault, 0) {
            return value.takeRetainedValue() as? String
        }
        
        return nil
    }
    
    fileprivate func getBoolValue(_ forIdentifier: CFString) -> Bool? {
        if let value = IORegistryEntryCreateCFProperty(self.serviceInternal, forIdentifier, kCFAllocatorDefault, 0) {
            return value.takeRetainedValue() as? Bool
        }
        
        return nil
    }
    
    fileprivate func getTemperature() -> Double? {
        if let value = IORegistryEntryCreateCFProperty(self.serviceInternal, "Temperature" as CFString, kCFAllocatorDefault, 0) {
            return value.takeRetainedValue() as! Double / 100.0
        }
        
        return nil
    }
    
    fileprivate func getDoubleValue(_ identifier: CFString) -> Double? {
        if let value = IORegistryEntryCreateCFProperty(self.serviceInternal, identifier, kCFAllocatorDefault, 0) {
            return value.takeRetainedValue() as? Double
        }
        
        return nil
    }
    
    fileprivate func getVoltage() -> Double? {
        if let value = getDoubleValue("Voltage" as CFString) {
            return value / 1000.0
        }
        
        return nil
    }
    
    
}
