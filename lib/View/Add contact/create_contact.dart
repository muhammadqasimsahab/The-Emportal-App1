import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:the_emportal_figma/View/Message/message_screen.dart';

import '../../Utils/appcolors.dart';
import '../../Widget/buttons.dart';
import '../../Widget/textfiled.dart';
import '../Home Screens/home_screen.dart';
import 'component/contactscreencomponent.dart';

class CreateContact extends StatelessWidget {
  const CreateContact({Key? key}) : super(key: key);

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
              'Add Contact',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
          ),
          body: ContactScreenComponent()),
    );
  }
}
