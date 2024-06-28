// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disk_space_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiskSpaceModelImpl _$$DiskSpaceModelImplFromJson(Map<String, dynamic> json) =>
    _$DiskSpaceModelImpl(
      totalDiskSpace: (json['totalDiskSpace'] as num?)?.toInt(),
      freeDiskSpace: (json['freeDiskSpace'] as num?)?.toInt(),
      usedDiskSpace: (json['usedDiskSpace'] as num?)?.toInt(),
      usedPercentage: (json['usedPercentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$DiskSpaceModelImplToJson(
        _$DiskSpaceModelImpl instance) =>
    <String, dynamic>{
      'totalDiskSpace': instance.totalDiskSpace,
      'freeDiskSpace': instance.freeDiskSpace,
      'usedDiskSpace': instance.usedDiskSpace,
      'usedPercentage': instance.usedPercentage,
    };
