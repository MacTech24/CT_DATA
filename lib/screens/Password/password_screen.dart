import 'package:ct_data/Utils/utils_size.dart';
import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/image_url.dart';
import 'package:ct_data/constants/strings.dart';
import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height * 0.05,
          ),
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              logoOrange,
              width: getProportionateScreenWidth(60),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Container(
            alignment: Alignment.center,
            height: size.height * 0.15,
            width: size.height * 0.15,
            decoration: BoxDecoration(
              color: black,
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                image: AssetImage("assets/images/profile.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Text(
            "Enter Passcode",
            style: style1(
              black,
              getProportionateScreenWidth(16),
              FontWeight.w600,
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              6,
              (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: getProportionateScreenHeight(15),
                  width: getProportionateScreenHeight(15),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: grey,
                    ),
                    borderRadius: BorderRadius.circular(
                      getProportionateScreenHeight(8),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
