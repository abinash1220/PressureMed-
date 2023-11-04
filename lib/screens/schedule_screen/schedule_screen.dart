import 'dart:io';

import 'package:flutter/cupertino.dart';
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
        // leading:InkWell(
        //   onTap: (){
        //     Get.back();
        //   },
        //   child: const Image(image: AssetImage("assets/icons/backarrow.png"))),
          title: Text("Schedule ",
               style: primaryFont.copyWith(
               fontSize: 20,fontWeight: FontWeight.w800,color: AppColors.text,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              InkWell(
                onTap: (){
                 back();
                },
                child: const Image(image: AssetImage("assets/images/Banner.png"))),
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

   back() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: Colors.white,
            // title: Column(
            //   children: [
            //     //Image.asset('assets/icons/exit.png'),
            //     // Text("Comeback Soon!",
            //     //     style: TextStyle(
            //     //         fontSize: 25.sp,
            //     //         fontWeight: FontWeight.bold,
            //     //         color: Colors.black)),
            //   ],
            // ),
            content:Container(
              height: 100,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Confirm Start Time",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.textGrey,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    "11:30 AM",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.text,
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "Confirm Schedule interval",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.textGrey,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    "1 hour",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.text,
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child:const Text("Cancel",
                        style:TextStyle(color: AppColors.red)),
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                      //exit(0);
                    },
                    child:const Text(
                      "Confirm",
                      style: TextStyle(color: AppColors.blue),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,)
            ],
          );
        });
  }

  confiTime(){
    showCupertinoDialog(
          context: context,
          builder: (BuildContext context){
            return CupertinoAlertDialog(
                  // title:const Text(
                  //   'Confirm Start Time',
                  //   style:TextStyle(color: Color(0xff6B7588), fontSize: 16),
                  // ),
                  content:Column(
                    children: [
                       Text(
                        'Confirm Start Time',
                        style: TextStyle(color: AppColors.textGrey, fontSize: 16),
                      ),
                       const Text(
                        'Are you sure want to logout?',
                        style: TextStyle(color: AppColors.textGrey, fontSize: 16),
                      ),
                       const Text(
                        'Confirm Schedule interval',
                        style: TextStyle(color: AppColors.textGrey, fontSize: 16),
                      ),
                    ],
                  ),
                  actions: [
                    CupertinoDialogAction(
                      child:const Text(
                        'Cancel',
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      ),
                      onPressed: () {
                        // toasty(context, 'Cancel');
                        //finish(context);
                        Get.back();
                      },
                    ),
                    CupertinoDialogAction(
                      child:const Text(
                        'Confirm',
                        style: TextStyle(color: AppColors.blue, fontSize: 16),
                      ),
                      onPressed: () {
                         Get.back();
                        // toasty(context, 'Logout');
                        // finish(context);
                      },
                    )
                  ],
                );
          }
          );
  }

}