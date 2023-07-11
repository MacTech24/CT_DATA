import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/strings.dart';
import 'package:ct_data/utils_size.dart';
import 'package:flutter/material.dart';

class BeneficiarySearchField extends StatelessWidget {
  const BeneficiarySearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xFFE9F1F4),
        ),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            border: InputBorder.none,
            hintText: "Input Beneficiary Name",
            hintStyle: style1(
              blueColor,
              getProportionateScreenWidth(14),
              FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
