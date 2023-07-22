// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../Utils/utils_size.dart';

class bottomNavIcons extends StatelessWidget {
  const bottomNavIcons({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.text,
    required this.textColor,
    this.onTap,
  }) : super(key: key);
  final String icon;
  final Color iconColor;
  final String text;
  final Color textColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Column(
          children: [
            Image.asset(
              icon,
              color: iconColor,
              width: getProportionateScreenWidth(20),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              text,
              style: TextStyle(
                  color: textColor,
                  fontSize: getProportionateScreenWidth(10),
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
