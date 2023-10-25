import 'package:flutter/material.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';

class PersonalInfoTextField extends StatefulWidget {
  const PersonalInfoTextField({super.key});

  @override
  State<PersonalInfoTextField> createState() => _PersonalInfoTextFieldState();
}

class _PersonalInfoTextFieldState extends State<PersonalInfoTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
              height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 10),
                        child: TextField(
                          //controller: usernamecontroller,
                          decoration: InputDecoration(
                              prefixIcon:const Image(image: AssetImage("assets/icons/user.png")),
                              suffixIcon: const Image(image: AssetImage("assets/icons/user.png")),
                              isCollapsed: true,
                              isDense: true,
                              border: InputBorder.none,
                              hintText: "Machile Jachson",
                              hintStyle: primaryFont.copyWith(
                                color: AppColors.grey,
                                fontWeight: FontWeight.w600,
                              )),
                        ),
                      ),
                    );
  }
}