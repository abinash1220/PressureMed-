import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';
import 'package:pressuremed/screens/profile_screens/settings_screen.dart';

class ScheduleContainer extends StatefulWidget {
  String hrs;
  String text;
  String icon;
  ScheduleContainer({super.key,required this.text,required this.icon,required this.hrs});

  @override
  State<ScheduleContainer> createState() => _ScheduleContainerState();
}

class _ScheduleContainerState extends State<ScheduleContainer> {
 
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: double.infinity,
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
                        color: AppColors.containerGrey,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Image(image: AssetImage(widget.icon)),
                      ),
                    ),
                    const SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(widget.hrs,
                         style: primaryFont.copyWith(
                         fontSize: 24,fontWeight: FontWeight.w800,color: AppColors.text,)),
                         const SizedBox(height: 8,),
                         Text(widget.text,
                         style: primaryFont.copyWith(
                         fontSize: 14,fontWeight: FontWeight.w600,color: AppColors.grey,)),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                        Switch(
                            activeColor: AppColors.white,
                            activeTrackColor: AppColors.blue,
                            value: light,
                            onChanged: (bool value) {
                               setState(() {
                                light = value;
                            });
          },
        ),
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