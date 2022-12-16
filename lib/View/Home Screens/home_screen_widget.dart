import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_emportal_figma/Utils/appcolors.dart';

class HomeScreenWidget extends StatelessWidget {
  HomeScreenWidget({Key? key, required this.text, required this.image})
      : super(key: key);
  String text;
  String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(20),
      height: 112.h,
      width: 111.w,
      decoration: BoxDecoration(
        color: AppColor.Homewcreenwidgetcolor,
        border:
            Border.all(width: 1.w, color: AppColor.Homewcreenwidgetbordercolor),

        borderRadius: BorderRadius.circular(15), //border corner radius
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 32.w,
            height: 32.h,
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: const EdgeInsets.only(left: 9.0, right: 9),
            child: Text(
              text,
              style: TextStyle(fontSize: 16.sp),
            ),
          )
        ],
      ),
    );
  }
}
