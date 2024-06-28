// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memory_statistics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemoryStatisticsModel _$MemoryStatisticsModelFromJson(
    Map<String, dynamic> json) {
  return _MemoryStatisticsModel.fromJson(json);
}

/// @nodoc
mixin _$MemoryStatisticsModel {
  double? get memoryUsageRatio => throw _privateConstructorUsedError;
  double? get applicationMemory => throw _privateConstructorUsedError;
  double? get wiredMemory => throw _privateConstructorUsedError;
  double? get compressedMemory => throw _privateConstructorUsedError;
  double? get memoryPressure => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemoryStatisticsModelCopyWith<MemoryStatisticsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoryStatisticsModelCopyWith<$Res> {
  factory $MemoryStatisticsModelCopyWith(MemoryStatisticsModel value,
          $Res Function(MemoryStatisticsModel) then) =
      _$MemoryStatisticsModelCopyWithImpl<$Res, MemoryStatisticsModel>;
  @useResult
  $Res call(
      {double? memoryUsageRatio,
      double? applicationMemory,
      double? wiredMemory,
      double? compressedMemory,
      double? memoryPressure});
}

/// @nodoc
class _$MemoryStatisticsModelCopyWithImpl<$Res,
        $Val extends MemoryStatisticsModel>
    implements $MemoryStatisticsModelCopyWith<$Res> {
  _$MemoryStatisticsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memoryUsageRatio = freezed,
    Object? applicationMemory = freezed,
    Object? wiredMemory = freezed,
    Object? compressedMemory = freezed,
    Object? memoryPressure = freezed,
  }) {
    return _then(_value.copyWith(
      memoryUsageRatio: freezed == memoryUsageRatio
          ? _value.memoryUsageRatio
          : memoryUsageRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      applicationMemory: freezed == applicationMemory
          ? _value.applicationMemory
          : applicationMemory // ignore: cast_nullable_to_non_nullable
              as double?,
      wiredMemory: freezed == wiredMemory
          ? _value.wiredMemory
          : wiredMemory // ignore: cast_nullable_to_non_nullable
              as double?,
      compressedMemory: freezed == compressedMemory
          ? _value.compressedMemory
          : compressedMemory // ignore: cast_nullable_to_non_nullable
              as double?,
      memoryPressure: freezed == memoryPressure
          ? _value.memoryPressure
          : memoryPressure // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemoryStatisticsModelImplCopyWith<$Res>
    implements $MemoryStatisticsModelCopyWith<$Res> {
  factory _$$MemoryStatisticsModelImplCopyWith(
          _$MemoryStatisticsModelImpl value,
          $Res Function(_$MemoryStatisticsModelImpl) then) =
      __$$MemoryStatisticsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? memoryUsageRatio,
      double? applicationMemory,
      double? wiredMemory,
      double? compressedMemory,
      double? memoryPressure});
}

/// @nodoc
class __$$MemoryStatisticsModelImplCopyWithImpl<$Res>
    extends _$MemoryStatisticsModelCopyWithImpl<$Res,
        _$MemoryStatisticsModelImpl>
    implements _$$MemoryStatisticsModelImplCopyWith<$Res> {
  __$$MemoryStatisticsModelImplCopyWithImpl(_$MemoryStatisticsModelImpl _value,
      $Res Function(_$MemoryStatisticsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memoryUsageRatio = freezed,
    Object? applicationMemory = freezed,
    Object? wiredMemory = freezed,
    Object? compressedMemory = freezed,
    Object? memoryPressure = freezed,
  }) {
    return _then(_$MemoryStatisticsModelImpl(
      memoryUsageRatio: freezed == memoryUsageRatio
          ? _value.memoryUsageRatio
          : memoryUsageRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      applicationMemory: freezed == applicationMemory
          ? _value.applicationMemory
          : applicationMemory // ignore: cast_nullable_to_non_nullable
              as double?,
      wiredMemory: freezed == wiredMemory
          ? _value.wiredMemory
          : wiredMemory // ignore: cast_nullable_to_non_nullable
              as double?,
      compressedMemory: freezed == compressedMemory
          ? _value.compressedMemory
          : compressedMemory // ignore: cast_nullable_to_non_nullable
              as double?,
      memoryPressure: freezed == memoryPressure
          ? _value.memoryPressure
          : memoryPressure // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemoryStatisticsModelImpl implements _MemoryStatisticsModel {
  const _$MemoryStatisticsModelImpl(
      {this.memoryUsageRatio,
      this.applicationMemory,
      this.wiredMemory,
      this.compressedMemory,
      this.memoryPressure});

  factory _$MemoryStatisticsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemoryStatisticsModelImplFromJson(json);

  @override
  final double? memoryUsageRatio;
  @override
  final double? applicationMemory;
  @override
  final double? wiredMemory;
  @override
  final double? compressedMemory;
  @override
  final double? memoryPressure;

  @override
  String toString() {
    return 'MemoryStatisticsModel(memoryUsageRatio: $memoryUsageRatio, applicationMemory: $applicationMemory, wiredMemory: $wiredMemory, compressedMemory: $compressedMemory, memoryPressure: $memoryPressure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoryStatisticsModelImpl &&
            (identical(other.memoryUsageRatio, memoryUsageRatio) ||
                other.memoryUsageRatio == memoryUsageRatio) &&
            (identical(other.applicationMemory, applicationMemory) ||
                other.applicationMemory == applicationMemory) &&
            (identical(other.wiredMemory, wiredMemory) ||
                other.wiredMemory == wiredMemory) &&
            (identical(other.compressedMemory, compressedMemory) ||
                other.compressedMemory == compressedMemory) &&
            (identical(other.memoryPressure, memoryPressure) ||
                other.memoryPressure == memoryPressure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, memoryUsageRatio,
      applicationMemory, wiredMemory, compressedMemory, memoryPressure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoryStatisticsModelImplCopyWith<_$MemoryStatisticsModelImpl>
      get copyWith => __$$MemoryStatisticsModelImplCopyWithImpl<
          _$MemoryStatisticsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemoryStatisticsModelImplToJson(
      this,
    );
  }
}

abstract class _MemoryStatisticsModel implements MemoryStatisticsModel {
  const factory _MemoryStatisticsModel(
      {final double? memoryUsageRatio,
      final double? applicationMemory,
      final double? wiredMemory,
      final double? compressedMemory,
      final double? memoryPressure}) = _$MemoryStatisticsModelImpl;

  factory _MemoryStatisticsModel.fromJson(Map<String, dynamic> json) =
      _$MemoryStatisticsModelImpl.fromJson;

  @override
  double? get memoryUsageRatio;
  @override
  double? get applicationMemory;
  @override
  double? get wiredMemory;
  @override
  double? get compressedMemory;
  @override
  double? get memoryPressure;
  @override
  @JsonKey(ignore: true)
  _$$MemoryStatisticsModelImplCopyWith<_$MemoryStatisticsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
