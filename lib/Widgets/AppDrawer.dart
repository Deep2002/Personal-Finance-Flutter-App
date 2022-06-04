import 'package:flutter/material.dart';
import 'package:personal_finance/Widgets/DrawerItem.dart';

import 'AppColors.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(right: Radius.circular(30))),
      backgroundColor: AppColors.bg,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(height: 40),
            const DrawerItem(
                text: 'Profile',
                icon: Icon(Icons.person),
                iconColor: Colors.blue),
            Divider(color: AppColors.containerFrame, thickness: 2, height: 40),
            const DrawerItem(
                text: 'Setting',
                icon: Icon(Icons.settings, color: Colors.grey),
                iconColor: Colors.grey),
            Divider(color: AppColors.containerFrame, thickness: 2, height: 40),
            const DrawerItem(
                text: 'Logout',
                icon: Icon(Icons.logout),
                iconColor: Colors.redAccent),
            Divider(color: AppColors.containerFrame, thickness: 2, height: 40),
            const Divider(height: 40),
            const DrawerItem(
                text: 'Home page',
                icon: Icon(Icons.home_rounded),
                iconColor: Colors.blue),
            Divider(color: AppColors.containerFrame, thickness: 2, height: 40),
            const DrawerItem(
                text: 'Summary chart',
                icon: Icon(Icons.data_usage_rounded),
                iconColor: Colors.green),
            Divider(color: AppColors.containerFrame, thickness: 2, height: 40),
            const DrawerItem(
                text: 'Detailed graph',
                icon: Icon(Icons.bar_chart_rounded),
                iconColor: Color.fromARGB(255, 243, 191, 33)),
            Divider(color: AppColors.containerFrame, thickness: 2, height: 40),
            const DrawerItem(
                text: 'My statement',
                icon: Icon(Icons.request_page_outlined),
                iconColor: Colors.orange),
            Divider(color: AppColors.containerFrame, thickness: 2, height: 40),
            const Divider(height: 40),
            const DrawerItem(
                text: 'Print reports',
                icon: Icon(Icons.print),
                iconColor: Colors.grey),
            Divider(color: AppColors.containerFrame, thickness: 2, height: 40),
          ],
        ),
      ),
    );
  }
}
