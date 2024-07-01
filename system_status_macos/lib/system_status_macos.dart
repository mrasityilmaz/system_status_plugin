import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:system_status_platform_interface/system_status_platform_interface.dart';

/// An implementation of [SystemStatusPlatform]
/// that uses method channels.

class SystemStatusMacOS extends SystemStatusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('system_status_macos');

  /// Registers this class as the default instance
  /// of [SystemStatusPlatform]
  static void registerWith() {
    SystemStatusPlatform.instance = SystemStatusMacOS();
  }

  @override
  Future<SystemStatusModel?> getSystemStatus({Set<SystemStatusTypeEnum>? systemStatusTypes}) async {
    try {
      final SystemStatusModel? systemStatusModel = await methodChannel.invokeMethod<String?>('getSystemStatus', {"types": systemStatusTypes?.map((e) => e.name).toList()}).then((stringValue) {
        if (stringValue != null) {
          return SystemStatusModel.fromJson(json.decode(stringValue));
        }
        return null;
      });

      if (systemStatusModel != null) {
        return systemStatusModel;
      }
      return null;
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
