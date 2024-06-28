import Foundation
import SystemConfiguration
import Darwin

private let HOST_BASIC_INFO_COUNT: mach_msg_type_number_t = UInt32(MemoryLayout<host_basic_info_data_t>.size / MemoryLayout<integer_t>.size)
private let HOST_LOAD_INFO_COUNT: mach_msg_type_number_t = UInt32(MemoryLayout<host_load_info_data_t>.size / MemoryLayout<integer_t>.size)
private let HOST_CPU_LOAD_INFO_COUNT: mach_msg_type_number_t = UInt32(MemoryLayout<host_cpu_load_info_data_t>.size / MemoryLayout<integer_t>.size)
private let HOST_VM_INFO64_COUNT: mach_msg_type_number_t = UInt32(MemoryLayout<vm_statistics64_data_t>.size / MemoryLayout<integer_t>.size)
private let HOST_SCHED_INFO_COUNT: mach_msg_type_number_t = UInt32(MemoryLayout<host_sched_info_data_t>.size / MemoryLayout<integer_t>.size)
private let PROCESSOR_SET_LOAD_INFO_COUNT: mach_msg_type_number_t = UInt32(MemoryLayout<processor_set_load_info_data_t>.size / MemoryLayout<natural_t>.size)

class MemoryStatisticsManager {
    private let PAGE_SIZE = vm_kernel_page_size
    private let machHost = mach_host_self()
    
    init() {
        // Initialization code if needed
    }
    
    func getMemoryStatistics() -> MemoryStatisticsModel? {
        guard let stats = getVMStatistics64() else {
            return nil
        }
        
        let applicationMemoryBytes = UInt64(stats.internal_page_count) - UInt64(stats.purgeable_count)
        let wiredMemoryBytes = UInt64(stats.wire_count)
        let compressedMemoryBytes = UInt64(stats.compressor_page_count)
        
        let applicationMemory = bytesToBytes(applicationMemoryBytes)
        let wiredMemory = bytesToBytes(wiredMemoryBytes)
        let compressedMemory = bytesToBytes(compressedMemoryBytes)
        
        let totalUsedMemoryBytes = applicationMemoryBytes + wiredMemoryBytes + compressedMemoryBytes
        let memoryUsageRatio = ((Double(bytesToBytes(totalUsedMemoryBytes) / (1024 * 1024)) / Double(ProcessInfo.processInfo.physicalMemory / (1024 * 1024))) * 100.0)
        
        let memoryPressure = getMemoryPressure()
        
        return MemoryStatisticsModel(
            memoryUsageRatio: memoryUsageRatio,
            applicationMemory: Double(applicationMemory),
            wiredMemory: Double(wiredMemory),
            compressedMemory: Double(compressedMemory),
            memoryPressure: memoryPressure
        )
    }
    
    private func bytesToBytes(_ bytes: UInt64) -> UInt64 {
        return bytes * UInt64(PAGE_SIZE)
    }
    
    private func getVMStatistics64() -> vm_statistics64? {
        var size = HOST_VM_INFO64_COUNT
        let hostInfo = vm_statistics64_t.allocate(capacity: 1)
        
        let result = hostInfo.withMemoryRebound(to: integer_t.self, capacity: Int(size)) {
            host_statistics64(machHost, HOST_VM_INFO64, $0, &size)
        }
        
        let data = hostInfo.move()
        hostInfo.deallocate()
        
        guard result == KERN_SUCCESS else {
            print("ERROR - \(#file):\(#function) - kern_result_t = \(result)")
            return nil
        }
        
        return data
    }
    
    private func getMemoryPressure() -> Float {
        let task = Process()
        task.launchPath = "/usr/bin/memory_pressure"
        let pipe = Pipe()
        task.standardOutput = pipe
        task.launch()
        
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        guard let output = String(data: data, encoding: .utf8) else {
            return 0.0
        }
        
        if let range = output.range(of: "System-wide memory free percentage:") {
            let substring = output[range.upperBound...]
            let percentageString = substring.split(separator: "%")[0].trimmingCharacters(in: .whitespaces)
            if let percentage = Float(percentageString) {
                return 100.0 - percentage
            }
        }
        
        return 0.0
    }
}

