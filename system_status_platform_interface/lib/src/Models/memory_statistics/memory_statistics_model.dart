import 'package:freezed_annotation/freezed_annotation.dart';

part 'memory_statistics_model.freezed.dart';
part 'memory_statistics_model.g.dart';

@freezed

/// Model class representing memory statistics.
class MemoryStatisticsModel with _$MemoryStatisticsModel {
  /// Factory constructor for creating a new `MemoryStatisticsModel` instance.
  const factory MemoryStatisticsModel({
    /// The ratio of memory usage as a percentage of total physical memory.
    double? memoryUsageRatio,

    /// The amount of application memory used in bytes.
    double? applicationMemory,

    /// The amount of wired memory used in bytes.
    double? wiredMemory,

    /// The amount of compressed memory used in bytes.
    double? compressedMemory,

    /// The memory pressure level.
    double? memoryPressure,
  }) = _MemoryStatisticsModel;

  /// Private constructor for internal use.
  const MemoryStatisticsModel._();

  /// Factory method for creating a `MemoryStatisticsModel` from a JSON object.
  factory MemoryStatisticsModel.fromJson(Map<String, dynamic> json) => _$MemoryStatisticsModelFromJson(json);
}
