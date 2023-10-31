import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/screens/bluetooth_screen/bluetooth_screen.dart';
import 'package:pressuremed/screens/dash_board_screen/dash_board_screen.dart';
import 'package:pressuremed/screens/history_screen/history_screen.dart';
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
    const HistoryScreen(),
    const DashBoardScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final icons = <Widget> [
      Icon(Icons.add, size: 30,color:_selectedItemPosition == 0 ?AppColors.white : AppColors.grey,),
      Icon(Icons.list, size: 30,color:_selectedItemPosition == 1 ?AppColors.white : AppColors.grey,),
      Icon(Icons.compare_arrows, size: 30,color:_selectedItemPosition == 2 ?AppColors.white : AppColors.grey,),
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