// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/strings.dart';
import 'package:ct_data/Utils/utils_size.dart';
import 'package:flutter/material.dart';

class Purchases extends StatelessWidget {
  const Purchases({
    Key? key,
    required this.image,
    required this.text,
    this.onTap,
    this.currentIndex,
    required this.color,
  }) : super(key: key);
  final String image;
  final String text;
  final void Function()? onTap;
  final int? currentIndex;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(3)),
            height: getProportionateScreenHeight(42),
            width: getProportionateScreenHeight(42),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Image.asset(image),
          ),
          SizedBox(
            height: getProportionateScreenHeight(3),
          ),
          Text(
            text,
            style: style1(
              black,
              getProportionateScreenWidth(9),
              FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
