import 'package:flutter/material.dart';
import 'package:the_emportal_figma/Utils/appcolors.dart';
import 'package:the_emportal_figma/View/Forgot%20Screen/forgot_screen.dart';
import 'package:the_emportal_figma/View/Home%20Screens/home_screen.dart';
import 'package:the_emportal_figma/View/Home%20Screens/home_screen2.dart';
import 'package:the_emportal_figma/View/Message/message_screen.dart';
import 'package:the_emportal_figma/View/setting/setting_screen.dart';

import '../View/Emergency Contact/emergency_contact.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({Key? key}) : super(key: key);

  @override
  State<MyBottomBar> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyBottomBar> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    EmergencyContactScreen(),
    MessageScreen(),
    SettingScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.splashscreentextcolor,
        onTap: _onItemTapped,
      ),
    );
  }
}
