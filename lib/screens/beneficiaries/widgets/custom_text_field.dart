// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/strings.dart';
import 'package:ct_data/utils_size.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintText,
    this.onChanged,
  }) : super(key: key);
  final String hintText;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getProportionateScreenHeight(10)),
      child: Container(
        padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
        height: getProportionateScreenHeight(45),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: grey,
            )),
        child: TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: style1(
              grey,
              getProportionateScreenWidth(16),
              FontWeight.normal,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
