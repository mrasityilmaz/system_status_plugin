import 'package:freezed_annotation/freezed_annotation.dart';

part 'disk_space_model.freezed.dart';
part 'disk_space_model.g.dart';

@freezed

/// Model class representing disk space information.
class DiskSpaceModel with _$DiskSpaceModel {
  /// Factory constructor for creating a new `DiskSpaceModel` instance.
  const factory DiskSpaceModel({
    /// Total disk space in bytes.
    int? totalDiskSpace,

    /// Free disk space in bytes.
    int? freeDiskSpace,

    /// Used disk space in bytes.
    int? usedDiskSpace,

    /// Used disk space percentage.
    double? usedPercentage,
  }) = _DiskSpaceModel;

  /// Private constructor for internal use.
  const DiskSpaceModel._();

  /// Factory method for creating a `DiskSpaceModel` from a JSON object.
  factory DiskSpaceModel.fromJson(Map<String, dynamic> json) => _$DiskSpaceModelFromJson(json);
}
