import Foundation

func convertToSystemServicesEnum(_ flutterEnum: String) -> SystemServicesEnum? {
    switch flutterEnum {
    case "memoryStatistics":
        return .memoryStatistics
    case "cpuUsage":
        return .cpuUsage
    case "diskSpace":
        return .diskSpace
    case "batteryStatus":
        return .batteryStatus
    default:
        return nil
    }
}
