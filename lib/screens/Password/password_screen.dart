import 'package:ct_data/Utils/utils_size.dart';
import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/image_url.dart';
import 'package:ct_data/constants/strings.dart';
import 'package:ct_data/screens/Password/widgets/custom_keypad.dart';
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
          ),
          Expanded(
            child: NumericPad(),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Text(
                            'Your Passcode will be reset',
                            style: style1(
                              black,
                              getProportionateScreenWidth(16),
                              FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: getProportionateScreenHeight(10)),
                          Align(
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.fingerprint,
                              size: getProportionateScreenWidth(35),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(10),
                          ),
                          Text(
                            'Do you want to set Biometric?',
                            style: style1(
                              black,
                              getProportionateScreenWidth(16),
                              FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(10),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'No',
                                  style: style1(
                                    orangeColor,
                                    getProportionateScreenWidth(20),
                                    FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(20),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Dialog(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.all(16.0),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                        "assets/icons/warning-2.png"),
                                                    SizedBox(
                                                      width:
                                                          getProportionateScreenWidth(
                                                              10),
                                                    ),
                                                    Text(
                                                      'Your Passcode will be reset',
                                                      style: style1(
                                                        black,
                                                        getProportionateScreenWidth(
                                                            16),
                                                        FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                    height:
                                                        getProportionateScreenHeight(
                                                            10)),
                                                SizedBox(
                                                  height:
                                                      getProportionateScreenHeight(
                                                          10),
                                                ),
                                                Text(
                                                  'Continue to reset passcode?',
                                                  style: style1(
                                                    black,
                                                    getProportionateScreenWidth(
                                                        16),
                                                    FontWeight.w400,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height:
                                                      getProportionateScreenHeight(
                                                          10),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    TextButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        'Cancel',
                                                        style: style1(
                                                          orangeColor,
                                                          getProportionateScreenWidth(
                                                              20),
                                                          FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width:
                                                          getProportionateScreenWidth(
                                                              20),
                                                    ),
                                                    TextButton(
                                                      onPressed: () {},
                                                      child: Text(
                                                        'Ok',
                                                        style: style1(
                                                          orangeColor,
                                                          getProportionateScreenWidth(
                                                              20),
                                                          FontWeight.bold,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ]),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Text(
                                  'Yes',
                                  style: style1(
                                    orangeColor,
                                    getProportionateScreenWidth(20),
                                    FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          )
                        ]),
                      ),
                    );
                  },
                );
              },
              child: Text(
                "Forget?",
                style: style1(
                  black,
                  getProportionateScreenWidth(14),
                  FontWeight.w400,
                ),
              )),
          SizedBox(
            height: getProportionateScreenHeight(35),
          ),
        ],
      ),
    );
  }
}
