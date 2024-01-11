import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  static String tags = 'admin';
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Page'),
      ),
    );
  }
}
