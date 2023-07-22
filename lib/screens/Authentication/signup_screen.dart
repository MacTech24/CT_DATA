import 'package:ct_data/Utils/routers.dart';
import 'package:ct_data/Utils/utils_size.dart';
import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/strings.dart';
import 'package:ct_data/global_widgets/button.dart';
import 'package:ct_data/global_widgets/custom_text_field.dart';
import 'package:ct_data/screens/Authentication/login_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _userName = TextEditingController();
  TextEditingController _emailAddress = TextEditingController();
  TextEditingController _phoneNumber = TextEditingController();
  TextEditingController _refUserName = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();

  @override
  void dispose() {
    _userName.clear();
    _emailAddress.clear();
    _phoneNumber.clear();
    _refUserName.clear();
    _password.clear();
    _confirmPassword.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Create an account",
          style: style1(
            black,
            getProportionateScreenHeight(22),
            FontWeight.w400,
          ),
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              customTextField(
                label: Text("Username"),
                hintText: "Username",
                controller: _userName,
                context: context,
              ),
              customTextField(
                label: Text("Email Address"),
                hintText: "Email Address",
                controller: _emailAddress,
                context: context,
              ),
              customTextField(
                label: Text("Phone Number"),
                hintText: "Phone Number",
                controller: _phoneNumber,
                context: context,
              ),
              customTextField(
                hintText: "Referral Username (Optional)",
                controller: _refUserName,
                context: context,
              ),
              customTextField(
                  label: Text("Password"),
                  hintText: "Password",
                  controller: _password,
                  context: context,
                  obscureText: true),
              customTextField(
                  label: Text("Confirm Password"),
                  hintText: "Confirm Password",
                  controller: _confirmPassword,
                  context: context,
                  obscureText: true),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                          text: "By Signing up, you agree to Our ",
                          style: style1(
                              Colors.black54,
                              getProportionateScreenWidth(12),
                              FontWeight.normal),
                          children: [
                            TextSpan(
                              text: "Terms and Conditions",
                              style: style2(
                                orangeColor,
                                getProportionateScreenWidth(12),
                                FontWeight.normal,
                              ),
                            )
                          ]),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              customButton(
                text: "Sign Up",
                onTap: () {},
                context: context,
                status: false, // true or false will change the color
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              InkWell(
                onTap: () {
                  PageNavigator(ctx: context).nextPage(
                    page: LoginScreen(),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already Registered? "),
                    Text(
                      "Sign In",
                      style: style1(
                        orangeColor,
                        getProportionateScreenWidth(16),
                        FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
