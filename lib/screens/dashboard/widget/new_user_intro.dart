import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/strings.dart';
import '../../../utils_size.dart';

class NewUseIntro extends StatelessWidget {
  const NewUseIntro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Text(
                "Sign in",
                style: style2(
                  white,
                  getProportionateScreenWidth(18),
                  FontWeight.bold,
                ),
              ),
            ),
            Text(
              ", fund your account & enjoy",
              style: style1(
                white,
                getProportionateScreenWidth(18),
                FontWeight.bold,
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            "more dicounts!",
            style: style1(
              white,
              getProportionateScreenWidth(18),
              FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: style1(
                  white,
                  getProportionateScreenWidth(20),
                  FontWeight.normal,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Sign Up",
                  style: style2(
                    white,
                    getProportionateScreenWidth(20),
                    FontWeight.normal,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
