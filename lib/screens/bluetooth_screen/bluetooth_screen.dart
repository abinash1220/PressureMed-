import 'package:flutter/material.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';

class BluetoothScreen extends StatefulWidget {
  const BluetoothScreen({super.key});

  @override
  State<BluetoothScreen> createState() => _BluetoothScreenState();
}

class _BluetoothScreenState extends State<BluetoothScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 325,
            width: double.infinity,
            decoration:const BoxDecoration(
              color: AppColors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32)),
                image: DecorationImage(image: AssetImage("assets/icons/backImg.png"))
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 25),
            child: Text("Available Devices",
              style: primaryFont.copyWith(
              fontSize: 16,fontWeight: FontWeight.w400,color: AppColors.text,)),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 69,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("QO69A",
                     style: primaryFont.copyWith(
                     fontSize: 16,fontWeight: FontWeight.w400,color: AppColors.text,)),
                    Text("Not connected",
                     style: primaryFont.copyWith(
                     fontSize: 16,fontWeight: FontWeight.w400,color: AppColors.textGrey,)),
                  ],
                ),
              ),
            ),
          ),  
        ],
      ),
    );
  }
}