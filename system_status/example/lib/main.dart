import 'dart:async';

import 'package:flutter/material.dart';
import 'package:system_status/system_status.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SystemStatus Demo',
      home: SystemStatusPage(),
    );
  }
}

final class SystemStatusPage extends StatefulWidget {
  const SystemStatusPage({super.key});

  @override
  _SystemStatusPageState createState() => _SystemStatusPageState();
}

class _SystemStatusPageState extends State<SystemStatusPage> {
  late Timer timer;
  final SystemStatusMacOS systemStatus = SystemStatusMacOS();
  SystemStatusModel? systemStatusModel;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      fetchSystemStatus();
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  Future<void> fetchSystemStatus() async {
    try {
      final SystemStatusModel? newSystemStatusModel = await systemStatus.getSystemStatus();

      if (newSystemStatusModel != null) {
        setState(() {
          systemStatusModel = newSystemStatusModel;
          print(systemStatusModel?.toJson());
        });
      }
    } catch (e) {
      debugPrint('Error fetching system status: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('System Status'),
      ),
      body: systemStatusModel != null
          ? ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                ListTile(
                  title: const Text('CPU Usage'),
                  subtitle: Text(
                      'User: ${systemStatusModel?.cpuUsage?.userPercentage?.toStringAsFixed(2)}% | Sys: ${systemStatusModel?.cpuUsage?.sysPercentage?.toStringAsFixed(2)}% | Idle: ${systemStatusModel?.cpuUsage?.idlePercentage?.toStringAsFixed(2)}%'),
                ),
                ListTile(
                  title: const Text('Battery'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Capacity: %${systemStatusModel?.batteryStatus?.currentCapacity}'),
                      Text('Health: ${systemStatusModel?.batteryStatus?.healthString}'),
                      Text('Charging: ${systemStatusModel?.batteryStatus?.isCharging == true ? 'Yes' : 'No'}'),
                      Text('Charged: ${systemStatusModel?.batteryStatus?.isCharged == true ? 'Yes' : 'No'}'),
                    ],
                  ),
                ),
                ListTile(
                  title: const Text('Disk Space'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText('Total: ${((systemStatusModel?.diskSpace?.totalDiskSpace ?? 0) / (1024 * 1024 * 1024)).toStringAsFixed(2)} GB'),
                      Text('Free: ${((systemStatusModel?.diskSpace?.freeDiskSpace ?? 0) / (1024 * 1024 * 1024)).toStringAsFixed(2)} GB'),
                      Text('Used: ${((systemStatusModel?.diskSpace?.usedDiskSpace ?? 0) / (1024 * 1024 * 1024)).toStringAsFixed(2)} GB'),
                      Text('Used Percentage: ${systemStatusModel?.diskSpace?.usedPercentage?.toStringAsFixed(2)}%'),
                    ],
                  ),
                ),
                ListTile(
                  title: const Text('Memory Statistics'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Usage Ratio: ${systemStatusModel?.memoryStatistics?.memoryUsageRatio?.toStringAsFixed(2)}%'),
                      Text('Application Memory: ${systemStatusModel?.memoryStatistics?.applicationMemory} bytes'),
                      Text('Wired Memory: ${systemStatusModel?.memoryStatistics?.wiredMemory} bytes'),
                      Text('Compressed Memory: ${systemStatusModel?.memoryStatistics?.compressedMemory} bytes'),
                      Text('Memory Pressure: ${systemStatusModel?.memoryStatistics?.memoryPressure}'),
                    ],
                  ),
                ),
              ],
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
