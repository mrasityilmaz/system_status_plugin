// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:system_status_platform_interface/src/Enums/system_status_type.dart';
import 'package:system_status_platform_interface/src/Models/system_status/system_status_model.dart';
import 'package:system_status_platform_interface/src/method_channel_system_status.dart';

export 'package:system_status_platform_interface/src/Enums/system_status_type.dart';
export 'package:system_status_platform_interface/src/Models/battery_status/battery_status_model.dart';
export 'package:system_status_platform_interface/src/Models/cpu_usage_info/cpu_usage_info_model.dart';
export 'package:system_status_platform_interface/src/Models/disk_space/disk_space_model.dart';
export 'package:system_status_platform_interface/src/Models/memory_statistics/memory_statistics_model.dart';
export 'package:system_status_platform_interface/src/Models/system_status/system_status_model.dart';
export 'package:system_status_platform_interface/src/method_channel_system_status.dart';

/// The interface that implementations of flutter_document_scanner
/// must implement.
///
/// Platform implementations should extend this class
/// rather than implement it as `SystemStatus`.
/// Extending this class (using `extends`) ensures that the subclass will get
/// the default implementation, while platform implementations that `implements`
///  this interface will be broken by newly added
///  [SystemStatusPlatform] methods.
abstract class SystemStatusPlatform extends PlatformInterface {
  /// Constructs a FlutterDocumentScannerPlatform.
  SystemStatusPlatform() : super(token: _token);

  static final Object _token = Object();

  static SystemStatusPlatform _instance = MethodChannelSytemStatus();

  /// The default instance of [SystemStatusPlatform] to use.
  ///
  /// Defaults to [MethodChannelSytemStatus].
  static SystemStatusPlatform get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [SystemStatusPlatform] when
  /// they register themselves.
  static set instance(SystemStatusPlatform instance) {
    PlatformInterface.verify(instance, _token);
    _instance = instance;
  }

  /// Example
  Future<SystemStatusModel?> getSystemStatus({Set<SystemStatusTypeEnum>? systemStatusTypes}) {
    throw UnimplementedError('fetchStatusExample() has not been implemented.');
  }
}
