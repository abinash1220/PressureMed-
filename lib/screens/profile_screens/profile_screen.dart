import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';
import 'package:pressuremed/screens/onboarding_screen/patient_info_screen.dart';
import 'package:pressuremed/screens/profile_screens/help_&_support_screens/widget/about_container.dart';
import 'package:pressuremed/screens/profile_screens/widget/profile_container.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("PressureMed",
                  style: primaryFont.copyWith(
                  fontSize: 24,fontWeight: FontWeight.w800,color: AppColors.white,)),
                const Image(image: AssetImage("assets/icons/Monotonehealthplus.png")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               // Container(height: 30,width: 200, color: AppColors.white,)
                Container(
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 10),
                      child: TextField(
                        //controller: usernamecontroller,
                        decoration: InputDecoration(
                            isCollapsed: true,
                            isDense: true,
                            border: InputBorder.none,
                            hintText: "Search",
                            hintStyle: primaryFont.copyWith(
                              color: AppColors.grey,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  InkWell(
                    onTap: (){
                      Get.to(const PatientInfoScreen());
                    },
                    child: Container(
                      height: 40,
                      width: 60,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Image(image: AssetImage("assets/icons/user.png")),
                           Padding(
                             padding: const EdgeInsets.only(bottom: 8),
                             child: Text(" +",
                               style: primaryFont.copyWith(
                               fontSize: 24,fontWeight: FontWeight.w800,color: AppColors.text,)),
                           ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
            Container(
              height: 530,
              width: double.infinity,
              decoration:const BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                      Row(
                        children: [
                          Text("Select  Profile",
                           style: primaryFont.copyWith(
                           fontSize: 16,fontWeight: FontWeight.w800,color: AppColors.text,)),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      ProfileContainer(
                        gender: "Male",
                        text: "50 years", 
                        image: "assets/icons/gear.png", 
                        icon: "assets/icons/usernurse.png", 
                        title: "Michael Jackson",),
                         ProfileContainer(
                        gender: "Male",
                        text: "50 years", 
                        image: "assets/icons/gear.png", 
                        icon: "assets/icons/usernurse.png", 
                        title: "Michael Jackson",),
                         ProfileContainer(
                        gender: "Male",
                        text: "50 years", 
                        image: "assets/icons/gear.png", 
                        icon: "assets/icons/usernurse.png", 
                        title: "Michael Jackson",),
                         ProfileContainer(
                        gender: "Male",
                        text: "50 years", 
                        image: "assets/icons/gear.png", 
                        icon: "assets/icons/usernurse.png", 
                        title: "Michael Jackson",),
                         ProfileContainer(
                        gender: "Male",
                        text: "50 years", 
                        image: "assets/icons/gear.png", 
                        icon: "assets/icons/usernurse.png", 
                        title: "Michael Jackson",),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}