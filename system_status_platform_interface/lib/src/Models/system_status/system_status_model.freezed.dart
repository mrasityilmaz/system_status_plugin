// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SystemStatusModel _$SystemStatusModelFromJson(Map<String, dynamic> json) {
  return _SystemStatusModel.fromJson(json);
}

/// @nodoc
mixin _$SystemStatusModel {
  CpuUsageInfoModel? get cpuUsage => throw _privateConstructorUsedError;
  DiskSpaceModel? get diskSpace => throw _privateConstructorUsedError;
  MemoryStatisticsModel? get memoryStatistics =>
      throw _privateConstructorUsedError;
  BatteryStatusModel? get batteryStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SystemStatusModelCopyWith<SystemStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemStatusModelCopyWith<$Res> {
  factory $SystemStatusModelCopyWith(
          SystemStatusModel value, $Res Function(SystemStatusModel) then) =
      _$SystemStatusModelCopyWithImpl<$Res, SystemStatusModel>;
  @useResult
  $Res call(
      {CpuUsageInfoModel? cpuUsage,
      DiskSpaceModel? diskSpace,
      MemoryStatisticsModel? memoryStatistics,
      BatteryStatusModel? batteryStatus});

  $CpuUsageInfoModelCopyWith<$Res>? get cpuUsage;
  $DiskSpaceModelCopyWith<$Res>? get diskSpace;
  $MemoryStatisticsModelCopyWith<$Res>? get memoryStatistics;
  $BatteryStatusModelCopyWith<$Res>? get batteryStatus;
}

/// @nodoc
class _$SystemStatusModelCopyWithImpl<$Res, $Val extends SystemStatusModel>
    implements $SystemStatusModelCopyWith<$Res> {
  _$SystemStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpuUsage = freezed,
    Object? diskSpace = freezed,
    Object? memoryStatistics = freezed,
    Object? batteryStatus = freezed,
  }) {
    return _then(_value.copyWith(
      cpuUsage: freezed == cpuUsage
          ? _value.cpuUsage
          : cpuUsage // ignore: cast_nullable_to_non_nullable
              as CpuUsageInfoModel?,
      diskSpace: freezed == diskSpace
          ? _value.diskSpace
          : diskSpace // ignore: cast_nullable_to_non_nullable
              as DiskSpaceModel?,
      memoryStatistics: freezed == memoryStatistics
          ? _value.memoryStatistics
          : memoryStatistics // ignore: cast_nullable_to_non_nullable
              as MemoryStatisticsModel?,
      batteryStatus: freezed == batteryStatus
          ? _value.batteryStatus
          : batteryStatus // ignore: cast_nullable_to_non_nullable
              as BatteryStatusModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CpuUsageInfoModelCopyWith<$Res>? get cpuUsage {
    if (_value.cpuUsage == null) {
      return null;
    }

    return $CpuUsageInfoModelCopyWith<$Res>(_value.cpuUsage!, (value) {
      return _then(_value.copyWith(cpuUsage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DiskSpaceModelCopyWith<$Res>? get diskSpace {
    if (_value.diskSpace == null) {
      return null;
    }

    return $DiskSpaceModelCopyWith<$Res>(_value.diskSpace!, (value) {
      return _then(_value.copyWith(diskSpace: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MemoryStatisticsModelCopyWith<$Res>? get memoryStatistics {
    if (_value.memoryStatistics == null) {
      return null;
    }

    return $MemoryStatisticsModelCopyWith<$Res>(_value.memoryStatistics!,
        (value) {
      return _then(_value.copyWith(memoryStatistics: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BatteryStatusModelCopyWith<$Res>? get batteryStatus {
    if (_value.batteryStatus == null) {
      return null;
    }

    return $BatteryStatusModelCopyWith<$Res>(_value.batteryStatus!, (value) {
      return _then(_value.copyWith(batteryStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SystemStatusModelImplCopyWith<$Res>
    implements $SystemStatusModelCopyWith<$Res> {
  factory _$$SystemStatusModelImplCopyWith(_$SystemStatusModelImpl value,
          $Res Function(_$SystemStatusModelImpl) then) =
      __$$SystemStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CpuUsageInfoModel? cpuUsage,
      DiskSpaceModel? diskSpace,
      MemoryStatisticsModel? memoryStatistics,
      BatteryStatusModel? batteryStatus});

  @override
  $CpuUsageInfoModelCopyWith<$Res>? get cpuUsage;
  @override
  $DiskSpaceModelCopyWith<$Res>? get diskSpace;
  @override
  $MemoryStatisticsModelCopyWith<$Res>? get memoryStatistics;
  @override
  $BatteryStatusModelCopyWith<$Res>? get batteryStatus;
}

/// @nodoc
class __$$SystemStatusModelImplCopyWithImpl<$Res>
    extends _$SystemStatusModelCopyWithImpl<$Res, _$SystemStatusModelImpl>
    implements _$$SystemStatusModelImplCopyWith<$Res> {
  __$$SystemStatusModelImplCopyWithImpl(_$SystemStatusModelImpl _value,
      $Res Function(_$SystemStatusModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpuUsage = freezed,
    Object? diskSpace = freezed,
    Object? memoryStatistics = freezed,
    Object? batteryStatus = freezed,
  }) {
    return _then(_$SystemStatusModelImpl(
      cpuUsage: freezed == cpuUsage
          ? _value.cpuUsage
          : cpuUsage // ignore: cast_nullable_to_non_nullable
              as CpuUsageInfoModel?,
      diskSpace: freezed == diskSpace
          ? _value.diskSpace
          : diskSpace // ignore: cast_nullable_to_non_nullable
              as DiskSpaceModel?,
      memoryStatistics: freezed == memoryStatistics
          ? _value.memoryStatistics
          : memoryStatistics // ignore: cast_nullable_to_non_nullable
              as MemoryStatisticsModel?,
      batteryStatus: freezed == batteryStatus
          ? _value.batteryStatus
          : batteryStatus // ignore: cast_nullable_to_non_nullable
              as BatteryStatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SystemStatusModelImpl implements _SystemStatusModel {
  const _$SystemStatusModelImpl(
      {this.cpuUsage,
      this.diskSpace,
      this.memoryStatistics,
      this.batteryStatus});

  factory _$SystemStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SystemStatusModelImplFromJson(json);

  @override
  final CpuUsageInfoModel? cpuUsage;
  @override
  final DiskSpaceModel? diskSpace;
  @override
  final MemoryStatisticsModel? memoryStatistics;
  @override
  final BatteryStatusModel? batteryStatus;

  @override
  String toString() {
    return 'SystemStatusModel(cpuUsage: $cpuUsage, diskSpace: $diskSpace, memoryStatistics: $memoryStatistics, batteryStatus: $batteryStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemStatusModelImpl &&
            (identical(other.cpuUsage, cpuUsage) ||
                other.cpuUsage == cpuUsage) &&
            (identical(other.diskSpace, diskSpace) ||
                other.diskSpace == diskSpace) &&
            (identical(other.memoryStatistics, memoryStatistics) ||
                other.memoryStatistics == memoryStatistics) &&
            (identical(other.batteryStatus, batteryStatus) ||
                other.batteryStatus == batteryStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, cpuUsage, diskSpace, memoryStatistics, batteryStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemStatusModelImplCopyWith<_$SystemStatusModelImpl> get copyWith =>
      __$$SystemStatusModelImplCopyWithImpl<_$SystemStatusModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemStatusModelImplToJson(
      this,
    );
  }
}

abstract class _SystemStatusModel implements SystemStatusModel {
  const factory _SystemStatusModel(
      {final CpuUsageInfoModel? cpuUsage,
      final DiskSpaceModel? diskSpace,
      final MemoryStatisticsModel? memoryStatistics,
      final BatteryStatusModel? batteryStatus}) = _$SystemStatusModelImpl;

  factory _SystemStatusModel.fromJson(Map<String, dynamic> json) =
      _$SystemStatusModelImpl.fromJson;

  @override
  CpuUsageInfoModel? get cpuUsage;
  @override
  DiskSpaceModel? get diskSpace;
  @override
  MemoryStatisticsModel? get memoryStatistics;
  @override
  BatteryStatusModel? get batteryStatus;
  @override
  @JsonKey(ignore: true)
  _$$SystemStatusModelImplCopyWith<_$SystemStatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
