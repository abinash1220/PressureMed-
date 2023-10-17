import 'package:flutter/material.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';

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
            Text("Account succesfully\nupdated! 🌈",
            textAlign: TextAlign.center,
            style: primaryFont.copyWith(
              fontSize: 30,fontWeight: FontWeight.w800,color: AppColors.text,)),
            Text("Thanks for updating your account!",
            textAlign: TextAlign.center,
            style: primaryFont.copyWith(
              fontSize: 16,fontWeight: FontWeight.w500,color: AppColors.textGrey,)),
          ],
        ),
      ),
    );
  }
}