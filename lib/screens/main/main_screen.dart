import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/image_url.dart';
import 'package:ct_data/screens/main/widgets/bottom_navbar_icons.dart';
import 'package:ct_data/Utils/utils_size.dart';
import 'package:flutter/material.dart';

import '../../constants/strings.dart';
import '../beneficiaries/beneficiaries_screen.dart';
import '../cable_tv_subscription.dart';
import '../dashboard/dashboard_screen.dart';
import '../profile/profile_screen.dart';
import '../transactions/transaction_screen.dart';

// import 'package:badges/badges.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    DashboardScreen(),
    TransactionScreen(),
    BeneficiariesScreen(),
    ProfileScreen(),
    CableTvSubscription(),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: SafeArea(
        child: Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10),
                vertical: getProportionateScreenHeight(3)),
            width: double.infinity,
            height: size.height * 0.07,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenHeight(0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  bottomNavIcons(
                    icon: currentIndex == 0
                        ? dashbordActiveIcon
                        : dashbordInactiveIcon,
                    iconColor: currentIndex == 0 ? primaryColor : black,
                    text: dashboardText,
                    textColor: currentIndex == 0 ? primaryColor : black,
                    onTap: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                  ),
                  bottomNavIcons(
                    icon: currentIndex == 1
                        ? transactionActiveIcon
                        : transactionInactiveIcon,
                    iconColor: currentIndex == 1 ? primaryColor : black,
                    text: transactionText,
                    textColor: currentIndex == 1 ? primaryColor : black,
                    onTap: () {
                      setState(() {
                        currentIndex = 1;
                      });
                    },
                  ),
                  bottomNavIcons(
                    icon: currentIndex == 2
                        ? beneficiaryActiveIcon
                        : beneficiaryInactiveIcon,
                    iconColor: currentIndex == 2 ? primaryColor : black,
                    text: beneficiaryText,
                    textColor: currentIndex == 2 ? primaryColor : black,
                    onTap: () {
                      setState(() {
                        currentIndex = 2;
                      });
                    },
                  ),
                  bottomNavIcons(
                    icon: currentIndex == 3
                        ? profileActiveIcon
                        : profileInactiveIcon,
                    iconColor: currentIndex == 3 ? primaryColor : black,
                    text: profileText,
                    textColor: currentIndex == 3 ? primaryColor : black,
                    onTap: () {
                      setState(() {
                        currentIndex = 3;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
