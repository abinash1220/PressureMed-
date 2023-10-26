import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';
import 'package:pressuremed/hooks/button_container.dart';
import 'package:pressuremed/screens/profile_screens/settings_screen.dart';

class PersonalInfoUpdatedSucessfullyScreen extends StatefulWidget {
  const PersonalInfoUpdatedSucessfullyScreen({super.key});

  @override
  State<PersonalInfoUpdatedSucessfullyScreen> createState() => _PersonalInfoUpdatedSucessfullyScreenState();
}

class _PersonalInfoUpdatedSucessfullyScreenState extends State<PersonalInfoUpdatedSucessfullyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding:const EdgeInsets.only(left: 0,right: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage("assets/images/Item.png"),
            height: 330,
            width: double.infinity,),
            const SizedBox(height: 20,),
            Text("Account succesfully\nupdated! 🌈",
            textAlign: TextAlign.center,
            style: primaryFont.copyWith(
              fontSize: 30,fontWeight: FontWeight.w800,color: AppColors.text,)),
            const SizedBox(height: 20,),  
            Text("Thanks for updating your account!",
            textAlign: TextAlign.center,
            style: primaryFont.copyWith(
              fontSize: 16,fontWeight: FontWeight.w500,color: AppColors.textGrey,)),
            const SizedBox(height: 30,),  
            InkWell(
              onTap: (){
                Get.off(const SettingScreen());
              },
              child: NextContainer(
                      text: "Back to Settings",
                      image: "assets/icons/setting.png"),
            ),
          ],
        ),
      ),
    );
  }
}