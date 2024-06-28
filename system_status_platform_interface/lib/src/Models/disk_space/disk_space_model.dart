import 'package:freezed_annotation/freezed_annotation.dart';

part 'disk_space_model.freezed.dart';
part 'disk_space_model.g.dart';

@freezed
class DiskSpaceModel with _$DiskSpaceModel {
  const factory DiskSpaceModel({
    int? totalDiskSpace,
    int? freeDiskSpace,
    int? usedDiskSpace,
    double? usedPercentage,
  }) = _DiskSpaceModel;

  factory DiskSpaceModel.fromJson(Map<String, dynamic> json) => _$DiskSpaceModelFromJson(json);
}
