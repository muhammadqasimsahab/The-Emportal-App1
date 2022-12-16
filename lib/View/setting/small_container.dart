import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_emportal_figma/Utils/appcolors.dart';

class SmallContainer extends StatelessWidget {
  SmallContainer({Key? key, required this.smaillcontainertext})
      : super(key: key);
  String smaillcontainertext;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: AppColor.inputfiledcolor,
        border: Border.all(width: 2, color: AppColor.settingScreencontainer),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Text(
          smaillcontainertext,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
