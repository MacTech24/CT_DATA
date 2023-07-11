import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/image_url.dart';
import 'package:ct_data/utils_size.dart';
import 'package:flutter/material.dart';

class CopyBox extends StatelessWidget {
  const CopyBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        getProportionateScreenWidth(6),
      ),
      height: getProportionateScreenHeight(25),
      width: getProportionateScreenHeight(25),
      decoration: BoxDecoration(
        color: blueColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset(
        copyIcon,
        width: 10,
        color: white,
      ),
    );
  }
}
