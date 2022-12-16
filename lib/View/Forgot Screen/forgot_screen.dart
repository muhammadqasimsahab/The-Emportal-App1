import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:the_emportal_figma/Utils/appcolors.dart';
import 'package:the_emportal_figma/Utils/bottom_bar.dart';
import 'package:the_emportal_figma/View/Home%20Screens/home_screen.dart';
import 'package:the_emportal_figma/Widget/buttons.dart';

import '../../Widget/textfiled.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.shade200),
                  child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(Icons.arrow_back))),
            ),
            title: Text(
              'Forgot Password',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UserNameTextFiled(
                    hint: 'New Password',
                    icon: Image.asset('assets/icons/hide.png'),
                    controller: null,
                    validate: null,
                    visiable: false,
                  ),
                  SizedBox(height: 10.h),
                  UserNameTextFiled(
                    hint: 'Confirm Password',
                    icon: Image.asset('assets/icons/hide.png'),
                    controller: null,
                    validate: null,
                    visiable: false,
                  ),
                  SizedBox(height: 20.h),
                  Button(
                    buttoncolor: AppColor.splashscreentextcolor,
                    buttontext: 'Change Password',
                    onpress: () {
                      Get.to(MyBottomBar());
                    },
                  )
                ],
              ),
            ),
          )),
    );
  }
}
