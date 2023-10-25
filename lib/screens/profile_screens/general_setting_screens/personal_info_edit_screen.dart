import 'package:flutter/material.dart';
import 'package:pressuremed/constants/app_colors.dart';

class PersonalInfoEditScreen extends StatefulWidget {
  const PersonalInfoEditScreen({super.key});

  @override
  State<PersonalInfoEditScreen> createState() => _PersonalInfoEditScreenState();
}

class _PersonalInfoEditScreenState extends State<PersonalInfoEditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           Container(
            height: 187,
            width: double.infinity,
            decoration:const BoxDecoration(
              color: AppColors.text,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24))
            ),
           ),
           
           
        ],
      ),
    );
  }
}