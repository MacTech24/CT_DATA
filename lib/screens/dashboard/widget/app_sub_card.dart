// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/strings.dart';
import '../../../Utils/utils_size.dart';
import 'copy_box.dart';

class AppSubCard extends StatelessWidget {
  const AppSubCard({
    Key? key,
    required this.name,
    required this.bank,
    required this.pecentageCharge,
    required this.accoutNum,
  }) : super(key: key);

  final String name;
  final String bank;
  final String pecentageCharge;
  final String accoutNum;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(10),
            vertical: getProportionateScreenHeight(15),
          ),
          height: size.height * 0.12,
          color: primaryColor,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: style1(
                      white,
                      getProportionateScreenWidth(16),
                      FontWeight.bold,
                    ),
                  ),
                  Text(
                    pecentageCharge,
                    style: style1(
                      white,
                      getProportionateScreenWidth(12),
                      FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  bank,
                  style: style1(
                    white.withOpacity(0.9),
                    getProportionateScreenWidth(11),
                    FontWeight.normal,
                  ),
                ),
              ),
              Expanded(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    accoutNum,
                    style: style1(
                      white,
                      getProportionateScreenWidth(13),
                      FontWeight.bold,
                    ),
                  ),
                  CopyBox(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
