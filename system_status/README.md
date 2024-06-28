# system_status_plugin

<!-- ![Flutter](https://img.shields.io/badge/Flutter-3.0+-blue.svg) -->
![Platform](https://img.shields.io/badge/Platform-MacOS-green.svg)
[![pub package](https://img.shields.io/pub/v/system_status_plugin.svg)](https://pub.dev/packages/system_status_plugin)

system_status_plugin is a Flutter plugin that provides system status monitoring capabilities for MacOS computers. It allows you to monitor and display real-time statistics of RAM, battery, storage, and CPU usage.

## Features

- Real-time monitoring of system resources: RAM, battery, storage, and CPU.
- User-friendly interface for easy integration and usage.
- Supports MacOS 10.13 and above.
- Low system resource usage, optimized for performance monitoring without overhead.

## Installation

To use this plugin, add `system_status_plugin` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  flutter:
    sdk: flutter
  system_status_plugin: ^1.0.0
```

Then, import the package where you need to use it:


```yaml
import 'package:system_status_plugin/system_status_plugin.dart';
```

## Usage

```Dart
// Initialize the plugin
SystemStatusPlugin systemStatus = SystemStatusPlugin();

// Get system status information
void getSystemStatus() async {
  try {
    SystemStatusInfo status = await systemStatus.getSystemStatus();
   
    print('System Status: ${status}');
  } catch (e) {
    print('Error retrieving system status: $e');
  }
}
```