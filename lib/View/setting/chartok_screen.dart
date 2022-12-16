import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:the_emportal_figma/Widget/textfiled.dart';
import 'package:internationalization/internationalization.dart';

class ChartScreen extends StatefulWidget {
  const ChartScreen({Key? key}) : super(key: key);

  @override
  State<ChartScreen> createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          title: Text(
            'Shift details',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                Text(
                  'Report Table',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.h, right: 25.w, left: 25.w),
                  child: Image.asset('assets/images/chart1.png'),
                )
              ]),
        ),
      ),
    );
  }
}
