//
//  BatteryStatusModel.swift
//  test-monitor
//
//  Created by Muhammed Raşit Yılmaz on 15.06.2024.
//

import Foundation

struct BatteryStatusModel: Codable {
    
    
    /*  currentCapacity    Int?    100
     cycleCount    Int?    237
     acPowered    Bool?    false    some
     isCharging    Bool?    false    some
     isCharged    Bool?    true    some
     amperage    Int?    -111
     voltage    Double?    12.553000000000001
     watts    Double?    1.393383
     temperature    Double?    30.390000000000001 */

    public var currentCapacity: Int?
    public  var cycleCount: Int?
    public  var acPowered: Bool?
    public  var isCharging: Bool?
    public  var isCharged: Bool?
    public   var amperage: Int?
    public   var voltage: Double?
    public   var watts: Double?
    public   var temperature: Double?
    public   var healthString: String = "Unknown"
    
 
    
    func toJSON() -> String? {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        if let jsonData = try? encoder.encode(self) {
            return String(data: jsonData, encoding: .utf8)
        }
        return nil
    }
}
