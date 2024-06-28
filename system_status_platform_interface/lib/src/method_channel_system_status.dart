// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:convert';

import 'package:flutter/foundation.dart' show debugPrint, visibleForTesting;
import 'package:flutter/services.dart';
import 'package:system_status_platform_interface/system_status_platform_interface.dart';

/// An implementation of [SystemStatusPlatform]
/// that uses method channels.
class MethodChannelSytemStatus extends SystemStatusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('system_status');
  @override
  Future<SystemStatusModel?> getSystemStatus({Set<SystemStatusTypeEnum>? systemStatusTypes}) async {
    try {
      final systemStatusModel = await methodChannel.invokeMethod<String?>('getSystemStatus', {'types': systemStatusTypes?.map((e) => e.name).toList()}).then((stringValue) {
        if (stringValue != null) {
          return SystemStatusModel.fromJson(json.decode(stringValue) as Map<String, dynamic>);
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
