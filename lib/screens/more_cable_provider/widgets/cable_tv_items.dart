// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/strings.dart';
import 'package:ct_data/Utils/utils_size.dart';
import 'package:flutter/material.dart';

class CableTvItems extends StatelessWidget {
  const CableTvItems({
    Key? key,
    required this.name,
    required this.color,
    required this.image,
  }) : super(key: key);

  final String name;
  final Color color;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: getProportionateScreenHeight(50),
          width: getProportionateScreenHeight(50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
          ),
          child: Image.asset(image),
        ),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Text(
          name,
          style: style1(
            black,
            getProportionateScreenWidth(16),
            FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
