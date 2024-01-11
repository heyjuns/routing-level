import 'package:flutter/material.dart';

class AlarmPage extends StatelessWidget {
  static String tags = 'alarm';
  const AlarmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alarm Page'),
      ),
    );
  }
}
