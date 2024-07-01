import 'package:flutter/material.dart';
import 'package:system_status/system_status.dart';

final class SystemStatusPage extends StatefulWidget {
  const SystemStatusPage({super.key});

  @override
  _SystemStatusPageState createState() => _SystemStatusPageState();
}

class _SystemStatusPageState extends State<SystemStatusPage> {
  SystemStatusModel? systemStatusModel;
  final SytemStatusMacOS platform = SytemStatusMacOS();

  @override
  void initState() {
    super.initState();
    fetchSystemStatus();
  }

  Future<void> fetchSystemStatus() async {
    try {
      final statusModel = await platform.getSystemStatus();
      setState(() {
        systemStatusModel = statusModel;
      });
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
                  subtitle: Text('User: ${systemStatusModel?.cpuUsage?.userPercentage}% | Sys: ${systemStatusModel?.cpuUsage?.sysPercentage}% | Idle: ${systemStatusModel?.cpuUsage?.idlePercentage}%'),
                ),
                ListTile(
                  title: const Text('Battery'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Capacity: ${systemStatusModel?.batteryStatus?.currentCapacity} mAh'),
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
                      Text('Total: ${systemStatusModel?.diskSpace?.totalDiskSpace} bytes'),
                      Text('Free: ${systemStatusModel?.diskSpace?.freeDiskSpace} bytes'),
                      Text('Used: ${systemStatusModel?.diskSpace?.usedDiskSpace} bytes'),
                      Text('Used Percentage: ${systemStatusModel?.diskSpace?.usedPercentage}%'),
                    ],
                  ),
                ),
                ListTile(
                  title: const Text('Memory Statistics'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Usage Ratio: ${systemStatusModel?.memoryStatistics?.memoryUsageRatio}%'),
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
