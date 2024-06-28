import 'dart:core';

enum SystemStatusTypeEnum {
  memoryStatistics,
  cpuUsage,
  diskSpace,
  batteryStatus;

  ///
  /// SF Symbol Name
  ///
  String get getIconName {
    switch (this) {
      case memoryStatistics:
        return "memorychip";
      case cpuUsage:
        return "cpu";
      case batteryStatus:
        return "battery.100";
      case diskSpace:
        return "opticaldiscdrive";
    }
  }
}
