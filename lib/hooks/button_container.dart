import 'package:flutter/material.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';

class NextContainer extends StatelessWidget {
  String text;
  String image;
  NextContainer({super.key,required this.text,required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text,
              style: primaryFont.copyWith(
                fontSize: 16,fontWeight: FontWeight.w700,color: AppColors.white,)),
                const SizedBox(width: 15,),
                Image(image: AssetImage(image))
            ],
          ),
        ),
      ),
    );
  }
}