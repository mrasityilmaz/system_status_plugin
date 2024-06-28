// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memory_statistics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemoryStatisticsModelImpl _$$MemoryStatisticsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MemoryStatisticsModelImpl(
      memoryUsageRatio: (json['memoryUsageRatio'] as num?)?.toDouble(),
      applicationMemory: (json['applicationMemory'] as num?)?.toDouble(),
      wiredMemory: (json['wiredMemory'] as num?)?.toDouble(),
      compressedMemory: (json['compressedMemory'] as num?)?.toDouble(),
      memoryPressure: (json['memoryPressure'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$MemoryStatisticsModelImplToJson(
        _$MemoryStatisticsModelImpl instance) =>
    <String, dynamic>{
      'memoryUsageRatio': instance.memoryUsageRatio,
      'applicationMemory': instance.applicationMemory,
      'wiredMemory': instance.wiredMemory,
      'compressedMemory': instance.compressedMemory,
      'memoryPressure': instance.memoryPressure,
    };
