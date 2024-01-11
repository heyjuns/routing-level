import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  static String tags = 'settings';
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Page'),
      ),
    );
  }
}
