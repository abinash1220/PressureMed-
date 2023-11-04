import 'package:flutter/material.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';

class DashBoardContainer extends StatelessWidget {
  String value;
  String data;
  String type;
  Color color;
  DashBoardContainer({super.key,required this.color,required this.data,required this.type,required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 82,
      width: 101,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(value,
                 style: primaryFont.copyWith(
                 fontSize: 36,fontWeight: FontWeight.w800,color: AppColors.text,)),
               Text(data,
                 style: primaryFont.copyWith(
                 fontSize: 14,fontWeight: FontWeight.w600,color: AppColors.textGrey,)),   
            ],
          ),
          Row(
            children: [
               Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(2)
                ),
               ),
               
               Text(type,
                 style: primaryFont.copyWith(
                 fontSize: 11,fontWeight: FontWeight.w500,color: AppColors.grey,)),   
            ],
          ),
        ],
      ),
    );
  }
}