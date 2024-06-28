import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'battery_status_model.freezed.dart';
part 'battery_status_model.g.dart';

@freezed
class BatteryStatusModel with _$BatteryStatusModel {
  const factory BatteryStatusModel({
    int? currentCapacity,
    int? cycleCount,
    bool? acPowered,
    bool? isCharging,
    bool? isCharged,
    int? amperage,
    double? voltage,
    double? watts,
    double? temperature,
    @Default("Unknown") String healthString,
  }) = _BatteryStatusModel;

  const BatteryStatusModel._();

  factory BatteryStatusModel.fromJson(Map<String, dynamic> json) => _$BatteryStatusModelFromJson(json);
}
