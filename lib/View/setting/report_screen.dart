import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:the_emportal_figma/View/setting/small_container.dart';
import 'package:the_emportal_figma/Widget/buttons.dart';
import 'package:the_emportal_figma/Widget/textfiled.dart';

import '../../Utils/appcolors.dart';
import 'damage_report_screen.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  late int selectedRadio = 0;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(val) {
    //this is a function that i Call when a press a Button
    setState(() {
      selectedRadio = val;
    });
  }

  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? imageFileList = [];

  void selectImages() async {
    final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      imageFileList!.addAll(selectedImages);
    }
    print("Image List Length:" + imageFileList!.length.toString());
    setState(() {});
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
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.only(right: 120.w),
                  child: Text(
                    'Involving Another Vehicle?',
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
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
                      SizedBox(width: 150.w),
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
                  padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 20.h),
                  child: Row(
                    children: [
                      SmallContainer(
                        smaillcontainertext: 'Other Vehicle Id',
                      ),
                      SizedBox(width: 8.w),
                      SmallContainer(
                        smaillcontainertext: 'Other driver namer',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 20.h),
                  child: Row(
                    children: [
                      SmallContainer(
                        smaillcontainertext: 'Company',
                      ),
                      SizedBox(width: 8.w),
                      SmallContainer(
                        smaillcontainertext: 'Insure',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 20.h),
                  child: Row(
                    children: [
                      SmallContainer(
                        smaillcontainertext: 'Police incident no',
                      ),
                      SizedBox(width: 8.w),
                      SmallContainer(
                        smaillcontainertext: 'Police id',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 200.w, top: 16.h),
                  child: Text(
                    'Attach images',
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  width: 328.w,
                  height: 145.h,
                  decoration: BoxDecoration(
                      color: AppColor.inputfiledcolor,
                      border: Border.all(
                          width: 1, color: AppColor.settingScreencontainer)),
                  child: GridView.builder(
                      itemCount: imageFileList!.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemBuilder: (BuildContext context, int index) {
                        return Center(
                          child: Image.file(
                            File(imageFileList![index].path),
                            fit: BoxFit.cover,
                            width: 92.w,
                            height: 92.h,
                          ),
                        );
                      }),
                ),
                SizedBox(height: 14.h),
                Padding(
                  padding: EdgeInsets.only(right: 180.w),
                  child: SizedBox(
                    width: 150.w,
                    height: 40.h,
                    child: MaterialButton(
                      child: Text(
                        'Upload',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: AppColor.tableblackcolor,
                      onPressed: () {
                        selectImages();
                      },
                    ),
                  ),
                ),
                SizedBox(height: 69.h),
                Button(
                  buttontext: 'Submit',
                  onpress: () {
                    Get.to(DamageReportScreen());
                  },
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
