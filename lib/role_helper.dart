import 'package:dashboardku/admin_page.dart';
import 'package:dashboardku/alarm_page.dart';
import 'package:dashboardku/favourite_page.dart';
import 'package:dashboardku/home_page.dart';
import 'package:dashboardku/login_page.dart';
import 'package:dashboardku/monitoring_page.dart';
import 'package:dashboardku/order_page.dart';
import 'package:dashboardku/settings_page.dart';
import 'package:dashboardku/user_page.dart';
import 'package:flutter/material.dart';

class RoleHelper {
  static List<String> list = <String>['Super Admin', 'Admin', 'User'];
  static String username = '';
  static String currentRole = list.first;

  static List<String> getPagesByRole() {
    switch (currentRole) {
      case 'Super Admin':
        return [
          AdminPage.tags,
          AlarmPage.tags,
          FavouritePage.tags,
          MonitoringPage.tags,
          OrderPage.tags,
          SettingsPage.tags,
          UserPage.tags,
        ];
      case 'Admin':
        return [
          AdminPage.tags,
          AlarmPage.tags,
          MonitoringPage.tags,
          SettingsPage.tags,
        ];
      case 'User':
        return [
          FavouritePage.tags,
          OrderPage.tags,
          UserPage.tags,
        ];
    }
    return [];
  }

  static Map<String, WidgetBuilder> get routes {
    return {
      LoginPage.tags: (context) => const LoginPage(),
      HomePage.tags: (context) => const HomePage(),
      AdminPage.tags: (context) => const AdminPage(),
      AlarmPage.tags: (context) => const AlarmPage(),
      FavouritePage.tags: (context) => const FavouritePage(),
      MonitoringPage.tags: (context) => const MonitoringPage(),
      OrderPage.tags: (context) => const OrderPage(),
      SettingsPage.tags: (context) => const SettingsPage(),
      UserPage.tags: (context) => const UserPage(),
    };
  }
}
