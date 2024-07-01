import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:system_status_platform_interface/src/Models/battery_status/battery_status_model.dart';
import 'package:system_status_platform_interface/src/Models/cpu_usage_info/cpu_usage_info_model.dart';
import 'package:system_status_platform_interface/src/Models/disk_space/disk_space_model.dart';
import 'package:system_status_platform_interface/src/Models/memory_statistics/memory_statistics_model.dart';

part 'system_status_model.freezed.dart';
part 'system_status_model.g.dart';

@freezed

/// Model class representing system status information.
class SystemStatusModel with _$SystemStatusModel {
  /// Factory constructor for creating a new `SystemStatusModel` instance.
  const factory SystemStatusModel({
    /// CPU usage information.
    CpuUsageInfoModel? cpuUsage,

    /// Disk space information.
    DiskSpaceModel? diskSpace,

    /// Memory statistics information.
    MemoryStatisticsModel? memoryStatistics,

    /// Battery status information.
    BatteryStatusModel? batteryStatus,
  }) = _SystemStatusModel;

  /// Private constructor for internal use.
  const SystemStatusModel._();

  /// Factory method for creating a `SystemStatusModel` from a JSON object.
  factory SystemStatusModel.fromJson(Map<String, dynamic> json) => _$SystemStatusModelFromJson(json);
}
