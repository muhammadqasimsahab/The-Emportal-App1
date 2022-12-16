import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:the_emportal_figma/Utils/appcolors.dart';
import 'package:the_emportal_figma/View/Add%20contact/create_contact.dart';
import 'package:the_emportal_figma/View/Emergency%20Contact/container_wiget.dart';
import 'package:the_emportal_figma/View/Inbox/inbox_screen.dart';

import 'model.dart';

class EmergencyContactScreen extends StatelessWidget {
  const EmergencyContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Emergency Contact',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 20, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.circular(5.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 1,
                          blurRadius: 3,
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search",
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ////////////////////////////////////Strat Contact List View////////////////
            Expanded(
              child: ListView.builder(
                  itemCount: 7, //That define how many items in ListModel

                  itemBuilder: (context, index) {
                    // var dataModel = ListOfItemsInModel[index];
                    return Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(right: 24, left: 24, top: 20),
                        height: 55.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.w,
                              color: AppColor.Homewcreenwidgetbordercolor),
                          color: AppColor.contactlistcolor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(16),
                              child: Image.asset(
                                'assets/icons/phone.png',
                                width: 18.w,
                                height: 18.h,
                              ),
                            ),
                            SizedBox(width: 38.11.w),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Contact no'),
                                SizedBox(height: 6.h),
                                Text('0307-6679053'),
                              ],
                            ),
                            SizedBox(width: 117.w),
                            InkWell(
                              child: Image.asset(
                                'assets/icons/line.png',
                                width: 4.w,
                              ),
                              onTap: () {
                                Get.to(CreateContact());
                              },
                            )
                          ],
                        ));
                  }),
            ),
            ////////////////////////////////////End Contact List View////////////////
          ],
        ),
      ),
    );
  }
}
