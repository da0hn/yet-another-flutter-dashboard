import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/MenuController.dart';
import '../../responsive.dart';
import '../dashboard/dashboard_screen.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: Responsive.isDesktop(context),
              child: const Expanded(flex: 1, child: SideMenu()),
            ),
            const Expanded(flex: 5, child: DashboardScreen()),
          ],
        ),
      ),
    );
  }
}
