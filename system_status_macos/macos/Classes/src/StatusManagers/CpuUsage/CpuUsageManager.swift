import Foundation



class CpuUsageManager {
    private var previousUserTime: Int64 = 0
    private var previousSystemTime: Int64 = 0
    private var previousIdleTime: Int64 = 0
    
    func getCpuUsageInfo() -> CpuUsageInfoModel {
        var cpuInfo: processor_info_array_t?
        var processorMsgCount: mach_msg_type_number_t = 0
        var processors: natural_t = 0
        
        let result = host_processor_info(mach_host_self(), PROCESSOR_CPU_LOAD_INFO, &processors, &cpuInfo, &processorMsgCount)
        
        if result == KERN_SUCCESS {
            guard let cpuInfoArray = cpuInfo else {
                return CpuUsageInfoModel(userPercentage: 0, sysPercentage: 0,idlePercentage: 0)
            }
            
            var totalUser: Int64 = 0
            var totalSystem: Int64 = 0
            var totalIdle: Int64 = 0
            
            for i in 0 ..< Int(processors) {
                let user = cpuInfoArray.advanced(by: Int(CPU_STATE_MAX) * i + Int(CPU_STATE_USER)).pointee
                let system = cpuInfoArray.advanced(by: Int(CPU_STATE_MAX) * i + Int(CPU_STATE_SYSTEM)).pointee
                let idle = cpuInfoArray.advanced(by: Int(CPU_STATE_MAX) * i + Int(CPU_STATE_IDLE)).pointee
                
                totalUser += Int64(user)
                totalSystem += Int64(system)
                totalIdle += Int64(idle)
            }
            
            let deltaUser = totalUser - previousUserTime
            let deltaSystem = totalSystem - previousSystemTime
            let deltaIdle = totalIdle - previousIdleTime
            let deltaTotal = deltaUser + deltaSystem + deltaIdle
            
            previousUserTime = totalUser
            previousSystemTime = totalSystem
            previousIdleTime = totalIdle
            
            vm_deallocate(mach_task_self_, vm_address_t(Int(bitPattern: cpuInfo)), vm_size_t(processorMsgCount))
            
            let userPercentage = Double(deltaUser) / Double(deltaTotal) * 100
            let systemPercentage = Double(deltaSystem) / Double(deltaTotal) * 100
            let idlePercentage = Double(deltaIdle) / Double(deltaTotal) * 100
            
            return CpuUsageInfoModel(
                userPercentage: userPercentage,
                sysPercentage: systemPercentage,
                idlePercentage: idlePercentage
            )
        } else {
            print("Error: \(result)")
        }
        
        return CpuUsageInfoModel(userPercentage: 0,  sysPercentage: 0, idlePercentage: 0)
    }
}
