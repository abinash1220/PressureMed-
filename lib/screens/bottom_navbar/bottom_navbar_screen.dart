import 'dart:io';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/screens/bluetooth_screen/bluetooth_screen.dart';
import 'package:pressuremed/screens/dash_board_screen/dash_board_screen.dart';
import 'package:pressuremed/screens/history_screen/history_screen.dart';
import 'package:pressuremed/screens/profile_screens/profile_screen.dart';
import 'package:pressuremed/screens/report_screen/report_screen.dart';
import 'package:pressuremed/screens/schedule_screen/schedule_screen.dart';

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
    const ScheduleScreen(),
    const DashBoardScreen(),
    const HistoryScreen(),
    const ProfileScreen(),
  ];

   back() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: Colors.white,
            title: Column(
              children: [
                Image.asset('assets/images/exit.png'),
                // Text("Comeback Soon!",
                //     style: TextStyle(
                //         fontSize: 25.sp,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.black)),
              ],
            ),
            content: const Text(
              "Are you sure want to exit?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 40,
                      width: 120,
                      decoration:const BoxDecoration(
                          // ignore: unrelated_type_equality_checks
                          color:  AppColors.white),
                      child:const Center(
                          child: Text("Cancel",
                              style: TextStyle(color: AppColors.blue))),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      exit(0);
                    },
                    child: Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                          color: AppColors.blue, borderRadius: BorderRadius.circular(5)),
                      child:const Center(
                        child: Text(
                          "Exit",
                          style: TextStyle(color: AppColors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,)
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final icons = <Widget> [
      Icon(Icons.bluetooth, size: 30,color:_selectedItemPosition == 0 ?AppColors.white : AppColors.grey,),
      Icon(Icons.history, size: 30,color:_selectedItemPosition == 1 ?AppColors.white : AppColors.grey,),
      Icon(Icons.home_outlined, size: 30,color:_selectedItemPosition == 2 ?AppColors.white : AppColors.grey,),
      Icon(Icons.list_alt, size: 30,color:_selectedItemPosition == 3 ?AppColors.white : AppColors.grey,),
      Icon(Icons.person_outline, size: 30,color:_selectedItemPosition == 4 ?AppColors.white : AppColors.grey,),
    ];
    return WillPopScope(
      onWillPop: () {
        return back();
      },
      child: Scaffold(
        body: screens[_selectedItemPosition],
        bottomNavigationBar: CurvedNavigationBar(
          index: _selectedItemPosition,
          backgroundColor: AppColors.backgroundColor,
          color: AppColors.white,
          buttonBackgroundColor: AppColors.blue,
          items: icons,
          onTap: (index) => setState(() => _selectedItemPosition = index),
         ),
      ),
    );
  }
}