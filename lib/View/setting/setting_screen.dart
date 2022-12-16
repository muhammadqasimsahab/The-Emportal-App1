import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:the_emportal_figma/Utils/appcolors.dart';
import 'package:the_emportal_figma/View/setting/change_password.dart';
import 'package:the_emportal_figma/View/setting/chartok_screen.dart';
import 'package:the_emportal_figma/View/setting/contianer_widget.dart';
import 'package:the_emportal_figma/View/setting/holiday_screen.dart';
import 'package:the_emportal_figma/View/setting/report_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Setting',
              style: TextStyle(fontSize: 22.sp, color: Colors.black),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 39.h),
                  child: Container(
                    width: 328.w,
                    height: 89.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: AppColor.Homewcreenwidgetbordercolor),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 9.w, bottom: 10.h, top: 9.h),
                      child: Row(
                        children: [
                          Image.asset('assets/images/setting.png',
                              width: 70.w, height: 70.h),
                          SizedBox(width: 7.w),
                          Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: Column(
                              children: [
                                Text(
                                  'Ahsan Iqbal',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  'AbX-2356',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 100.w),
                          Text(
                            'Edit',
                            style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                SettingContainer(
                    icon: 'assets/icons/bells.png',
                    text: 'Notification Settings',
                    image: Image.asset('assets/images/swip.png',
                        width: 50.w, height: 20.h)),
                SizedBox(height: 16.h),
                InkWell(
                  child: SettingContainer(
                    icon: 'assets/icons/lock.png',
                    text: 'Get Holiday',
                    // image: Image.asset('assets/images/swip.png',
                    //     width: 50.w, height: 20.h),
                  ),
                  onTap: () {
                    Get.to(HolidayScreen());
                  },
                ),
                SizedBox(height: 16.h),
                InkWell(
                  onTap: () {
                    Get.to(ChangePassowed());
                  },
                  child: SettingContainer(
                    icon: 'assets/icons/lock.png',
                    text: 'Change Password',
                    // image: 'assets/images/swip.png',
                  ),
                ),
                SizedBox(height: 16.h),
                InkWell(
                  onTap: () {
                    Get.to(ReportScreen());
                  },
                  child: SettingContainer(
                    icon: 'assets/icons/not.png',
                    text: 'Report Setting',
                    // image: 'assets/images/swip.png',
                  ),
                ),
                SizedBox(height: 16.h),
                SettingContainer(
                  icon: 'assets/icons/messages.png',
                  text: 'Message Setting',
                  // image: 'assets/images/swip.png',
                ),
                SizedBox(height: 16.h),
                SettingContainer(
                  icon: 'assets/icons/not.png',
                  text: 'Terms & Condition',
                  // image: 'assets/images/swip.png',
                ),
                SizedBox(height: 16.h),
                InkWell(
                  onTap: () {
                    Get.to(ChartScreen());
                  },
                  child: SettingContainer(
                    icon: 'assets/icons/chart.png',
                    text: 'Shift details',
                    // image: 'assets/images/swip.png',
                  ),
                ),
                SizedBox(height: 16.h),
              ],
            ),
          )),
    );
  }
}
