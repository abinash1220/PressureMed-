import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';
import 'package:pressuremed/screens/bottom_navbar/bottom_navbar_screen.dart';
import 'package:pressuremed/screens/dash_board_screen/dash_board_screen.dart';
import 'package:pressuremed/screens/onboarding_screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(seconds: 3), (timer) {
      Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: ((context) => BottomBar())),
            (route) => false);
       timer.cancel();     
     });
  }

  double _scale = 1.0;

  void _animateImage() {
    setState(() {
      _scale = 5.0; // Change this value to control the final scale factor
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
              //  Center(
              //    child: AnimatedContainer(
              //                duration:const Duration(seconds: 3), // Animation duration
              //                curve: Curves.easeInOut, // Animation curve
              //                width: 200 * _scale, // Adjust the size as needed
              //                height: 200 * _scale, // Adjust the size as needed
              //                child: GestureDetector(
              //     onTap: _animateImage,
              //     child: Image.asset('assets/icons/Monotonehealthplus.png'), // Replace with your image path
              //                ),
              //              ),
              //  ),
            const Center(
            child: Image(image: AssetImage("assets/icons/Monotonehealthplus.png"),
            height: 72,width: 72,fit: BoxFit.fill,)),
            const SizedBox(height: 15,),
            Text("PressureMed",
            style: primaryFont.copyWith(
              fontSize: 20,fontWeight: FontWeight.w800,color: AppColors.text,)),
              
        ],
      ),
    );
  }
}