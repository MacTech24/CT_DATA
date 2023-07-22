import 'package:ct_data/Utils/routers.dart';
import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/image_url.dart';
import 'package:ct_data/screens/Authentication/login_screen.dart';
import 'package:ct_data/screens/Authentication/signup_screen.dart';
import 'package:flutter/material.dart';

import '../../Utils/utils_size.dart';
import '../../constants/strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          padding: EdgeInsets.zero,
          height: size.height,
          width: size.width,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: orangeColor,
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Image.asset(ellips),
                width: size.width,
              ),
              Container(
                height: size.height,
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height * 0.25,
                    ),
                    Image.asset(
                      logoUrl,
                      width: getProportionateScreenWidth(150),
                    ),
                    SizedBox(
                      height: size.height * 0.25,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(80),
                      ),
                      child: Column(
                        children: [
                          Text(
                            splashText,
                            style: style1(
                                white,
                                getProportionateScreenWidth(16),
                                FontWeight.normal),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(15),
                          ),
                          InkWell(
                            onTap: () {
                              PageNavigator(ctx: context).nextPage(
                                page: SignupScreen(),
                              );
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: getProportionateScreenHeight(60),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: black,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "Get Started",
                                style: style1(
                                    white,
                                    getProportionateScreenWidth(16),
                                    FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              PageNavigator(ctx: context).nextPage(
                                page: LoginScreen(),
                              );
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: getProportionateScreenHeight(57),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: black),
                                color: white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "Login",
                                style: style1(
                                    black,
                                    getProportionateScreenWidth(16),
                                    FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
