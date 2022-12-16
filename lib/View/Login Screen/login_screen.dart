import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:the_emportal_figma/Controller/login_screen_controller.dart';
import 'package:the_emportal_figma/Utils/all_text_style.dart';
import 'package:the_emportal_figma/Utils/appcolors.dart';
import 'package:the_emportal_figma/View/Forgot%20Screen/forgot_screen.dart';
import 'package:the_emportal_figma/View/Home%20Screens/home_screen.dart';
import 'package:the_emportal_figma/Widget/buttons.dart';

import '../../Utils/images_logo.dart';
import '../../Widget/textfiled.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var controller = Get.put(LoginScreenController());
  bool hiddenpassword = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: controller.login,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    LogoImage.loginLogo,
                    width: 200.w,
                    height: 150.h,
                  ),
                  SizedBox(height: 40.h),
                  UserNameTextFiled(
                    controller: controller.usernamecontroller,
                    validate: (val) {
                      return controller.usernamevalidation(val);
                    },
                    hint: 'User Name',
                    icon: Image.asset('assets/icons/User.png'),
                    visiable: false,
                  ),
                  SizedBox(height: 16.h),
                  UserNameTextFiled(
                    controller: controller.passwordcontroller,
                    validate: (val) {
                      return controller.passwordValidation(val);
                    },
                    hint: 'Password',
                    icon: InkWell(
                        onTap: _togglePasswordView,
                        child: Icon(
                          hiddenpassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        )),
                    visiable: hiddenpassword,
                  ),
                  SizedBox(height: 10.h),
                  InkWell(
                    child: Text(
                      'Forgot Password?',
                      style: FontStyle.forgortextStyle,
                    ),
                    onTap: () {
                      Get.to(ForgotScreen());
                    },
                  ),
                  SizedBox(height: 30.h),
                  Button(
                    buttontext: 'LogIn',
                    buttoncolor: AppColor.splashscreentextcolor,
                    onpress: () {
                      controller.FormValidation();
                    },
                  ),
                  SizedBox(height: 25.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'OR',
                        style: FontStyle.ortextStyle,
                      ),
                      SizedBox(width: 8.w),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        height: 1.h,
                        width: 139.w,
                        color: AppColor.linecolor,
                      )
                    ],
                  ),
                  SizedBox(height: 15.h),
                  Container(
                    margin: EdgeInsets.only(right: 190),
                    height: 1.h,
                    width: 139.w,
                    color: AppColor.linecolor,
                  ),
                  SizedBox(height: 24.h),
                  Button(
                    onpress: () {},
                    buttontext: 'Sing Up',
                    buttoncolor: AppColor.singupbuttoncolor,
                    buttontextcolor: AppColor.singupbuttontextcolor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    // if (hiddenpassword == true) {
    //   hiddenpassword = false;
    // } else {
    //   hiddenpassword = true;
    // }
    hiddenpassword = !hiddenpassword;
    setState(() {});
  }
}
