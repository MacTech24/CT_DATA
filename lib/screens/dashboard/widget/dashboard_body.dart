
import 'package:ct_data/constants/image_url.dart';
import 'package:ct_data/constants/strings.dart';
import 'package:ct_data/global_widgets/custom_drawer.dart';
import 'package:ct_data/utils_size.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import '../../../constants/colors.dart';
import 'airtime_section.dart';
import 'app_card.dart';
import 'app_sub_card.dart';
import 'cable_section.dart';
import 'data_section.dart';

import 'sub_title.dart';

class DashboardBody extends StatefulWidget {
  DashboardBody({
    Key? key,
    required this.isOldUser,
  }) : super(key: key);

  final bool isOldUser;

  @override
  State<DashboardBody> createState() => _DashboardBodyState();
}

class _DashboardBodyState extends State<DashboardBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        drawer: CustomDrawer(),
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: backgroundColor,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    appBarText,
                    style: style1(
                      black,
                      getProportionateScreenWidth(18),
                      FontWeight.bold,
                    ),
                  ),
                  Text(
                    greetings,
                    style: style1(
                      black,
                      getProportionateScreenWidth(12),
                      FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                badges.Badge(
                  badgeStyle: badges.BadgeStyle(badgeColor: black),
                  badgeContent: Text(
                    '3',
                    style: style1(white, 16, FontWeight.bold),
                  ),
                  child: Image.asset(
                    notification,
                    width: 30,
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(20)),
                Builder(builder: (context) {
                  return IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                      size: 35,
                      color: black,
                    ),
                  );
                }),
              ],
            ),
            SizedBox(
              width: getProportionateScreenWidth(10),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenHeight(10)),
              child: Column(
                children: [
                  AppCard(isOldUser: widget.isOldUser),
                  SizedBox(height: getProportionateScreenHeight(10)),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(5)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenHeight(10)),
              child: Row(
                children: [
                  const AppSubCard(
                    name: "Musa",
                    pecentageCharge: "1% charge",
                    bank: "MoniePoint MFB",
                    accoutNum: "0123456789",
                  ),
                  SizedBox(width: getProportionateScreenWidth(5)),
                  const AppSubCard(
                    name: "Musa",
                    pecentageCharge: "1% charge",
                    bank: "VFD MFB",
                    accoutNum: "0123456789",
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenHeight(10)),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    SizedBox(height: getProportionateScreenHeight(10)),
                    SubTitle(title: "Airtime Purchase"),
                    SizedBox(height: getProportionateScreenHeight(10)),
                    AirtimeSections(),
                    SizedBox(height: getProportionateScreenHeight(10)),
                    SubTitle(title: "Data Purchase"),
                    DataSections(),
                    SizedBox(height: getProportionateScreenHeight(10)),
                    SubTitle(title: "Cable TV Subscription"),
                    SizedBox(height: getProportionateScreenHeight(10)),
                    CableSections(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
