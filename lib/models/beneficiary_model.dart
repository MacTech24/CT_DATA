// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/image_url.dart';
import 'package:ct_data/constants/strings.dart';
import 'package:ct_data/Utils/utils_size.dart';
import 'package:flutter/material.dart';

class BeneficiaryModel extends StatelessWidget {
  const BeneficiaryModel({
    Key? key,
    required this.text,
    this.delete,
    this.profileInfo,
  }) : super(key: key);

  final String text;
  final void Function()? delete;
  final void Function()? profileInfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getProportionateScreenHeight(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(3)),
                height: getProportionateScreenHeight(45),
                width: getProportionateScreenHeight(45),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.person,
                  color: white,
                  size: 25,
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(10),
              ),
              Text(
                text,
                style: style1(
                  black.withOpacity(0.7),
                  getProportionateScreenWidth(16),
                  FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(onTap: profileInfo, child: Image.asset(person)),
              SizedBox(
                width: getProportionateScreenWidth(25),
              ),
              InkWell(
                onTap: delete,
                child: Image.asset(trash),
              ),
            ],
          )
        ],
      ),
    );
  }

  static List<BeneficiaryModel> beneficiaryList = [
    BeneficiaryModel(
      text: "Jean Milly",
      profileInfo: () {},
      delete: () {},
    ),
    BeneficiaryModel(
      text: "Marvin McKinney",
      profileInfo: () {},
      delete: () {},
    ),
    BeneficiaryModel(
      text: "Martins Ekene",
      profileInfo: () {},
      delete: () {},
    ),
    BeneficiaryModel(
      text: "Robert Fox",
      profileInfo: () {},
      delete: () {},
    ),
    BeneficiaryModel(
      text: "White Billy",
      profileInfo: () {},
      delete: () {},
    ),
    BeneficiaryModel(
      text: "Macsmith Okorie",
      profileInfo: () {},
      delete: () {},
    ),
    BeneficiaryModel(
      text: "Musa Muhammad",
      profileInfo: () {},
      delete: () {},
    ),
    BeneficiaryModel(
      text: "Lucy Scoll",
      profileInfo: () {},
      delete: () {},
    ),
    BeneficiaryModel(
      text: "Precious Ben",
      profileInfo: () {},
      delete: () {},
    ),
    BeneficiaryModel(
      text: "Jean Milly",
      profileInfo: () {},
      delete: () {},
    ),
    BeneficiaryModel(
      text: "Marvin McKinney",
      profileInfo: () {},
      delete: () {},
    ),
    BeneficiaryModel(
      text: "Martins Ekene",
      profileInfo: () {},
      delete: () {},
    ),
  ];
}
