import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/screens/bluetooth_screen/bluetooth_screen.dart';
import 'package:pressuremed/screens/profile_screens/general_setting_screens/notification_screen.dart';
import 'package:pressuremed/screens/profile_screens/general_setting_screens/personal_info_update_succesfully_screen.dart';
import 'package:pressuremed/screens/profile_screens/help_&_support_screens/about_us_screen.dart';
import 'package:pressuremed/screens/profile_screens/profile_screen.dart';

class BottomBar extends StatefulWidget {
  int index;
  BottomBar({super.key,this.index = 0});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  
  int _selectedItemPosition = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  setData() {
    setState(() {
      _selectedItemPosition = widget.index;
    });
  }

  final screens = [
    const BluetoothScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final icons = <Widget> [
      const Icon(Icons.add, size: 30,color:AppColors.grey,),
      const Icon(Icons.list, size: 30,color:AppColors.grey),
      const Icon(Icons.compare_arrows, size: 30,color:AppColors.grey),
    ];
    return Scaffold(
      body: screens[_selectedItemPosition],
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedItemPosition,
        backgroundColor: AppColors.backgroundColor,
        color: AppColors.white,
        buttonBackgroundColor: AppColors.blue,
        items: icons,
        onTap: (index) => setState(() => _selectedItemPosition = index),
       ),
    );
  }
}