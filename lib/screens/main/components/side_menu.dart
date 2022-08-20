import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../res/assets_res.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _header(),
              ..._menuItems(),
            ],
          ),
        ),
      ),
    );
  }

  DrawerHeader _header() {
    return DrawerHeader(
      child: Image.asset(
        AssetsResources.IMAGE_LOGO,
        filterQuality: FilterQuality.high,
      ),
    );
  }

  _menuItems() {
    return [
      SideMenuItem(
        onTap: () {},
        icon: AssetsResources.MENU_DASHBOARD,
        title: 'Dashboard',
      ),
      SideMenuItem(
        onTap: () {},
        icon: AssetsResources.MENU_TRANSACTION,
        title: 'Transaction',
      ),
      SideMenuItem(
        onTap: () {},
        icon: AssetsResources.MENU_TASK,
        title: 'Task',
      ),
      SideMenuItem(
        onTap: () {},
        icon: AssetsResources.MENU_DOC,
        title: 'Documents',
      ),
      SideMenuItem(
        onTap: () {},
        icon: AssetsResources.MENU_STORE,
        title: 'Store',
      ),
      SideMenuItem(
        onTap: () {},
        icon: AssetsResources.MENU_NOTIFICATION,
        title: 'Notification',
      ),
      SideMenuItem(
        onTap: () {},
        icon: AssetsResources.MENU_SETTING,
        title: 'Settings',
      ),
    ];
  }
}

class SideMenuItem extends StatelessWidget {
  SideMenuItem({
    Key key,
    @required this.title,
    @required this.icon,
    @required this.onTap,
  }) : super(key: key);

  final String title;
  final String icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        icon,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54, fontSize: 20),
      ),
    );
  }
}
