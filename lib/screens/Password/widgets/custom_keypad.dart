import 'package:ct_data/Utils/utils_size.dart';
import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/strings.dart';
import 'package:flutter/material.dart';

class NumericPad extends StatelessWidget {
  get context => null;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(15),
      ),
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: size.height * 0.09,
              width: size.width * 0.06,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildNumber(1),
                  buildNumber(2),
                  buildNumber(3),
                ],
              ),
            ),
            Container(
              height: size.height * 0.09,
              width: size.width * 0.06,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildNumber(4),
                  buildNumber(5),
                  buildNumber(6),
                ],
              ),
            ),
            Container(
              height: size.height * 0.09,
              width: size.width * 0.06,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildNumber(7),
                  buildNumber(8),
                  buildNumber(9),
                ],
              ),
            ),
            Container(
              height: size.height * 0.09,
              width: size.width * 0.06,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildFingerprint(
                    onTap: () {},
                  ),
                  buildNumber(0),
                  buildDelete(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNumber(int number) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.all(
            getProportionateScreenWidth(10),
          ),
          child: Container(
            child: Center(
              child: Text(
                number.toString(),
                style: style1(
                  black,
                  getProportionateScreenWidth(25),
                  FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDelete() {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.all(
            getProportionateScreenWidth(10),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(
                getProportionateScreenWidth(10),
              ),
            ),
            child: Center(child: Icon(Icons.arrow_back)),
          ),
        ),
      ),
    );
  }

  Widget buildFingerprint({
    void Function()? onTap,
  }) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(
            getProportionateScreenWidth(10),
          ),
          child: Icon(
            Icons.fingerprint,
            size: 35,
          ),
        ),
      ),
    );
  }
}
