//
//  DiskSpaceModel.swift
//  test-monitor
//
//  Created by Muhammed Raşit Yılmaz on 15.06.2024.
//


import Foundation

struct DiskSpaceModel: Codable {
    var totalDiskSpace: Int64
    var freeDiskSpace: Int64
    var usedDiskSpace: Int64
    var usedPercentage: Double
    
    func toJSON() -> String? {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        if let jsonData = try? encoder.encode(self) {
            return String(data: jsonData, encoding: .utf8)
        }
       return nil
    }
}
