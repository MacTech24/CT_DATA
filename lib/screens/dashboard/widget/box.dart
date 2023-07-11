// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ct_data/constants/strings.dart';
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../utils_size.dart';

class Box extends StatelessWidget {
  const Box({
    Key? key,
    required this.icon,
    required this.text,
    this.onTap,
  }) : super(key: key);

  final String icon;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(8)),
              height: getProportionateScreenHeight(35),
              width: getProportionateScreenHeight(35),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                icon,
                width: 10,
                color: white,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(3),
            ),
            Text(
              text,
              style: style1(
                white,
                getProportionateScreenWidth(10),
                FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
