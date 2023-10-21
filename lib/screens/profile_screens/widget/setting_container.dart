import 'package:flutter/material.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';

class SettingContainer extends StatelessWidget {
  String text;
  Color color;
  String image;
  String icon;
  SettingContainer({super.key,required this.text,required this.image,required this.icon,required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
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
                     fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.text,)),
                  ],
                ),
                Row(
                  children: [
                        Image(image: AssetImage(image))
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