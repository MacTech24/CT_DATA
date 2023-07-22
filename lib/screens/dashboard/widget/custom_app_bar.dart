import 'package:ct_data/Utils/utils_size.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import '../../../constants/colors.dart';
import '../../../constants/image_url.dart';
import '../../../constants/strings.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: backgroundColor,
      title: Column(
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
      actions: [
        Row(
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
            SizedBox(
              width: getProportionateScreenWidth(20),
            ),
            IconButton(
              onPressed: () {
                Drawer();
              },
              icon: const Icon(
                Icons.menu,
                size: 35,
                color: black,
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(10),
            ),
          ],
        ),
      ],
    );
  }
}
