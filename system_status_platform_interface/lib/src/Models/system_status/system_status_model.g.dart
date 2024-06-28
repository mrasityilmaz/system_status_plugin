// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SystemStatusModelImpl _$$SystemStatusModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SystemStatusModelImpl(
      cpuUsage: json['cpuUsage'] == null
          ? null
          : CpuUsageInfoModel.fromJson(
              json['cpuUsage'] as Map<String, dynamic>),
      diskSpace: json['diskSpace'] == null
          ? null
          : DiskSpaceModel.fromJson(json['diskSpace'] as Map<String, dynamic>),
      memoryStatistics: json['memoryStatistics'] == null
          ? null
          : MemoryStatisticsModel.fromJson(
              json['memoryStatistics'] as Map<String, dynamic>),
      batteryStatus: json['batteryStatus'] == null
          ? null
          : BatteryStatusModel.fromJson(
              json['batteryStatus'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SystemStatusModelImplToJson(
        _$SystemStatusModelImpl instance) =>
    <String, dynamic>{
      'cpuUsage': instance.cpuUsage,
      'diskSpace': instance.diskSpace,
      'memoryStatistics': instance.memoryStatistics,
      'batteryStatus': instance.batteryStatus,
    };
