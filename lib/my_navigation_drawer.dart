import 'package:dashboardku/role_helper.dart';
import 'package:flutter/material.dart';

class MyNavigationDrawer extends StatelessWidget {
  const MyNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            color: Colors.deepPurple,
            child: SafeArea(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 36,
                    backgroundColor: Colors.amber,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Hi ${RoleHelper.username}',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white),
                  ),
                  const Divider(
                    endIndent: 120,
                    indent: 120,
                  ),
                  Text(
                    RoleHelper.currentRole,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: RoleHelper.getPagesByRole().length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.pushNamed(
                        context, RoleHelper.getPagesByRole()[index]);
                  },
                  title: Text(RoleHelper.getPagesByRole()[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
