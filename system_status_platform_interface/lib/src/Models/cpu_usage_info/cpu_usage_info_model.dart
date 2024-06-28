import 'package:freezed_annotation/freezed_annotation.dart';

part 'cpu_usage_info_model.freezed.dart';
part 'cpu_usage_info_model.g.dart';

@freezed
class CpuUsageInfoModel with _$CpuUsageInfoModel {
  const factory CpuUsageInfoModel({
    double? userPercentage,
    double? sysPercentage,
    double? idlePercentage,
  }) = _CpuUsageInfoModel;

  factory CpuUsageInfoModel.fromJson(Map<String, dynamic> json) => _$CpuUsageInfoModelFromJson(json);
}
