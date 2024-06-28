import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:system_status_platform_interface/src/Models/battery_status/battery_status_model.dart';
import 'package:system_status_platform_interface/src/Models/cpu_usage_info/cpu_usage_info_model.dart';
import 'package:system_status_platform_interface/src/Models/disk_space/disk_space_model.dart';
import 'package:system_status_platform_interface/src/Models/memory_statistics/memory_statistics_model.dart';

part 'system_status_model.freezed.dart';
part 'system_status_model.g.dart';

@freezed
class SystemStatusModel with _$SystemStatusModel {
  const factory SystemStatusModel({
    CpuUsageInfoModel? cpuUsage,
    DiskSpaceModel? diskSpace,
    MemoryStatisticsModel? memoryStatistics,
    BatteryStatusModel? batteryStatus,
  }) = _SystemStatusModel;

  factory SystemStatusModel.fromJson(Map<String, dynamic> json) => _$SystemStatusModelFromJson(json);
}
