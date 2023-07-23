import 'package:ct_data/Utils/routers.dart';
import 'package:ct_data/Utils/utils_size.dart';
import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/strings.dart';
import 'package:ct_data/global_widgets/button.dart';
import 'package:ct_data/models/onboarding_info.dart';
import 'package:ct_data/screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(
      image: "assets/images/onboarding-1.png",
      title: "Automated Services",
      description:
          "Daayta is a fully optimize platform that is reliable\n and dependable. you got 100% value from any transaction you carry out on Daayta",
    ),
    OnboardingInfo(
      image: "assets/images/onboarding-2.png",
      title: "Automated Services",
      description:
          "Daayta is a fully optimize platform that is reliable anddependable. you got 100% value from any transaction you carry out on Daayta",
    ),
    OnboardingInfo(
      image: "assets/images/onboarding-3.png",
      title: "Automated Services",
      description:
          "Daayta is a fully optimize platform that is reliable and dependable. you got 100% value from any transaction you carry out on Daayta",
    )
  ];

  int selectedPageIndex = 0;
  final PageController _pageController = PageController();
  bool get isLastPage => selectedPageIndex == onboardingPages.length - 1;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (value) {
              setState(() {
                selectedPageIndex = value;
              });
            },
            physics: BouncingScrollPhysics(),
            itemCount: onboardingPages.length,
            itemBuilder: (context, index) {
              var pages = onboardingPages[index];
              return Container(
                height: size.height,
                width: size.width,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(pages.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/black-effect.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              pages.title,
                              style: style1(
                                white,
                                getProportionateScreenWidth(25),
                                FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(10),
                            ),
                            Text(
                              pages.description,
                              style: style1(
                                white,
                                getProportionateScreenWidth(14),
                                FontWeight.w400,
                              ).copyWith(height: 1.5),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(150),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          Positioned(
            top: getProportionateScreenHeight(45),
            right: 0,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Container(
                  margin: EdgeInsets.all(getProportionateScreenWidth(3)),
                  height: getProportionateScreenHeight(5),
                  width: size.width * 0.30,
                  color: selectedPageIndex == index ? orangeColor : white,
                ),
              ),
            ),
          ),
          //
          Positioned(
            right: 0,
            left: 0,
            bottom: getProportionateScreenHeight(50),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
              ),
              child: onboardingButton(
                text: isLastPage ? "Get Started" : "Next",
                context: context,
                onTap: forwardAction,
              ),
            ),
          )
        ],
      ),
    );
  }

  void forwardAction() {
    if (isLastPage) {
      PageNavigator(ctx: context).nextPageOnly(
        page: WelcomeScreen(),
      );
    } else {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }
}
