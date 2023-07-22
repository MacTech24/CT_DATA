import 'package:ct_data/Utils/utils_size.dart';
import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/strings.dart';
import 'package:flutter/material.dart';

Widget customButton({
  VoidCallback? onTap,
  String? text,
  bool? status = false,
  BuildContext? context,
}) {
  return InkWell(
    onTap: () {},
    child: Container(
      height: getProportionateScreenHeight(55),
      width: MediaQuery.of(context!).size.width,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
        vertical: getProportionateScreenHeight(15),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: status == false ? grey : black),
      child: Text(
        text!,
        style: style1(
          white,
          getProportionateScreenWidth(16),
          FontWeight.bold,
        ),
      ),
    ),
  );
}
