import 'package:dashboardku/home_page.dart';
import 'package:dashboardku/role_helper.dart';
import 'package:flutter/material.dart';

const List<String> list = <String>['Super Admin', 'Admin', 'User'];

class LoginPage extends StatefulWidget {
  static String tags = 'login';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        margin: const EdgeInsets.all(48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Username'),
            TextField(
              controller: textEditingController,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Select Role'),
                DropdownButton<String>(
                  value: RoleHelper.currentRole,
                  style: const TextStyle(color: Colors.black),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      RoleHelper.currentRole = value!;
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                RoleHelper.username = textEditingController.text;
                Navigator.pushNamed(context, HomePage.tags);
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    ));
  }
}
