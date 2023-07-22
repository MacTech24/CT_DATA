import 'package:ct_data/constants/strings.dart';
import 'package:ct_data/Utils/utils_size.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'custom_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: Container(
              child: Center(
                child: Text(
                  "CT DATA",
                  style: style1(
                    white,
                    getProportionateScreenWidth(30),
                    FontWeight.bold,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                color: blueColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
            ),
          ),
          CustomListTile(
            icon: "assets/icons/pricing.png",
            text: "Pricing",
            onTap: () {},
          ),
          CustomListTile(
            icon: "assets/icons/faqs.png",
            text: "FAQs",
            onTap: () {},
          ),
          CustomListTile(
            icon: "assets/icons/affiliate.png",
            text: "Affiliate Website",
            onTap: () {},
          ),
          CustomListTile(
            icon: "assets/icons/upgrade.png",
            text: "Upgrade Package",
            onTap: () {},
          ),
          CustomListTile(
            icon: "assets/icons/about.png",
            text: "About Us",
            onTap: () {},
          ),
          CustomListTile(
            icon: "assets/icons/log.png",
            text: "Log Complaint",
            onTap: () {},
          ),
          CustomListTile(
            icon: "assets/icons/contact.png",
            text: "Contact Us",
            onTap: () {},
          ),
          CustomListTile(
            icon: "assets/icons/terms.png",
            text: "Terms and Condition",
            onTap: () {},
          ),
          CustomListTile(
            icon: "assets/icons/biometric.png",
            text: "Enable Biometric",
            onTap: () {},
          ),
          CustomListTile(
            icon: "assets/icons/data.png",
            text: "Set/Change Pin",
            onTap: () {},
          ),
          CustomListTile(
            icon: "assets/icons/setting.png",
            text: "Settings",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
