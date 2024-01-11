import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  static String tags = 'user';
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Page'),
      ),
    );
  }
}
