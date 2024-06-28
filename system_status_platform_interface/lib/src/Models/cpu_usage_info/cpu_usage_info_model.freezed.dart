// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cpu_usage_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CpuUsageInfoModel _$CpuUsageInfoModelFromJson(Map<String, dynamic> json) {
  return _CpuUsageInfoModel.fromJson(json);
}

/// @nodoc
mixin _$CpuUsageInfoModel {
  double? get userPercentage => throw _privateConstructorUsedError;
  double? get sysPercentage => throw _privateConstructorUsedError;
  double? get idlePercentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CpuUsageInfoModelCopyWith<CpuUsageInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CpuUsageInfoModelCopyWith<$Res> {
  factory $CpuUsageInfoModelCopyWith(
          CpuUsageInfoModel value, $Res Function(CpuUsageInfoModel) then) =
      _$CpuUsageInfoModelCopyWithImpl<$Res, CpuUsageInfoModel>;
  @useResult
  $Res call(
      {double? userPercentage, double? sysPercentage, double? idlePercentage});
}

/// @nodoc
class _$CpuUsageInfoModelCopyWithImpl<$Res, $Val extends CpuUsageInfoModel>
    implements $CpuUsageInfoModelCopyWith<$Res> {
  _$CpuUsageInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userPercentage = freezed,
    Object? sysPercentage = freezed,
    Object? idlePercentage = freezed,
  }) {
    return _then(_value.copyWith(
      userPercentage: freezed == userPercentage
          ? _value.userPercentage
          : userPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      sysPercentage: freezed == sysPercentage
          ? _value.sysPercentage
          : sysPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      idlePercentage: freezed == idlePercentage
          ? _value.idlePercentage
          : idlePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CpuUsageInfoModelImplCopyWith<$Res>
    implements $CpuUsageInfoModelCopyWith<$Res> {
  factory _$$CpuUsageInfoModelImplCopyWith(_$CpuUsageInfoModelImpl value,
          $Res Function(_$CpuUsageInfoModelImpl) then) =
      __$$CpuUsageInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? userPercentage, double? sysPercentage, double? idlePercentage});
}

/// @nodoc
class __$$CpuUsageInfoModelImplCopyWithImpl<$Res>
    extends _$CpuUsageInfoModelCopyWithImpl<$Res, _$CpuUsageInfoModelImpl>
    implements _$$CpuUsageInfoModelImplCopyWith<$Res> {
  __$$CpuUsageInfoModelImplCopyWithImpl(_$CpuUsageInfoModelImpl _value,
      $Res Function(_$CpuUsageInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userPercentage = freezed,
    Object? sysPercentage = freezed,
    Object? idlePercentage = freezed,
  }) {
    return _then(_$CpuUsageInfoModelImpl(
      userPercentage: freezed == userPercentage
          ? _value.userPercentage
          : userPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      sysPercentage: freezed == sysPercentage
          ? _value.sysPercentage
          : sysPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      idlePercentage: freezed == idlePercentage
          ? _value.idlePercentage
          : idlePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CpuUsageInfoModelImpl implements _CpuUsageInfoModel {
  const _$CpuUsageInfoModelImpl(
      {this.userPercentage, this.sysPercentage, this.idlePercentage});

  factory _$CpuUsageInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CpuUsageInfoModelImplFromJson(json);

  @override
  final double? userPercentage;
  @override
  final double? sysPercentage;
  @override
  final double? idlePercentage;

  @override
  String toString() {
    return 'CpuUsageInfoModel(userPercentage: $userPercentage, sysPercentage: $sysPercentage, idlePercentage: $idlePercentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CpuUsageInfoModelImpl &&
            (identical(other.userPercentage, userPercentage) ||
                other.userPercentage == userPercentage) &&
            (identical(other.sysPercentage, sysPercentage) ||
                other.sysPercentage == sysPercentage) &&
            (identical(other.idlePercentage, idlePercentage) ||
                other.idlePercentage == idlePercentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userPercentage, sysPercentage, idlePercentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CpuUsageInfoModelImplCopyWith<_$CpuUsageInfoModelImpl> get copyWith =>
      __$$CpuUsageInfoModelImplCopyWithImpl<_$CpuUsageInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CpuUsageInfoModelImplToJson(
      this,
    );
  }
}

abstract class _CpuUsageInfoModel implements CpuUsageInfoModel {
  const factory _CpuUsageInfoModel(
      {final double? userPercentage,
      final double? sysPercentage,
      final double? idlePercentage}) = _$CpuUsageInfoModelImpl;

  factory _CpuUsageInfoModel.fromJson(Map<String, dynamic> json) =
      _$CpuUsageInfoModelImpl.fromJson;

  @override
  double? get userPercentage;
  @override
  double? get sysPercentage;
  @override
  double? get idlePercentage;
  @override
  @JsonKey(ignore: true)
  _$$CpuUsageInfoModelImplCopyWith<_$CpuUsageInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
