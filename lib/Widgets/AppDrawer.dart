import 'package:flutter/material.dart';

import 'AppColors.dart';
import 'AppText.dart';

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
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(color: AppColors.containerFrame, thickness: 2, height: 40),
            Row(
              children: [
                const Icon(Icons.person, color: Colors.white),
                const SizedBox(
                  width: 20,
                ),
                AppText(text: 'Profile'),
              ],
            ),
            Divider(color: AppColors.containerFrame, thickness: 2, height: 40),
            Row(
              children: [
                const Icon(Icons.logout, color: Colors.white),
                const SizedBox(
                  width: 20,
                ),
                AppText(text: 'Logout'),
              ],
            ),
            Divider(color: AppColors.containerFrame, thickness: 2, height: 40),
            const Divider(height: 40),
            Divider(color: AppColors.containerFrame, thickness: 2, height: 40),
            AppText(text: 'Summary Graph'),
            Divider(color: AppColors.containerFrame, thickness: 2, height: 40),
            AppText(text: 'Detailed Graph'),
            Divider(color: AppColors.containerFrame, thickness: 2, height: 40),
            AppText(text: 'Finance Statement'),
            Divider(color: AppColors.containerFrame, thickness: 2, height: 40),
            AppText(text: 'Print this month report'),
            Divider(color: AppColors.containerFrame, thickness: 2, height: 40),
            AppText(text: 'Print all time reports'),
            Divider(color: AppColors.containerFrame, thickness: 2, height: 40),
            AppText(text: 'Print finance statement'),
            Divider(color: AppColors.containerFrame, thickness: 2, height: 40),
          ],
        ),
      ),
    );
  }
}
