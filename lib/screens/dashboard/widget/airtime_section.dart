import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/strings.dart';
import 'package:ct_data/Utils/utils_size.dart';
import 'package:flutter/material.dart';

import '../../../constants/image_url.dart';
import '../../international_airtime/internation_airtime.dart';
import 'purchases.dart';

class AirtimeSections extends StatelessWidget {
  const AirtimeSections({
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
              children: [
                Purchases(
                  color: mtnColor,
                  image: mtnUrl,
                  text: mtnText,
                  onTap: () {},
                ),
                Expanded(child: Container()),
                Purchases(
                  color: airtelColor,
                  image: airtelUrl,
                  text: airtelText,
                  onTap: () {},
                ),
                Expanded(child: Container()),
                Purchases(
                  color: gloColor,
                  image: gloUrl,
                  text: gloText,
                  onTap: () {},
                ),
                Expanded(child: Container()),
                Purchases(
                  color: black,
                  image: etisalatUrl,
                  text: etisalatText,
                  onTap: () {},
                ),
                Expanded(child: Container()),
                Purchases(
                  color: blueColor,
                  image: internationalAirtimeUrl,
                  text: internationAirtimeText,
                  onTap: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => InternationalAirtime());
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
