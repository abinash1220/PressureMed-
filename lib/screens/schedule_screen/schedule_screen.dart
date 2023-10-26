import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';
import 'package:pressuremed/screens/schedule_screen/widget/schedule_container.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.backgroundColor,
        leading:InkWell(
          onTap: (){
            Get.back();
          },
          child: const Image(image: AssetImage("assets/icons/backarrow.png"))),
          title: Text("Schedule ",
               style: primaryFont.copyWith(
               fontSize: 20,fontWeight: FontWeight.w800,color: AppColors.text,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              const Image(image: AssetImage("assets/images/Banner.png")),
              const SizedBox(height: 30,), 
              Text("Your Monitoring Schedule ",
                 style: primaryFont.copyWith(
                 fontSize: 16,fontWeight: FontWeight.w800,color: AppColors.text,)),
              const SizedBox(height: 10,),   
              ScheduleContainer(text: "From 12:00 PM", icon: "assets/icons/clock.png", hrs: "60 Min"),
              ScheduleContainer(text: "", icon: "assets/icons/clock.png", hrs: "2 Hr"),
              ScheduleContainer(text: "", icon: "assets/icons/clock.png", hrs: "1 Hr"),
              ScheduleContainer(text: "", icon: "assets/icons/clock.png", hrs: "5 Hr")
          ],
        ),
      ),
    );
  }
}