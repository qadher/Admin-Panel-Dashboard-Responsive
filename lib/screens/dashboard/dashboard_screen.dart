import 'package:admin_panel_dashboard/constants.dart';
import 'package:admin_panel_dashboard/screens/dashboard/components/header.dart';
import 'package:admin_panel_dashboard/screens/dashboard/components/storage_details.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Header(),
          SizedBox(
            height: defaultPadding,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Row(
                      children: [
                        
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                flex: 2,
                child: StorageDetails(),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
