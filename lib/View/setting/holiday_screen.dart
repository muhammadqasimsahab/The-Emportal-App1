import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:internationalization/internationalization.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:the_emportal_figma/Widget/buttons.dart';
import 'package:the_emportal_figma/Widget/textfiled.dart';

import '../../Utils/appcolors.dart';

class HolidayScreen extends StatefulWidget {
  const HolidayScreen({Key? key}) : super(key: key);

  @override
  State<HolidayScreen> createState() => _HolidayScreenState();
}

class _HolidayScreenState extends State<HolidayScreen> {
  String _selectedDate = "Strat Date";
  String _selectedDateend = "End Date";

  Future<void> _openDatePicker(BuildContext context) async {
    final DateTime? d = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2022),
        lastDate: DateTime(2025));
    if (d != null) {
      setState(() {
        _selectedDate = new DateFormat.yMMMd('en_us').format(d).toString();
        // _selectedDateend = new DateFormat.yMMMd('en_us').format(d).toString();
      });
    }
  }

  Future<void> _openDatePickerend(BuildContext context) async {
    final DateTime? d = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2022),
        lastDate: DateTime(2025));
    if (d != null) {
      setState(() {
        // _selectedDate = new DateFormat.yMMMd('en_us').format(d).toString();
        _selectedDateend = new DateFormat.yMMMd('en_us').format(d).toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
        centerTitle: true,
        title: Text(
          'Holiday',
          style: TextStyle(
              color: Colors.black,
              fontSize: 22.sp,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 30.w, top: 30.h),
              child: Text(
                'This must be done 2 weeks in advance except it\nis an emergency.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 16.h),
            UserNameTextFiled(
              hint: _selectedDate,
              icon: InkWell(
                onTap: () {
                  _openDatePicker(context);
                },
                child: Image.asset('assets/icons/calll.png'),
              ),
              controller: null,
              validate: null,
              visiable: false,
            ),
            SizedBox(height: 16.h),
            UserNameTextFiled(
              hint: _selectedDateend,
              icon: InkWell(
                onTap: () {
                  _openDatePickerend(context);
                },
                child: Image.asset('assets/icons/calll.png'),
              ),
              controller: null,
              validate: null,
              visiable: false,
            ),
            Padding(
                padding: EdgeInsets.only(right: 59.w, top: 30.h),
                child: Text(
                  'Your leaves are more than 5 days, Please mention\na reason',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                )),
            /////////////////////////////////////////////Message Fild
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.only(left: 26.w, right: 24.w),
              child: TextFormField(
                maxLines: 1,
                decoration: InputDecoration(
                  isCollapsed: true,
                  isDense: true,
                  border: InputBorder.none,
                  filled: true,
                  fillColor: AppColor.inputfiledcolor,
                  suffixIcon: Container(
                    padding: EdgeInsets.all(10),
                    width: 310.w,
                    height: 113.h,
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: AppColor.inputfiledbordercolor,
                      width: 1.w,
                    ),
                  ),
                  // border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ),
            SizedBox(height: 24.h),
            Button(
                buttoncolor: AppColor.splashscreentextcolor,
                buttontext: 'Submit',
                buttontextcolor: AppColor.singupbuttontextcolor,
                onpress: () {})
          ],
        ),
      ),
    );
  }
}
