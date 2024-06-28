//
//  DiskSpace.swift
//  test-monitor
//
//  Created by Muhammed Raşit Yılmaz on 15.06.2024.
//

import Foundation

class DiskSpaceManager {
    
    private func _getFileSize(for key: FileAttributeKey) -> Int64? {
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        
        guard let lastPath = paths.last,
              let attributeDictionary = try? FileManager.default.attributesOfFileSystem(forPath: lastPath) else {
            return nil
        }
        
        if let size = attributeDictionary[key] as? NSNumber {
            return size.int64Value
        } else {
            return nil
        }
    }
    
    func getDiskSpaces() -> DiskSpaceModel? {
        guard let availableDiskSpace = _getFileSize(for: .systemSize),
              let freeDiskSpace = _getFileSize(for: .systemFreeSize) else {
            return nil
        }
        
        let usedDiskSpace = availableDiskSpace - freeDiskSpace
        let totalSpace = availableDiskSpace
        let usedPercentage = Double(usedDiskSpace) / Double(totalSpace) * 100.0
        
        let diskSpaces = DiskSpaceModel(totalDiskSpace: totalSpace,
                                        freeDiskSpace: freeDiskSpace,
                                        usedDiskSpace: usedDiskSpace,
                                        usedPercentage: usedPercentage)
        
        return diskSpaces
    }
}

