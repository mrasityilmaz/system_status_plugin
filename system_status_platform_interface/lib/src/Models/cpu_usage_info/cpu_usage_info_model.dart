import 'package:freezed_annotation/freezed_annotation.dart';

part 'cpu_usage_info_model.freezed.dart';
part 'cpu_usage_info_model.g.dart';

/// Model class representing CPU usage information.
@freezed
class CpuUsageInfoModel with _$CpuUsageInfoModel {
  /// Factory constructor for creating a new `CpuUsageInfoModel` instance.
  const factory CpuUsageInfoModel({
    /// The percentage of CPU time spent on user processes.
    double? userPercentage,

    /// The percentage of CPU time spent on system (kernel) processes.
    double? sysPercentage,

    /// The percentage of CPU time spent idle.
    double? idlePercentage,
  }) = _CpuUsageInfoModel;

  /// Private constructor for internal use.
  const CpuUsageInfoModel._();

  /// Factory method for creating a `CpuUsageInfoModel` from a JSON object.
  factory CpuUsageInfoModel.fromJson(Map<String, dynamic> json) => _$CpuUsageInfoModelFromJson(json);
}
