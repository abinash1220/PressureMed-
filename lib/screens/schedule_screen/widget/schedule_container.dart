import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';
import 'package:pressuremed/screens/profile_screens/settings_screen.dart';

class ScheduleContainer extends StatelessWidget {
  String gender;
  String hrs;
  String text;
  String image;
  String icon;
  ScheduleContainer({super.key,required this.text,required this.image,required this.icon,required this.hrs,required this.gender});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: 350,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        color: AppColors.lightblueGrey,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Image(image: AssetImage(icon)),
                      ),
                    ),
                    const SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(hrs,
                         style: primaryFont.copyWith(
                         fontSize: 16,fontWeight: FontWeight.w800,color: AppColors.text,)),
                         const SizedBox(height: 8,),
                         Row(
                           children: [
                             Text(gender,
                             style: primaryFont.copyWith(
                             fontSize: 12,fontWeight: FontWeight.w600,color: AppColors.grey,)),
                             const SizedBox(width: 10,),
                             const Image(image: AssetImage("assets/icons/Atom.png")),
                             const SizedBox(width: 10,),
                             Text(text,
                             style: primaryFont.copyWith(
                             fontSize: 12,fontWeight: FontWeight.w600,color: AppColors.grey,)),
                           ],
                         ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                        InkWell(
                          onTap: (){
                            Get.to(const SettingScreen());
                          },
                          child: Image(image: AssetImage(image)))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}