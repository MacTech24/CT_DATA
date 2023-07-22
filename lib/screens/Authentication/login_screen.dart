import 'package:ct_data/Utils/routers.dart';
import 'package:ct_data/Utils/utils_size.dart';
import 'package:ct_data/constants/strings.dart';
import 'package:ct_data/global_widgets/custom_text_field.dart';
import 'package:ct_data/screens/Authentication/signup_screen.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../global_widgets/button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _userName = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    _userName.clear();
    _password.clear();
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
          "Sign In",
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
                label: Text("Password"),
                hintText: "Password",
                controller: _password,
                context: context,
                obscureText: true,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("Forgot password?")),
              ),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              customButton(
                text: "Sign In",
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
                    page: SignupScreen(),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("I'm a new user, "),
                    Text(
                      "Sign Up",
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
