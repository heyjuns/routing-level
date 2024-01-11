import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  static String tags = 'order';
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Page'),
      ),
    );
  }
}
