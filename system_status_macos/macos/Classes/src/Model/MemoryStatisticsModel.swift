//
//  MemoryStatistics.swift
//  test-monitor
//
//  Created by Muhammed Raşit Yılmaz on 15.06.2024.
//

import Foundation

struct MemoryStatisticsModel: Codable {
    var memoryUsageRatio: Double
    var applicationMemory: Double
    var wiredMemory: Double
    var compressedMemory: Double
    var memoryPressure: Float
    
    func toJSON() -> String? {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        if let jsonData = try? encoder.encode(self) {
            return String(data: jsonData, encoding: .utf8)
        }
       return nil
    }
}
