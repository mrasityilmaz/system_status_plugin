import FlutterMacOS
import Cocoa

public class SystemStatusPlugin: NSObject, FlutterPlugin {
    private let systemStatusService = SystemStatusService()
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "system_status_macos", binaryMessenger: registrar.messenger)
        
        let instance = SystemStatusPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
   public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
switch (call.method) {
    case "getSystemStatus":
        let systemServicesEnums: [SystemServicesEnum]
        
        if let arguments = call.arguments as? [String: Any],
           let types = arguments["types"] as? [String] {
            systemServicesEnums = types.compactMap { convertToSystemServicesEnum($0) }
        } else {
            systemServicesEnums = []
        }
        
      
        let systemStatus = systemStatusService.getSystemStatus(for: systemServicesEnums)
        
        if let jsonString = systemStatus.toJSON() {
            result(jsonString)
        } else {
            result(FlutterError(
                code: "SystemStatusPlugin-Error",
                message: "Encoding Error",
                details: "Failed to encode SystemStatusModel to JSON"
            ))
        }
    default:
        result(FlutterMethodNotImplemented)
}
}
}
