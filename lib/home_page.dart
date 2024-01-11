import 'package:dashboardku/login_page.dart';
import 'package:dashboardku/my_navigation_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tags = 'home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, LoginPage.tags);
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      drawer: const MyNavigationDrawer(),
    );
  }
}
