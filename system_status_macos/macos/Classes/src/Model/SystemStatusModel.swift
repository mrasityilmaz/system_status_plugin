//
//  SystemStatusModel.swift
//  test-monitor
//
//  Created by Muhammed Raşit Yılmaz on 15.06.2024.
//

import Foundation

struct SystemStatusModel: Codable {
    var cpuUsage: CpuUsageInfoModel?
    var diskSpace: DiskSpaceModel?
    var memoryStatistics: MemoryStatisticsModel?
    var batteryStatus: BatteryStatusModel?
    
    func toJSON() -> String? {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        if let jsonData = try? encoder.encode(self) {
            return String(data: jsonData, encoding: .utf8)
        }
      return nil
    }

   
}
