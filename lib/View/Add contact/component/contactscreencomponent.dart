import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_emportal_figma/Widget/textfiled.dart';

import '../../../Utils/appcolors.dart';
import '../../../Widget/buttons.dart';

class ContactScreenComponent extends StatefulWidget {
  const ContactScreenComponent({Key? key}) : super(key: key);

  @override
  _ContactScreenComponentState createState() => _ContactScreenComponentState();
}

class _ContactScreenComponentState extends State<ContactScreenComponent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UserNameTextFiled(
              hint: 'New Password',
              icon: Image.asset('assets/icons/User.png'),
              controller: null,
              validate: null,
              visiable: false,
            ),
            SizedBox(height: 10.h),
            UserNameTextFiled(
              hint: 'Confirm Password',
              icon: Image.asset('assets/icons/phone.png'),
              controller: null,
              validate: null,
              visiable: false,
            ),
            SizedBox(height: 20.h),
            Button(
              buttoncolor: AppColor.splashscreentextcolor,
              buttontext: 'Add',
              onpress: () {},
            )
          ],
        ),
      ),
    );
  }
}
