// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disk_space_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiskSpaceModel _$DiskSpaceModelFromJson(Map<String, dynamic> json) {
  return _DiskSpaceModel.fromJson(json);
}

/// @nodoc
mixin _$DiskSpaceModel {
  /// Total disk space in bytes.
  int? get totalDiskSpace => throw _privateConstructorUsedError;

  /// Free disk space in bytes.
  int? get freeDiskSpace => throw _privateConstructorUsedError;

  /// Used disk space in bytes.
  int? get usedDiskSpace => throw _privateConstructorUsedError;

  /// Used disk space percentage.
  double? get usedPercentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiskSpaceModelCopyWith<DiskSpaceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiskSpaceModelCopyWith<$Res> {
  factory $DiskSpaceModelCopyWith(
          DiskSpaceModel value, $Res Function(DiskSpaceModel) then) =
      _$DiskSpaceModelCopyWithImpl<$Res, DiskSpaceModel>;
  @useResult
  $Res call(
      {int? totalDiskSpace,
      int? freeDiskSpace,
      int? usedDiskSpace,
      double? usedPercentage});
}

/// @nodoc
class _$DiskSpaceModelCopyWithImpl<$Res, $Val extends DiskSpaceModel>
    implements $DiskSpaceModelCopyWith<$Res> {
  _$DiskSpaceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalDiskSpace = freezed,
    Object? freeDiskSpace = freezed,
    Object? usedDiskSpace = freezed,
    Object? usedPercentage = freezed,
  }) {
    return _then(_value.copyWith(
      totalDiskSpace: freezed == totalDiskSpace
          ? _value.totalDiskSpace
          : totalDiskSpace // ignore: cast_nullable_to_non_nullable
              as int?,
      freeDiskSpace: freezed == freeDiskSpace
          ? _value.freeDiskSpace
          : freeDiskSpace // ignore: cast_nullable_to_non_nullable
              as int?,
      usedDiskSpace: freezed == usedDiskSpace
          ? _value.usedDiskSpace
          : usedDiskSpace // ignore: cast_nullable_to_non_nullable
              as int?,
      usedPercentage: freezed == usedPercentage
          ? _value.usedPercentage
          : usedPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiskSpaceModelImplCopyWith<$Res>
    implements $DiskSpaceModelCopyWith<$Res> {
  factory _$$DiskSpaceModelImplCopyWith(_$DiskSpaceModelImpl value,
          $Res Function(_$DiskSpaceModelImpl) then) =
      __$$DiskSpaceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? totalDiskSpace,
      int? freeDiskSpace,
      int? usedDiskSpace,
      double? usedPercentage});
}

/// @nodoc
class __$$DiskSpaceModelImplCopyWithImpl<$Res>
    extends _$DiskSpaceModelCopyWithImpl<$Res, _$DiskSpaceModelImpl>
    implements _$$DiskSpaceModelImplCopyWith<$Res> {
  __$$DiskSpaceModelImplCopyWithImpl(
      _$DiskSpaceModelImpl _value, $Res Function(_$DiskSpaceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalDiskSpace = freezed,
    Object? freeDiskSpace = freezed,
    Object? usedDiskSpace = freezed,
    Object? usedPercentage = freezed,
  }) {
    return _then(_$DiskSpaceModelImpl(
      totalDiskSpace: freezed == totalDiskSpace
          ? _value.totalDiskSpace
          : totalDiskSpace // ignore: cast_nullable_to_non_nullable
              as int?,
      freeDiskSpace: freezed == freeDiskSpace
          ? _value.freeDiskSpace
          : freeDiskSpace // ignore: cast_nullable_to_non_nullable
              as int?,
      usedDiskSpace: freezed == usedDiskSpace
          ? _value.usedDiskSpace
          : usedDiskSpace // ignore: cast_nullable_to_non_nullable
              as int?,
      usedPercentage: freezed == usedPercentage
          ? _value.usedPercentage
          : usedPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiskSpaceModelImpl extends _DiskSpaceModel {
  const _$DiskSpaceModelImpl(
      {this.totalDiskSpace,
      this.freeDiskSpace,
      this.usedDiskSpace,
      this.usedPercentage})
      : super._();

  factory _$DiskSpaceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiskSpaceModelImplFromJson(json);

  /// Total disk space in bytes.
  @override
  final int? totalDiskSpace;

  /// Free disk space in bytes.
  @override
  final int? freeDiskSpace;

  /// Used disk space in bytes.
  @override
  final int? usedDiskSpace;

  /// Used disk space percentage.
  @override
  final double? usedPercentage;

  @override
  String toString() {
    return 'DiskSpaceModel(totalDiskSpace: $totalDiskSpace, freeDiskSpace: $freeDiskSpace, usedDiskSpace: $usedDiskSpace, usedPercentage: $usedPercentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiskSpaceModelImpl &&
            (identical(other.totalDiskSpace, totalDiskSpace) ||
                other.totalDiskSpace == totalDiskSpace) &&
            (identical(other.freeDiskSpace, freeDiskSpace) ||
                other.freeDiskSpace == freeDiskSpace) &&
            (identical(other.usedDiskSpace, usedDiskSpace) ||
                other.usedDiskSpace == usedDiskSpace) &&
            (identical(other.usedPercentage, usedPercentage) ||
                other.usedPercentage == usedPercentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalDiskSpace, freeDiskSpace,
      usedDiskSpace, usedPercentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiskSpaceModelImplCopyWith<_$DiskSpaceModelImpl> get copyWith =>
      __$$DiskSpaceModelImplCopyWithImpl<_$DiskSpaceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiskSpaceModelImplToJson(
      this,
    );
  }
}

abstract class _DiskSpaceModel extends DiskSpaceModel {
  const factory _DiskSpaceModel(
      {final int? totalDiskSpace,
      final int? freeDiskSpace,
      final int? usedDiskSpace,
      final double? usedPercentage}) = _$DiskSpaceModelImpl;
  const _DiskSpaceModel._() : super._();

  factory _DiskSpaceModel.fromJson(Map<String, dynamic> json) =
      _$DiskSpaceModelImpl.fromJson;

  @override

  /// Total disk space in bytes.
  int? get totalDiskSpace;
  @override

  /// Free disk space in bytes.
  int? get freeDiskSpace;
  @override

  /// Used disk space in bytes.
  int? get usedDiskSpace;
  @override

  /// Used disk space percentage.
  double? get usedPercentage;
  @override
  @JsonKey(ignore: true)
  _$$DiskSpaceModelImplCopyWith<_$DiskSpaceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
