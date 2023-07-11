import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/utils_size.dart';
import 'package:flutter/material.dart';
import 'widget/dashboard_body.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool isOldUser = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: DashboardBody(isOldUser: isOldUser),
    );
  }
}
