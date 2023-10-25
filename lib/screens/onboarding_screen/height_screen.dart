import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';
import 'package:pressuremed/hooks/button_container.dart';
import 'package:pressuremed/screens/bottom_navbar/bottom_navbar_screen.dart';
import 'package:pressuremed/screens/profile_screens/profile_screen.dart';

class HeightScreen extends StatefulWidget {
  const HeightScreen({super.key});

  @override
  State<HeightScreen> createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(70),
         child: AppBar(
          elevation: 0,
          backgroundColor: AppColors.backgroundColor,
          leading: InkWell(
            onTap: (){
               Get.back();
            },
            child: const Icon(Icons.arrow_back_ios,color: Colors.black,)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20,top: 15),
              child: Text("Skip",
              style: primaryFont.copyWith(
                fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.text,)),
            ),
          ],
         )),
         body: Padding(
           padding: const EdgeInsets.all(20.0),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text("What is your height?",
                          style: primaryFont.copyWith(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          color: AppColors.text,)),
                ],
               ),
               Padding(
                  padding:const EdgeInsets.only(bottom: 50),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Get.off(BottomBar(index: 2,));
                        },
                        child: NextContainer(
                        text: "Continue",
                        image: "assets/icons/arrowForword.png"),
                      ),
                    ],
                  ),
                ),
             ],
           ),
         ),
    );
  }
}