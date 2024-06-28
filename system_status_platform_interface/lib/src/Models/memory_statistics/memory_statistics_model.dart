import 'package:freezed_annotation/freezed_annotation.dart';

part 'memory_statistics_model.freezed.dart';
part 'memory_statistics_model.g.dart';

@freezed
class MemoryStatisticsModel with _$MemoryStatisticsModel {
  const factory MemoryStatisticsModel({
    double? memoryUsageRatio,
    double? applicationMemory,
    double? wiredMemory,
    double? compressedMemory,
    double? memoryPressure,
  }) = _MemoryStatisticsModel;

  factory MemoryStatisticsModel.fromJson(Map<String, dynamic> json) => _$MemoryStatisticsModelFromJson(json);
}
