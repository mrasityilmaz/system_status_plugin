// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cpu_usage_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CpuUsageInfoModelImpl _$$CpuUsageInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CpuUsageInfoModelImpl(
      userPercentage: (json['userPercentage'] as num?)?.toDouble(),
      sysPercentage: (json['sysPercentage'] as num?)?.toDouble(),
      idlePercentage: (json['idlePercentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CpuUsageInfoModelImplToJson(
        _$CpuUsageInfoModelImpl instance) =>
    <String, dynamic>{
      'userPercentage': instance.userPercentage,
      'sysPercentage': instance.sysPercentage,
      'idlePercentage': instance.idlePercentage,
    };
