import 'package:admin_panel_dashboard/constants.dart';
import 'package:admin_panel_dashboard/responsive.dart';
import 'package:admin_panel_dashboard/screens/dashboard/dashboard_screen.dart';
import 'package:admin_panel_dashboard/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: secondaryColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              ),
            ),
      drawer: SideMenu(),


      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                child: SideMenu(),
              ),
            Expanded(
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
