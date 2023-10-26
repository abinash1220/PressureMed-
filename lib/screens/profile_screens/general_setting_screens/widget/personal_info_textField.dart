import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';

class PersonalInfoTextField extends StatefulWidget {
  String prefix;
  String suffix;
  String text;
  PersonalInfoTextField({super.key,required this.prefix,required this.suffix,required this.text});

  @override
  State<PersonalInfoTextField> createState() => _PersonalInfoTextFieldState();
}

class _PersonalInfoTextFieldState extends State<PersonalInfoTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
      child: Container(
        height: 56,
        child: CupertinoTextField(
                  decoration:const BoxDecoration(color: AppColors.white, 
                  //border: Border.all(width: 1, color: Theme.of(context).dividerColor), 
                  borderRadius: BorderRadius.all(Radius.circular(16))),
                  placeholder: widget.text,
                  placeholderStyle:const TextStyle(color: AppColors.grey, fontSize: 18),
                  //cursorColor: appStore.isDarkModeOn ? white : blackColor,
                  prefix: Image(image: AssetImage(widget.prefix),height: 24,width: 24,) .paddingOnly(left: 10, right: 4),
                  suffix: Image(image: AssetImage(widget.suffix),height: 24,width: 24,).paddingOnly(left: 4, right: 10),
                  padding:const EdgeInsets.all(12),
                  style:const TextStyle(),
                ),
      ),
    );
  }
}