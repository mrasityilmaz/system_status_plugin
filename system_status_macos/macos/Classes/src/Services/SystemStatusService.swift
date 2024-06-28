//
//  SystemStatusService.swift
//  test-monitor
//
//  Created by Muhammed Raşit Yılmaz on 12.06.2024.
//

import Foundation

class SystemStatusService {
    private let cpuUsageManager = CpuUsageManager()
    private let diskSpaceManager = DiskSpaceManager()
    private let memoryStatisticsManager = MemoryStatisticsManager()
    private let batteryStatusManager = BatteryManager()
    
    
    
    
    func getSystemStatus(for types: [SystemServicesEnum]? = nil) -> SystemStatusModel {
        var cpuUsage: CpuUsageInfoModel?
        var diskSpace: DiskSpaceModel?
        var memoryStatistics: MemoryStatisticsModel?
        var batteryStatus: BatteryStatusModel?
        
        
        let requestedTypes = types?.isEmpty == false ? types! : [.cpuUsage, .diskSpace, .memoryStatistics, .batteryStatus]
        
        for type in requestedTypes {
            switch type {
            case .cpuUsage:
                cpuUsage = cpuUsageManager.getCpuUsageInfo()
            case .diskSpace:
                diskSpace = diskSpaceManager.getDiskSpaces()
            case .memoryStatistics:
                memoryStatistics = memoryStatisticsManager.getMemoryStatistics()
            case .batteryStatus:
                batteryStatus = batteryStatusManager.getBatteryStatusInfo()
            }
        }
        
        return SystemStatusModel(
            cpuUsage: cpuUsage,
            diskSpace: diskSpace,
            memoryStatistics: memoryStatistics,
            batteryStatus: batteryStatus
        )
    }

}


