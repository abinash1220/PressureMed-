import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';
import 'package:pressuremed/hooks/button_container.dart';
import 'package:pressuremed/screens/profile_screens/general_setting_screens/personal_info_update_succesfully_screen.dart';
import 'package:pressuremed/screens/profile_screens/general_setting_screens/widget/personal_info_textField.dart';

class PersonalInfoEditScreen extends StatefulWidget {
  const PersonalInfoEditScreen({super.key});

  @override
  State<PersonalInfoEditScreen> createState() => _PersonalInfoEditScreenState();
}

class _PersonalInfoEditScreenState extends State<PersonalInfoEditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Container(
            height: 107,
            width: double.infinity,
            decoration:const BoxDecoration(
              color: AppColors.text,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24))
            ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 15,left: 20,right: 20),
             child: Text("Full Name",
              textAlign: TextAlign.center,
              style: primaryFont.copyWith(
                fontSize: 14,fontWeight: FontWeight.w800,color: AppColors.text,)),
           ),
           PersonalInfoTextField(
            text: "adhitya",
            prefix: "assets/icons/Monotoneuser.png",
            suffix: "assets/icons/edit.png",
           ),
           Padding(
             padding: const EdgeInsets.only(top: 15,left: 20,right: 20),
             child: Text("Email Address",
              textAlign: TextAlign.center,
              style: primaryFont.copyWith(
                fontSize: 14,fontWeight: FontWeight.w800,color: AppColors.text,)),
           ),
           PersonalInfoTextField(
            text: "dekomori@fuwa.jp",
            prefix: "assets/icons/email.png",
            suffix: "assets/icons/edit.png",
           ),
           Padding(
             padding: const EdgeInsets.only(top: 15,left: 20,right: 20),
             child: Text("Phone Number",
              textAlign: TextAlign.center,
              style: primaryFont.copyWith(
                fontSize: 14,fontWeight: FontWeight.w800,color: AppColors.text,)),
           ),
           PersonalInfoTextField(
            text: "+123 456 789",
            prefix: "assets/icons/phone.png",
            suffix: "assets/icons/edit.png",
           ),
           Padding(
             padding: const EdgeInsets.only(top: 15,left: 20,right: 20),
             child: Text("Date of Birth",
              textAlign: TextAlign.center,
              style: primaryFont.copyWith(
                fontSize: 14,fontWeight: FontWeight.w800,color: AppColors.text,)),
           ),
           PersonalInfoTextField(
            text: "10/10/2020",
            prefix: "assets/icons/calendar.png",
            suffix: "assets/icons/downarrow.png",
           ),
           Padding(
             padding: const EdgeInsets.only(top: 15,left: 20,right: 20),
             child: Text("Address",
              textAlign: TextAlign.center,
              style: primaryFont.copyWith(
                fontSize: 14,fontWeight: FontWeight.w800,color: AppColors.text,)),
           ),
           PersonalInfoTextField(
            text: "Nevada Street 132",
            prefix: "assets/icons/location.png",
            suffix: "assets/icons/edit.png",
           ),
           Padding(
             padding: const EdgeInsets.only(top: 15,left: 20,right: 20),
             child: Text("Country",
              textAlign: TextAlign.center,
              style: primaryFont.copyWith(
                fontSize: 14,fontWeight: FontWeight.w800,color: AppColors.text,)),
           ),
           PersonalInfoTextField(
            text: "India",
            prefix: "assets/icons/flag.png",
            suffix: "assets/icons/downarrow.png",
           ),
           Padding(
             padding: const EdgeInsets.only(top: 35),
             child: InkWell(
              onTap: (){
                Get.to(const PersonalInfoUpdatedSucessfullyScreen());
              },
              child: NextContainer(text: "Save Changes", image: "assets/icons/check.png")),
           ),
        ],
      ),
    );
  }
}