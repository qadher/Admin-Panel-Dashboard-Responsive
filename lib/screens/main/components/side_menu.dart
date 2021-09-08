import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/logo.png"),
            ),
            DrawerListTile(
              title: 'Dashboard',
              svgSrc: 'assets/icons/menu_dashbord.svg',
              onpress: () {
                print("dashboard clicked");
              },
            ),
            DrawerListTile(
              title: 'Transaction',
              svgSrc: 'assets/icons/menu_tran.svg',
              onpress: () {
                print("transaction clicked");
              },
            ),
            DrawerListTile(
              title: 'Task',
              svgSrc: 'assets/icons/menu_task.svg',
              onpress: () {
                print("task clicked");
              },
            ),
            DrawerListTile(
              title: 'Documents',
              svgSrc: 'assets/icons/menu_doc.svg',
              onpress: () {
                print("documents clicked");
              },
            ),
            DrawerListTile(
              title: 'Store',
              svgSrc: 'assets/icons/menu_store.svg',
              onpress: () {
                print("store clicked");
              },
            ),
            DrawerListTile(
              title: 'Notification',
              svgSrc: 'assets/icons/menu_notification.svg',
              onpress: () {
                print("Notification clicked");
              },
            ),
            DrawerListTile(
              title: 'Profile',
              svgSrc: 'assets/icons/menu_profile.svg',
              onpress: () {
                print("profile clicked");
              },
            ),
            DrawerListTile(
              title: 'Settings',
              svgSrc: 'assets/icons/menu_setting.svg',
              onpress: () {
                print("settings clicked");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.onpress,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onpress,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
