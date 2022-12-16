import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          title: Text('Admin'),
          centerTitle: true,
          actions: [
            Image.asset(
              'assets/images/admin.png',
              width: 40.w,
              height: 40.h,
            ),
            SizedBox(width: 24.w)
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 53.w, right: 25.w, top: 30.h),
                child: Text(
                  'Westheimer Rd. Santa Ana, Illinois 85486\nRd. Santa Ana  Rd. Santa Ana Rd.\nSanta Ana',
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/admin.png',
                      width: 20.w,
                      height: 20.h,
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      children: [
                        Image.asset('assets/images/admin1.png',
                            width: 100.w, height: 12.h),
                        SizedBox(height: 4.h),
                        Image.asset('assets/images/admin1.png',
                            width: 100.w, height: 12.h)
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 53.w, right: 25.w, top: 30.h),
                child: Text(
                  'Westheimer Rd. Santa Ana, Illinois\n85486  Rd. Santa Ana  Rd.\nSanta Ana Rd. Santa Ana',
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 30.h),
                child: Text(
                  'Westheimer Rd. Santa Ana, Illinois\n85486  Rd. Santa Ana  Rd.\nSanta Ana Rd. Santa Ana',
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/admin.png',
                      width: 20.w,
                      height: 20.h,
                    ),
                    SizedBox(width: 10.w),
                    Row(
                      children: [
                        Image.asset('assets/images/pic.png',
                            width: 36.w, height: 36.h),
                        SizedBox(height: 4.h),
                        Image.asset('assets/images/pic.png',
                            width: 36.w, height: 36.h),
                        SizedBox(height: 4.h),
                        Image.asset('assets/images/pic.png',
                            width: 36.w, height: 36.h),
                        SizedBox(height: 4.h),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 53.w, right: 25.w, top: 30.h),
                child: Text(
                  'Westheimer Rd. Santa Ana, Illinois\n85486  Rd. Santa Ana  Rd.\nSanta Ana Rd. Santa Ana',
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
