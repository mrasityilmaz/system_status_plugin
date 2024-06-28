//
//  CpuUsageInfoModel.swift
//  test-monitor
//
//  Created by Muhammed Raşit Yılmaz on 12.06.2024.
//
import Foundation

struct CpuUsageInfoModel : Codable{
    var userPercentage: Double
    var sysPercentage: Double
    var idlePercentage: Double
    
    
    func toJSON() -> String? {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        if let jsonData = try? encoder.encode(self) {
            return String(data: jsonData, encoding: .utf8)
        }
       return nil
    }
}
