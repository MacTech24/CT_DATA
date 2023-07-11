// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/strings.dart';
import 'package:ct_data/utils_size.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
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
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenHeight(11),
          horizontal: getProportionateScreenWidth(15)),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Image.asset(
              icon,
              width: getProportionateScreenWidth(20),
              color: black.withOpacity(0.6),
            ),
            SizedBox(
              width: getProportionateScreenWidth(10),
            ),
            Text(
              text,
              style: style1(
                black.withOpacity(0.6),
                getProportionateScreenWidth(15),
                FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
