import 'package:ct_data/Utils/utils_size.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/image_url.dart';
import '../constants/strings.dart';
import 'main/widgets/bottom_navbar_icons.dart';

class CableTvSubscription extends StatefulWidget {
  const CableTvSubscription({Key? key}) : super(key: key);

  @override
  State<CableTvSubscription> createState() => _CableTvSubscriptionState();
}

class _CableTvSubscriptionState extends State<CableTvSubscription> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              appBarText,
              style: style1(
                black,
                getProportionateScreenWidth(18),
                FontWeight.bold,
              ),
            ),
            Text(
              greetings,
              style: style1(
                black,
                getProportionateScreenWidth(12),
                FontWeight.w500,
              ),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Drawer();
                },
                icon: const Icon(
                  Icons.menu,
                  size: 35,
                  color: black,
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(10),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [],
      ),
      bottomNavigationBar: Container(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        width: double.infinity,
        height: size.height * 0.1,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: getProportionateScreenHeight(15),
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
                text: dashboardText,
                textColor: currentIndex == 2 ? primaryColor : black,
                onTap: () {
                  setState(() {
                    currentIndex = 2;
                  });
                },
              ),
              bottomNavIcons(
                icon:
                    currentIndex == 3 ? profileActiveIcon : profileInactiveIcon,
                iconColor: currentIndex == 3 ? primaryColor : black,
                text: dashboardText,
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
    );
  }
}
