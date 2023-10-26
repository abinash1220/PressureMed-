import 'package:flutter/material.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';
import 'package:pressuremed/screens/dash_board_screen/widget/dashboard_container.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("PressureMed",
                      style: primaryFont.copyWith(
                      fontSize: 20,fontWeight: FontWeight.w800,color: AppColors.text,)),
                      //const Image(image: AssetImage("assets/icons/Monotonehealthplus.png")),
                  ],
                ),
                const SizedBox(height: 20,), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Hello, Phos",
                      style: primaryFont.copyWith(
                      fontSize: 30,fontWeight: FontWeight.w800,color: AppColors.text,)),
                      const Image(image: AssetImage("assets/icons/Group.png")),
                  ],
                ),
                const SizedBox(height: 20,),
                const Center(child: Image(image: AssetImage("assets/images/Chart.png"))),
                const SizedBox(height: 20,),
                Text("Smart Stats",
                      style: primaryFont.copyWith(
                      fontSize: 16,fontWeight: FontWeight.w800,color: AppColors.text,)),
                DashBoardContainer(value: "85",data: "kpm",type: "heart rate",color: AppColors.red),      
            ],
          ),
        ),
      ),
    );
  }
}