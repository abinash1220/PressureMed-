import 'package:calender_picker/date_picker_widget.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:pressuremed/constants/app_colors.dart';

class Datepickerwidget extends StatelessWidget {
  Datepickerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient:const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.white, AppColors.white]),
      ),
      height: 115,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CalenderPicker(
            DateTime.now(),
            initialSelectedDate: DateTime.now(),
            selectionColor: AppColors.blue,
            selectedTextColor: Colors.white,
            onDateChange: (date) {
              // postController.selectedDate = date;
              // postController.getPostsByDate(
              //     date: formatDate(date, [yyyy, "-", mm, "-", dd]));
              // postController.update();
            },
          ),
          const SizedBox(
            height: 4,
          )
        ],
      ),
    );
  }
}
