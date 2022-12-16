import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:the_emportal_figma/Utils/appcolors.dart';
import 'package:the_emportal_figma/Widget/buttons.dart';

import '../../Widget/textfiled.dart';

class ChangePassowed extends StatelessWidget {
  const ChangePassowed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Change Password',
          style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/full.png',
                  width: 209.64.w, height: 156.21.h),
              SizedBox(height: 24.79.h),
              UserNameTextFiled(
                hint: 'Old Password',
                icon: Icon(Icons.password),
                controller: null,
                validate: null,
                visiable: false,
              ),
              SizedBox(height: 16.h),
              UserNameTextFiled(
                hint: 'New Password',
                icon: Icon(Icons.password),
                controller: null,
                validate: null,
                visiable: false,
              ),
              SizedBox(height: 16.h),
              UserNameTextFiled(
                hint: 'Reenter New Password',
                icon: Icon(Icons.password),
                controller: null,
                validate: null,
                visiable: false,
              ),
              SizedBox(height: 20.h),
              Button(
                buttontext: 'Update',
                onpress: () {},
                buttoncolor: AppColor.splashscreentextcolor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
