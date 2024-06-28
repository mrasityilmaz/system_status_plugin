// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battery_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BatteryStatusModelImpl _$$BatteryStatusModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BatteryStatusModelImpl(
      currentCapacity: (json['currentCapacity'] as num?)?.toInt(),
      cycleCount: (json['cycleCount'] as num?)?.toInt(),
      acPowered: json['acPowered'] as bool?,
      isCharging: json['isCharging'] as bool?,
      isCharged: json['isCharged'] as bool?,
      amperage: (json['amperage'] as num?)?.toInt(),
      voltage: (json['voltage'] as num?)?.toDouble(),
      watts: (json['watts'] as num?)?.toDouble(),
      temperature: (json['temperature'] as num?)?.toDouble(),
      healthString: json['healthString'] as String? ?? "Unknown",
    );

Map<String, dynamic> _$$BatteryStatusModelImplToJson(
        _$BatteryStatusModelImpl instance) =>
    <String, dynamic>{
      'currentCapacity': instance.currentCapacity,
      'cycleCount': instance.cycleCount,
      'acPowered': instance.acPowered,
      'isCharging': instance.isCharging,
      'isCharged': instance.isCharged,
      'amperage': instance.amperage,
      'voltage': instance.voltage,
      'watts': instance.watts,
      'temperature': instance.temperature,
      'healthString': instance.healthString,
    };
