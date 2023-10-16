import 'package:flutter/material.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';
import 'package:pressuremed/screens/onboarding_screen/widget/page_view.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.backgroundColor,
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(70),
         child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const Icon(Icons.arrow_back_ios,color: Colors.black,),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20,top: 15),
              child: Text("Skip",
              style: primaryFont.copyWith(
                fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.text,)),
            ),
          ],
         )),
         body: const PageViewExample(),
    );
  }
}