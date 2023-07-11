import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/utils_size.dart';
import 'package:flutter/material.dart';

import 'new_user_intro.dart';
import 'old_user.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.isOldUser,
  });

  final bool isOldUser;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.23,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: getProportionateScreenWidth(13),
            left: getProportionateScreenWidth(13),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              child: Container(
                height: size.height * 0.2,
                color: primaryColor,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: double.infinity,
                height: size.height * 0.22,
                color: blueColor,
                child: Padding(
                  padding: EdgeInsets.all(
                    getProportionateScreenWidth(5),
                  ),
                  child: isOldUser ? OldUser() : NewUseIntro(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
