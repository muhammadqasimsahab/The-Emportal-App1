import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:swipebuttonflutter/swipable_button.dart';
import 'package:the_emportal_figma/View/Emergency%20Contact/emergency_contact.dart';
import 'package:the_emportal_figma/View/Home%20Screens/home_screen2.dart';
import 'package:the_emportal_figma/View/Home%20Screens/home_screen_widget.dart';
import 'package:swipebuttonflutter/swipebuttonflutter.dart';

import '../../Utils/appcolors.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  bool isFinished = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(child: Image.asset('assets/images/man.png')),
          ),
          title: null,
          actions: [
            Image.asset(
              'assets/icons/Bell.png',
              width: 24.w,
              height: 24.h,
            )
          ],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 1.h,
                width: double.infinity,
                color: AppColor.linecolor,
              ),
              SizedBox(height: 20.h),
              ////////////////////////////////////////////////////////////////////
              Padding(
                padding: const EdgeInsets.only(left: 57, right: 57),
                child: SwipeableButtonView(
                  buttonText: "Close Shift",
                  buttonWidget: Container(
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                    ),
                  ),
                  activeColor: AppColor.splashscreentextcolor,
                  isFinished: isFinished,
                  onWaitingProcess: () {
                    Future.delayed(Duration(seconds: 2), () {
                      setState(() {});
                    });
                  },
                  onFinish: () async {
                    await Get.to(null);

                    setState(() {});
                  },

                  // },
                ),
              ),

              ////////////////////////////////////////////////////////
              SizedBox(height: 40.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HomeScreenWidget(
                        text: 'Walkarround',
                        image: 'assets/icons/steering.png',
                      ),
                      HomeScreenWidget(
                        text: 'Survey \n From',
                        image: 'assets/icons/surveyor.png',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HomeScreenWidget(
                        text: 'Incident \n Report',
                        image: 'assets/icons/traffic.png',
                      ),
                      HomeScreenWidget(
                        text: 'Damage \n Report',
                        image: 'assets/icons/Hail.png',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HomeScreenWidget(
                        text: '  Shift \n Details',
                        image: 'assets/icons/Pipe_fill.png',
                      ),
                      HomeScreenWidget(
                        text: 'Tranning',
                        image: 'assets/icons/Vector.png',
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        ////////////////////////////////////////////////////////////////////

        // bottomNavigationBar: BottomAppBar(
        //   shape: CircularNotchedRectangle(), //shape of notch
        //   notchMargin:
        //       5, //notche margin between floating button and bottom appbar
        //   child: Row(
        //     //children inside bottom appbar
        //     mainAxisSize: MainAxisSize.max,
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: <Widget>[
        //       Padding(
        //         padding: EdgeInsets.only(left: 10),
        //         child: IconButton(
        //           icon: Icon(
        //             size: 30.0,
        //             Icons.home,
        //             color: Color.fromARGB(179, 245, 79, 37),
        //           ),
        //           onPressed: () {},
        //         ),
        //       ),
        //       IconButton(
        //           icon: Icon(
        //             size: 30.0,
        //             Icons.phone,
        //             color: Color.fromARGB(179, 179, 179, 179),
        //           ),
        //           onPressed: () {
        //             Get.to(EmergencyContactScreen());
        //           }),
        //       IconButton(
        //         icon: Icon(
        //           size: 30.0,
        //           Icons.message_outlined,
        //           color: Color.fromARGB(179, 179, 179, 179),
        //         ),
        //         onPressed: () {},
        //       ),
        //       Padding(
        //         padding: EdgeInsets.only(right: 10),
        //         child: IconButton(
        //           icon: Icon(
        //             size: 30.0,
        //             Icons.settings,
        //             color: Color.fromARGB(179, 179, 179, 179),
        //           ),
        //           onPressed: () {},
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
