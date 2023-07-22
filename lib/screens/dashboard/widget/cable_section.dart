// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/image_url.dart';
import 'package:ct_data/constants/strings.dart';

import 'package:ct_data/screens/more_cable_provider/more_cable_provider.dart';
import 'package:ct_data/Utils/utils_size.dart';
import 'package:flutter/material.dart';

import 'purchases.dart';

class CableSections extends StatefulWidget {
  const CableSections({
    Key? key,
  }) : super(key: key);

  @override
  State<CableSections> createState() => _CableSectionsState();
}

class _CableSectionsState extends State<CableSections> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenHeight(5),
      ),
      width: size.width,
      decoration: BoxDecoration(
        color: white,
        boxShadow: [
          BoxShadow(
              color: primaryColor.withOpacity(0.15),
              blurRadius: 10,
              offset: Offset(0, 3)),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: getProportionateScreenWidth(8)),
                Purchases(
                  color: airtelColor,
                  image: gotvUrl,
                  text: gotvText,
                  onTap: () {},
                ),
                SizedBox(width: getProportionateScreenWidth(30)),
                Purchases(
                  color: blueColor,
                  image: dstvUrl,
                  text: dstvText,
                  onTap: () {},
                ),
                SizedBox(width: getProportionateScreenWidth(30)),
                Purchases(
                  color: startimeColor,
                  image: startimesUrl,
                  text: startimesText,
                  onTap: () {},
                ),
                SizedBox(width: getProportionateScreenWidth(25)),
                Purchases(
                  color: black,
                  image: showmaxUrl,
                  text: showmaxText,
                  onTap: () {},
                ),
                Expanded(child: Container()),
                Purchases(
                  color: blueColor,
                  image: moreCableProviderUrl,
                  text: moreCabeProviderText,
                  onTap: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => MoreCableProvider());
                    Navigator.of(context).push(route);
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
