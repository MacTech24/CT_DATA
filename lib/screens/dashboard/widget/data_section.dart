import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/strings.dart';
import 'package:ct_data/screens/international_data/international_data.dart';
import 'package:ct_data/utils_size.dart';
import 'package:flutter/material.dart';

import '../../../constants/image_url.dart';
import 'purchases.dart';

class DataSections extends StatelessWidget {
  const DataSections({
    super.key,
  });

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
                Purchases(
                  color: mtnColor,
                  image: mtnUrl,
                  text: mtnText,
                  onTap: () {},
                ),
                Purchases(
                  color: airtelColor,
                  image: airtelUrl,
                  text: airtelText,
                  onTap: () {},
                ),
                Purchases(
                  color: gloColor,
                  image: gloUrl,
                  text: gloText,
                  onTap: () {},
                ),
                Purchases(
                  color: black,
                  image: etisalatUrl,
                  text: etisalatText,
                  onTap: () {},
                ),
                Purchases(
                  color: blueColor,
                  image: internationalDataUrl,
                  text: internationDataText,
                  onTap: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => InternationalData());
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
