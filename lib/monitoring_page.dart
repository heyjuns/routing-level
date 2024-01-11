import 'package:flutter/material.dart';

class MonitoringPage extends StatelessWidget {
  static String tags = 'monitoring';
  const MonitoringPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monitoring Page'),
      ),
    );
  }
}
