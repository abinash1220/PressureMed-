import 'package:flutter/material.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';
import 'package:pressuremed/hooks/button_container.dart';
import 'package:pressuremed/screens/profile_screens/general_setting_screens/widget/nofify_container.dart';
import 'package:toggle_switch/toggle_switch.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.backgroundColor,
        leading:const Image(image: AssetImage("assets/icons/backarrow.png")),
        title: Text("Notification",
               style: primaryFont.copyWith(
               fontSize: 20,fontWeight: FontWeight.w800,color: AppColors.text,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ToggleSwitch(
            //    customWidths: [50.0, 20.0],
            //    minHeight: 30,
            //    initialLabelIndex: 0,
            //    totalSwitches: 2,
            //    onToggle: (index) {
            //      print('switched to: $index');
            //    },
            // ),
            Text("General Settings",
              style: primaryFont.copyWith(
              fontSize: 16,fontWeight: FontWeight.w800,color: AppColors.text,)),
              const SizedBox(height: 15,),
              NotifyContainer(
                title: "Daily Reminders", 
                content: "Receive daily nudges to complete\nhealth assessments."),
              const SizedBox(height: 10,),
              NotifyContainer(
                title: "Health Insights", 
                content: "Receive daily nudges to complete\nhealth assessments."),
              const SizedBox(height: 30,),  
              Text("Sound Notification",
              style: primaryFont.copyWith(
              fontSize: 16,fontWeight: FontWeight.w800,color: AppColors.text,)),
              const SizedBox(height: 15,),
              NotifyContainer(
                title: "Daily Reminders", 
                content: "Receive daily nudges to complete\nhealth assessments."),
              const SizedBox(height: 30,),  
              NextContainer(
                    text: "Save Changes",
                    image: "assets/icons/check.png"),    
              
          ],
        ),
      ),
    );
  }
}