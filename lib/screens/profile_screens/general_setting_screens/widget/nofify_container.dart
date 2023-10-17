import 'package:flutter/material.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';

class NotifyContainer extends StatelessWidget {
  String title;
  String content;
  NotifyContainer({super.key,required this.title,required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5,right: 5),
      child: Container(
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(title,
               style: primaryFont.copyWith(
               fontSize: 14,fontWeight: FontWeight.w700,color: AppColors.text,)),
              Text(content,
               style: primaryFont.copyWith(
               fontSize: 11,fontWeight: FontWeight.w500,color: AppColors.text,height: 1.5)), 
            ],
          ),
        ),
      ),
    );
  }
}