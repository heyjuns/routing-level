import 'package:flutter/material.dart';

class FavouritePage extends StatelessWidget {
  static String tags = 'favourite';
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite Page'),
      ),
    );
  }
}
