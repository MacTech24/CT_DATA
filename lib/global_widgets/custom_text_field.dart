import 'package:ct_data/Utils/utils_size.dart';
import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/strings.dart';
import 'package:flutter/material.dart';

Widget customTextField(
    {String? hintText,
    Widget? suffixIcon,
    Widget? label,
    TextEditingController? controller,
    BuildContext? context,
    bool obscureText = false}) {
  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: getProportionateScreenHeight(8),
    ),
    child: TextFormField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
        label: label,
        labelStyle: style1(
          grey,
          getProportionateScreenWidth(18),
          FontWeight.normal,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: grey),
        ),
      ),
    ),
  );
}
