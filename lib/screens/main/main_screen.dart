import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:admin/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Expanded(flex: 1, child: SideMenu()),
            Expanded(flex: 5, child: DashboardScreen()),
          ],
        ),
      ),
    );
  }
}
