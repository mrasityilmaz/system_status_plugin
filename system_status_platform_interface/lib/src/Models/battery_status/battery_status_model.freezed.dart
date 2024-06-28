// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battery_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BatteryStatusModel _$BatteryStatusModelFromJson(Map<String, dynamic> json) {
  return _BatteryStatusModel.fromJson(json);
}

/// @nodoc
mixin _$BatteryStatusModel {
  int? get currentCapacity => throw _privateConstructorUsedError;
  int? get cycleCount => throw _privateConstructorUsedError;
  bool? get acPowered => throw _privateConstructorUsedError;
  bool? get isCharging => throw _privateConstructorUsedError;
  bool? get isCharged => throw _privateConstructorUsedError;
  int? get amperage => throw _privateConstructorUsedError;
  double? get voltage => throw _privateConstructorUsedError;
  double? get watts => throw _privateConstructorUsedError;
  double? get temperature => throw _privateConstructorUsedError;
  String get healthString => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BatteryStatusModelCopyWith<BatteryStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatteryStatusModelCopyWith<$Res> {
  factory $BatteryStatusModelCopyWith(
          BatteryStatusModel value, $Res Function(BatteryStatusModel) then) =
      _$BatteryStatusModelCopyWithImpl<$Res, BatteryStatusModel>;
  @useResult
  $Res call(
      {int? currentCapacity,
      int? cycleCount,
      bool? acPowered,
      bool? isCharging,
      bool? isCharged,
      int? amperage,
      double? voltage,
      double? watts,
      double? temperature,
      String healthString});
}

/// @nodoc
class _$BatteryStatusModelCopyWithImpl<$Res, $Val extends BatteryStatusModel>
    implements $BatteryStatusModelCopyWith<$Res> {
  _$BatteryStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentCapacity = freezed,
    Object? cycleCount = freezed,
    Object? acPowered = freezed,
    Object? isCharging = freezed,
    Object? isCharged = freezed,
    Object? amperage = freezed,
    Object? voltage = freezed,
    Object? watts = freezed,
    Object? temperature = freezed,
    Object? healthString = null,
  }) {
    return _then(_value.copyWith(
      currentCapacity: freezed == currentCapacity
          ? _value.currentCapacity
          : currentCapacity // ignore: cast_nullable_to_non_nullable
              as int?,
      cycleCount: freezed == cycleCount
          ? _value.cycleCount
          : cycleCount // ignore: cast_nullable_to_non_nullable
              as int?,
      acPowered: freezed == acPowered
          ? _value.acPowered
          : acPowered // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCharging: freezed == isCharging
          ? _value.isCharging
          : isCharging // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCharged: freezed == isCharged
          ? _value.isCharged
          : isCharged // ignore: cast_nullable_to_non_nullable
              as bool?,
      amperage: freezed == amperage
          ? _value.amperage
          : amperage // ignore: cast_nullable_to_non_nullable
              as int?,
      voltage: freezed == voltage
          ? _value.voltage
          : voltage // ignore: cast_nullable_to_non_nullable
              as double?,
      watts: freezed == watts
          ? _value.watts
          : watts // ignore: cast_nullable_to_non_nullable
              as double?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      healthString: null == healthString
          ? _value.healthString
          : healthString // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BatteryStatusModelImplCopyWith<$Res>
    implements $BatteryStatusModelCopyWith<$Res> {
  factory _$$BatteryStatusModelImplCopyWith(_$BatteryStatusModelImpl value,
          $Res Function(_$BatteryStatusModelImpl) then) =
      __$$BatteryStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? currentCapacity,
      int? cycleCount,
      bool? acPowered,
      bool? isCharging,
      bool? isCharged,
      int? amperage,
      double? voltage,
      double? watts,
      double? temperature,
      String healthString});
}

/// @nodoc
class __$$BatteryStatusModelImplCopyWithImpl<$Res>
    extends _$BatteryStatusModelCopyWithImpl<$Res, _$BatteryStatusModelImpl>
    implements _$$BatteryStatusModelImplCopyWith<$Res> {
  __$$BatteryStatusModelImplCopyWithImpl(_$BatteryStatusModelImpl _value,
      $Res Function(_$BatteryStatusModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentCapacity = freezed,
    Object? cycleCount = freezed,
    Object? acPowered = freezed,
    Object? isCharging = freezed,
    Object? isCharged = freezed,
    Object? amperage = freezed,
    Object? voltage = freezed,
    Object? watts = freezed,
    Object? temperature = freezed,
    Object? healthString = null,
  }) {
    return _then(_$BatteryStatusModelImpl(
      currentCapacity: freezed == currentCapacity
          ? _value.currentCapacity
          : currentCapacity // ignore: cast_nullable_to_non_nullable
              as int?,
      cycleCount: freezed == cycleCount
          ? _value.cycleCount
          : cycleCount // ignore: cast_nullable_to_non_nullable
              as int?,
      acPowered: freezed == acPowered
          ? _value.acPowered
          : acPowered // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCharging: freezed == isCharging
          ? _value.isCharging
          : isCharging // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCharged: freezed == isCharged
          ? _value.isCharged
          : isCharged // ignore: cast_nullable_to_non_nullable
              as bool?,
      amperage: freezed == amperage
          ? _value.amperage
          : amperage // ignore: cast_nullable_to_non_nullable
              as int?,
      voltage: freezed == voltage
          ? _value.voltage
          : voltage // ignore: cast_nullable_to_non_nullable
              as double?,
      watts: freezed == watts
          ? _value.watts
          : watts // ignore: cast_nullable_to_non_nullable
              as double?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      healthString: null == healthString
          ? _value.healthString
          : healthString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BatteryStatusModelImpl extends _BatteryStatusModel {
  const _$BatteryStatusModelImpl(
      {this.currentCapacity,
      this.cycleCount,
      this.acPowered,
      this.isCharging,
      this.isCharged,
      this.amperage,
      this.voltage,
      this.watts,
      this.temperature,
      this.healthString = "Unknown"})
      : super._();

  factory _$BatteryStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatteryStatusModelImplFromJson(json);

  @override
  final int? currentCapacity;
  @override
  final int? cycleCount;
  @override
  final bool? acPowered;
  @override
  final bool? isCharging;
  @override
  final bool? isCharged;
  @override
  final int? amperage;
  @override
  final double? voltage;
  @override
  final double? watts;
  @override
  final double? temperature;
  @override
  @JsonKey()
  final String healthString;

  @override
  String toString() {
    return 'BatteryStatusModel(currentCapacity: $currentCapacity, cycleCount: $cycleCount, acPowered: $acPowered, isCharging: $isCharging, isCharged: $isCharged, amperage: $amperage, voltage: $voltage, watts: $watts, temperature: $temperature, healthString: $healthString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatteryStatusModelImpl &&
            (identical(other.currentCapacity, currentCapacity) ||
                other.currentCapacity == currentCapacity) &&
            (identical(other.cycleCount, cycleCount) ||
                other.cycleCount == cycleCount) &&
            (identical(other.acPowered, acPowered) ||
                other.acPowered == acPowered) &&
            (identical(other.isCharging, isCharging) ||
                other.isCharging == isCharging) &&
            (identical(other.isCharged, isCharged) ||
                other.isCharged == isCharged) &&
            (identical(other.amperage, amperage) ||
                other.amperage == amperage) &&
            (identical(other.voltage, voltage) || other.voltage == voltage) &&
            (identical(other.watts, watts) || other.watts == watts) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.healthString, healthString) ||
                other.healthString == healthString));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentCapacity,
      cycleCount,
      acPowered,
      isCharging,
      isCharged,
      amperage,
      voltage,
      watts,
      temperature,
      healthString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BatteryStatusModelImplCopyWith<_$BatteryStatusModelImpl> get copyWith =>
      __$$BatteryStatusModelImplCopyWithImpl<_$BatteryStatusModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BatteryStatusModelImplToJson(
      this,
    );
  }
}

abstract class _BatteryStatusModel extends BatteryStatusModel {
  const factory _BatteryStatusModel(
      {final int? currentCapacity,
      final int? cycleCount,
      final bool? acPowered,
      final bool? isCharging,
      final bool? isCharged,
      final int? amperage,
      final double? voltage,
      final double? watts,
      final double? temperature,
      final String healthString}) = _$BatteryStatusModelImpl;
  const _BatteryStatusModel._() : super._();

  factory _BatteryStatusModel.fromJson(Map<String, dynamic> json) =
      _$BatteryStatusModelImpl.fromJson;

  @override
  int? get currentCapacity;
  @override
  int? get cycleCount;
  @override
  bool? get acPowered;
  @override
  bool? get isCharging;
  @override
  bool? get isCharged;
  @override
  int? get amperage;
  @override
  double? get voltage;
  @override
  double? get watts;
  @override
  double? get temperature;
  @override
  String get healthString;
  @override
  @JsonKey(ignore: true)
  _$$BatteryStatusModelImplCopyWith<_$BatteryStatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
