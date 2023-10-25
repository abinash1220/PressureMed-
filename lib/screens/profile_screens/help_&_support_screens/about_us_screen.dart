import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';
import 'package:pressuremed/screens/profile_screens/help_&_support_screens/widget/about_container.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
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
        title: Text("About Us",
               style: primaryFont.copyWith(
               fontSize: 20,fontWeight: FontWeight.w800,color: AppColors.text,)),
      ),
      body: Column(
        children: [
            const SizedBox(height: 25,),
            const Center(
            child: Image(image: AssetImage("assets/icons/Monotonehealthplus.png"),
            height: 48,width: 48,fit: BoxFit.fill,)),
            const SizedBox(height: 15,),
            Text("PressureMed",
            style: primaryFont.copyWith(
            fontSize: 24,fontWeight: FontWeight.w800,color: AppColors.text,)),
            const SizedBox(height: 50,),
            AboutContainer(
              text: "Privacy Policy", 
              image: "assets/icons/forwordios.png", 
              icon: "assets/icons/bell.png"),
            const SizedBox(height: 10,),
            AboutContainer(
              text: "Terms & Conditions", 
              image: "assets/icons/forwordios.png", 
              icon: "assets/icons/chat.png"),
            const SizedBox(height: 10,),
            AboutContainer(
              text: "Rate Our App", 
              image: "assets/icons/forwordios.png", 
              icon: "assets/icons/star.png"),
            const SizedBox(height: 40,),      
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage("assets/icons/behance.png")),
                SizedBox(width: 15,),
                Image(image: AssetImage("assets/icons/facebook.png")),
                SizedBox(width: 15,),
                Image(image: AssetImage("assets/icons/instagram.png")),
                SizedBox(width: 15,),
                Image(image: AssetImage("assets/icons/linkedin.png")),
              ],
            ),
        ],
      ),
    );
  }
}