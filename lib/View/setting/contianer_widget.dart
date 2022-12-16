import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_emportal_figma/Utils/appcolors.dart';

class SettingContainer extends StatelessWidget {
  SettingContainer(
      {Key? key, required this.icon, required this.text, this.image})
      : super(key: key);
  String icon;
  var text;
  final image;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 320.w,
        height: 50.h,
        decoration: BoxDecoration(
          // color: AppColor.settingScreencontainer,

          border:
              Border.all(width: 1, color: AppColor.Homewcreenwidgetbordercolor),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 8.w, top: 10.h, bottom: 10.h),
          child: Row(
            children: [
              Image.asset(
                icon,
                width: 24.w,
                height: 24.h,
              ),
              SizedBox(width: 12.w),
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
              ),
              SizedBox(width: 84.w),
              Container(
                child: image,
              )
            ],
          ),
        ));
  }
}
