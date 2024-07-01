import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'battery_status_model.freezed.dart';
part 'battery_status_model.g.dart';

@freezed

/// Model class representing the status of the battery.
class BatteryStatusModel with _$BatteryStatusModel {
  /// Factory constructor for creating a new `BatteryStatusModel` instance.
  const factory BatteryStatusModel({
    /// The current capacity of the battery in mAh (milliampere-hour).
    int? currentCapacity,

    /// The number of charge cycles the battery has gone through.
    int? cycleCount,

    /// Whether the battery is currently connected to an AC power source.
    bool? acPowered,

    /// Whether the battery is currently charging.
    bool? isCharging,

    /// Whether the battery is fully charged.
    bool? isCharged,

    /// The current amperage of the battery in mA (milliamperes).
    int? amperage,

    /// The voltage of the battery in volts.
    double? voltage,

    /// The power consumption of the battery in watts.
    double? watts,

    /// The temperature of the battery in degrees Celsius.
    double? temperature,

    /// A string representing the health status of the battery, defaulting to 'Unknown' if not provided.
    @Default('Unknown') String healthString,
  }) = _BatteryStatusModel;

  const BatteryStatusModel._();

  /// Factory method for creating a `BatteryStatusModel` from a JSON object.
  factory BatteryStatusModel.fromJson(Map<String, dynamic> json) => _$BatteryStatusModelFromJson(json);
}
