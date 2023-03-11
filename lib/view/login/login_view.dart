import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:home/constants.dart';
import 'package:home/custom/custom.dart';
import 'package:home/custom/custom_button.dart';
import 'package:home/custom/custom_text.dart';
import 'package:home/logo_devs.dart';
import 'package:home/view/control_view.dart';
import 'package:home/view/view_model/auth_view_model.dart';

class LoginView extends GetWidget<AuthViewModel> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    String email, password;

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: h * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/loka_logo3.jpg',
                    height: w * 0.3,
                    width: w * 0.3,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login Account",
                        style: TextStyle(
                            color: oneColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      /*CustomText(
                        text: "Login Account",
                        color: oneColor,
                        fontSize: 30,
                        alignment: Alignment.centerLeft,
                      ),*/
                      SizedBox(
                        height: h * 0.01,
                      ),
                      CustomText(
                        text: "WELCOME TO LOKA",
                        color: threeColor,
                        fontSize: 18,
                        alignment: Alignment.centerLeft,
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(w * 0.05),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [BoxShadow(blurRadius: 5)]),
                padding: EdgeInsets.all(w * 0.08),
                child: Column(
                  children: [
                    CustomTextFromField(
                        text: "Email", hint: "Exemple@loka.com"),
                    SizedBox(
                      height: h * 0.04,
                    ),
                    CustomTextFromField(text: "Password", hint: "***********"),
                    SizedBox(
                      height: h * 0.06,
                    ),
                    CustomButton(
                      text: "Sign In",
                      ontap: () {
                        Get.to(ControllView());
                      },
                      height: h * 0.1,
                      color: oneColor,
                    ),
                    SizedBox(
                      height: h * 0.04,
                    ),
                    CustomText(
                      text: "Or Continue with",
                      alignment: Alignment.center,
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            controller.googleSignInMethod();
                          },
                          child: Image.asset(
                            "assets/google_icon.png",
                            height: w * 0.1,
                            width: w * 0.1,
                          ),
                        ),
                        SizedBox(
                          width: w * 0.1,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "assets/phone_icon.png",
                            height: w * 0.1,
                            width: w * 0.1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(text: "Not a member ?"),
                  InkWell(
                    onTap: () {},
                    child: CustomText(
                      text: "Register now",
                      color: oneColor,
                    ),
                  ),
                ],
              ),
              LogoSdev(nameDevloper: ""),
            ],
          ),
        ),
      ),
    );
  }
}
