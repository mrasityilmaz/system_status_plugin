//
//  extensions.swift
//  test-monitor
//
//  Created by Muhammed Raşit Yılmaz on 15.06.2024.
//

import Foundation

extension Int64 {
    func toString(units: ByteCountFormatter.Units = .useGB) -> String {
        let formatter = ByteCountFormatter()
        formatter.allowedUnits = units
        formatter.countStyle = .decimal
        formatter.includesUnit = false
        return formatter.string(fromByteCount: self)
    }
}



