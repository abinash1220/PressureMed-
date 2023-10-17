import 'package:flutter/material.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';
import 'package:pressuremed/screens/profile_screens/help_&_support_screens/widget/contact_container.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.backgroundColor,
        leading:const Image(image: AssetImage("assets/icons/backarrow.png")),
        title: Text("Contact Information",
               style: primaryFont.copyWith(
               fontSize: 20,fontWeight: FontWeight.w800,color: AppColors.text,)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              const Center(
              child: Image(image: AssetImage("assets/icons/Monotonehealthplus.png"),
              height: 48,width: 48,fit: BoxFit.fill,)),
              const SizedBox(height: 15,),
              Text("PressureMed",
              style: primaryFont.copyWith(
              fontSize: 24,fontWeight: FontWeight.w800,color: AppColors.text,)),
              const SizedBox(height: 50,),
              ContactUsContainer(text: "+123 456 789", icon: "assets/icons/telephone.png"),
              const SizedBox(height: 10,),
              ContactUsContainer(text: "info@asklepios.ai", icon: "assets/icons/email.png"),
              const SizedBox(height: 10,),
              ContactUsContainer(
                text: "asklepios Tower,\nMjolnir Boulevard\n44815 New Haven Street\nLas Vegas, Nevada", 
                icon: "assets/icons/location.png"),
          ],
        ),
      ),
    );
  }
}