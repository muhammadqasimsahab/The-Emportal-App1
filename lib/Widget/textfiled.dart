import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_emportal_figma/Utils/appcolors.dart';

class UserNameTextFiled extends StatelessWidget {
  UserNameTextFiled(
      {Key? key,
      required this.hint,
      this.icon,
      required this.controller,
      required this.validate,
      this.visiable})
      : super(key: key);
  final hint;
  Widget? icon;
  TextEditingController? controller;
  final validate;
  bool? visiable;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 310.w,
      height: 50.h,
      child: TextFormField(
        // keyboardType: TextInputType.number,
        obscureText: visiable!,
        maxLines: 1,
        minLines: 1,
        validator: validate,
        decoration: InputDecoration(
          // isCollapsed: true,
          // isDense: true,

          border: InputBorder.none,
          filled: true,
          fillColor: AppColor.inputfiledcolor,
          suffixIcon: Container(
            padding: EdgeInsets.all(10),
            width: 20.w,
            height: 20.h,
            child: icon,
          ),

          hintText: hint,
          hintStyle: TextStyle(fontSize: 14.sp, fontFamily: 'Josefin Sans'),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppColor.inputfiledbordercolor,
              width: 0,
            ),
          ),
          // border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}
