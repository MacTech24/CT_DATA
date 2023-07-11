import 'package:ct_data/constants/image_url.dart';
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/strings.dart';
import '../../../utils_size.dart';
import 'box.dart';

class OldUser extends StatelessWidget {
  const OldUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          availBal,
          style: style1(
            white,
            getProportionateScreenWidth(15),
            FontWeight.normal,
          ),
        ),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: getProportionateScreenWidth(60),
            ),
            Text(
              balance,
              style: style3(
                white,
                getProportionateScreenWidth(23),
                FontWeight.bold,
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(5),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.visibility_off_outlined,
                color: white,
                size: 25,
              ),
            ),
          ],
        ),
        SizedBox(
          height: getProportionateScreenHeight(15),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Box(
                icon: fundWalletUrl,
                text: fundWallet,
                onTap: () {},
              ),
              SizedBox(
                width: getProportionateScreenWidth(30),
              ),
              Box(
                icon: ctDataUrl,
                text: ctData,
                onTap: () {},
              ),
              SizedBox(
                width: getProportionateScreenWidth(30),
              ),
              Box(
                icon: moreUrl,
                text: more,
                onTap: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
