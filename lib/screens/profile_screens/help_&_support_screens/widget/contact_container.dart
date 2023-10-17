import 'package:flutter/material.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';

class ContactUsContainer extends StatelessWidget {
  String text;
  String icon;
  ContactUsContainer({super.key,required this.text,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,right: 25),
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.borderGrey),
                  ),
                  child: Center(
                    child: Image(image: AssetImage(icon)),
                  ),
                ),
                const SizedBox(width: 15,),
                Text(text,
                 style: primaryFont.copyWith(
                 fontSize: 16,fontWeight: FontWeight.w500,color: AppColors.text,)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}