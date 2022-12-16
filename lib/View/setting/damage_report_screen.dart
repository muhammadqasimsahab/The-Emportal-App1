import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:the_emportal_figma/View/setting/small_container.dart';

import '../../Utils/appcolors.dart';
import '../../Widget/buttons.dart';
import '../../Widget/textfiled.dart';

class DamageReportScreen extends StatefulWidget {
  DamageReportScreen({Key? key}) : super(key: key);

  @override
  State<DamageReportScreen> createState() => _DamageReportScreenState();
}

class _DamageReportScreenState extends State<DamageReportScreen> {
  late int selectedRadio = 0;
  // late int second = 0;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    // second = 0;
  }

  setSelectedRadio(val) {
    setState(() {
      selectedRadio = val;
      // second = secondval;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: Text(
          'Incident Report',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h),
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UserNameTextFiled(
                  hint: 'Damage Id',
                  icon: null,
                  controller: null,
                  validate: null,
                  visiable: false,
                ),
                SizedBox(height: 16.h),
                UserNameTextFiled(
                  hint: 'Truck Reg',
                  icon: null,
                  controller: null,
                  validate: null,
                  visiable: false,
                ),
                SizedBox(height: 16.h),
                UserNameTextFiled(
                  hint: 'Date',
                  icon: null,
                  controller: null,
                  validate: null,
                  visiable: false,
                ),
                SizedBox(height: 16.h),
                UserNameTextFiled(
                  hint: 'Time',
                  icon: null,
                  controller: null,
                  validate: null,
                  visiable: false,
                ),
                SizedBox(height: 16.h),
                UserNameTextFiled(
                  hint: 'Location',
                  icon: null,
                  controller: null,
                  validate: null,
                  visiable: false,
                ),
                SizedBox(height: 16.h),
                UserNameTextFiled(
                  hint: 'Additional Comments',
                  icon: null,
                  controller: null,
                  validate: null,
                  visiable: false,
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.only(left: 26.w, right: 24.w),
                  child: TextFormField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: 'Description',
                      isCollapsed: true,
                      isDense: true,
                      border: InputBorder.none,
                      filled: true,
                      fillColor: AppColor.inputfiledcolor,
                      suffixIcon: Container(
                        padding: EdgeInsets.all(10),
                        width: 310.w,
                        height: 113.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 1.w,
                                color: AppColor.inputfiledbordercolor)),
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
                SizedBox(height: 14.h),
                Padding(
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  child: Container(
                    height: 524.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.inputfiledcolor,
                      border: Border.all(
                          width: 2, color: AppColor.settingScreencontainer),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    ///////////////////////////Yes And No Container/////////////////////
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16.w, top: 23.h),
                          child: Text(
                            'What shift are you reporting on?',
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 30.w, left: 16.w),
                          child: Row(
                            children: [
                              Radio(
                                  value: 0,
                                  groupValue: selectedRadio,
                                  activeColor: Colors.green,
                                  onChanged: (val) {
                                    print("Radio $val");
                                    setSelectedRadio(val);
                                  }),
                              Text('Strat'),
                              SizedBox(width: 140.w),
                              Radio(
                                value: 1,
                                groupValue: selectedRadio,
                                activeColor: Colors.green,
                                onChanged: (val) {
                                  print("Radio $val");
                                  setSelectedRadio(val);
                                },
                              ),
                              Text('End')
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16.w, top: 23.h),
                          child: Text(
                            'Is 5th wheel okay?',
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 30.w, left: 16.w),
                          child: Row(
                            children: [
                              Radio(
                                  value: 0,
                                  groupValue: selectedRadio,
                                  activeColor: Colors.green,
                                  onChanged: (val) {
                                    print("Radio $val");
                                    setSelectedRadio(val);
                                  }),
                              Text('Yes'),
                              SizedBox(width: 140.w),
                              Radio(
                                value: 1,
                                groupValue: selectedRadio,
                                activeColor: Colors.green,
                                onChanged: (val) {
                                  print("Radio $val");
                                  setSelectedRadio(val);
                                },
                              ),
                              Text('No')
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16.w, top: 23.h),
                          child: Text(
                            'Is 5th wheel lever secure?',
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 30.w, left: 16.w),
                          child: Row(
                            children: [
                              Radio(
                                  value: 0,
                                  groupValue: selectedRadio,
                                  activeColor: Colors.green,
                                  onChanged: (val) {
                                    print("Radio $val");
                                    setSelectedRadio(val);
                                  }),
                              Text('Yes'),
                              SizedBox(width: 140.w),
                              Radio(
                                value: 1,
                                groupValue: selectedRadio,
                                activeColor: Colors.green,
                                onChanged: (val) {
                                  print("Radio $val");
                                  setSelectedRadio(val);
                                },
                              ),
                              Text('No')
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16.w, top: 23.h),
                          child: Text(
                            'Ramp behind 5th wheel okay?',
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 30.w, left: 16.w),
                          child: Row(
                            children: [
                              Radio(
                                  value: 0,
                                  groupValue: selectedRadio,
                                  activeColor: Colors.green,
                                  onChanged: (val) {
                                    print("Radio $val");
                                    setSelectedRadio(val);
                                  }),
                              Text('Yes'),
                              SizedBox(width: 140.w),
                              Radio(
                                value: 1,
                                groupValue: selectedRadio,
                                activeColor: Colors.green,
                                onChanged: (val) {
                                  print("Radio $val");
                                  setSelectedRadio(val);
                                },
                              ),
                              Text('No')
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16.w, top: 23.h),
                          child: Text(
                            'Airline cable secure properly ?',
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 30.w, left: 16.w),
                          child: Row(
                            children: [
                              Radio(
                                  value: 0,
                                  groupValue: selectedRadio,
                                  activeColor: Colors.green,
                                  onChanged: (val) {
                                    print("Radio $val");
                                    setSelectedRadio(val);
                                  }),
                              Text('Yes'),
                              SizedBox(width: 140.w),
                              Radio(
                                value: 1,
                                groupValue: selectedRadio,
                                activeColor: Colors.green,
                                onChanged: (val) {
                                  print("Radio $val");
                                  setSelectedRadio(val);
                                },
                              ),
                              Text('No')
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16.w, top: 23.h),
                          child: Text(
                            'Fuel/Adblue cap secure properly ?',
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 30.w, left: 16.w),
                          child: Row(
                            children: [
                              Radio(
                                  value: 0,
                                  groupValue: selectedRadio,
                                  activeColor: Colors.green,
                                  onChanged: (val) {
                                    print("Radio $val");
                                    setSelectedRadio(val);
                                  }),
                              Text('Yes'),
                              SizedBox(width: 140.w),
                              Radio(
                                value: 1,
                                groupValue: selectedRadio,
                                activeColor: Colors.green,
                                onChanged: (val) {
                                  print("Radio $val");
                                  setSelectedRadio(val);
                                },
                              ),
                              Text('No')
                            ],
                          ),
                        ),
                        ///////////////////////////Yes And No Container/////////////////////
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 180.w),
                  child: SizedBox(
                    width: 150.w,
                    height: 40.h,
                    child: Button(
                      buttontext: 'Upload',
                      onpress: () {
                        // Get.to(());
                      },
                      buttoncolor: AppColor.tableblackcolor,
                    ),
                  ),
                ),
                SizedBox(height: 69.h),
                Button(
                  buttontext: 'Submit',
                  onpress: () {},
                  buttoncolor: AppColor.splashscreentextcolor,
                  buttontextcolor: AppColor.buttontextcolorforsettingscreen,
                ),
                SizedBox(height: 70.h),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
