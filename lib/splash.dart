import 'package:ct_data/Utils/routers.dart';
import 'package:ct_data/Utils/utils_size.dart';
import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/image_url.dart';
import 'package:ct_data/screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'screens/Authentication/login_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.zero,
        height: size.height,
        width: size.width,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: orangeColor,
          image: DecorationImage(
              image: AssetImage(splashBgUrl), fit: BoxFit.cover),
        ),
        child: Image.asset(
          logoUrl,
        ),
      ),
    );
  }

  void navigate() {
    Future.delayed(const Duration(seconds: 3), () {
      PageNavigator(ctx: context).nextPageOnly(page: WelcomeScreen());
    });
  }
}
