import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';
import 'package:pressuremed/screens/profile_screens/general_setting_screens/notification_screen.dart';
import 'package:pressuremed/screens/profile_screens/general_setting_screens/personal_info_edit_screen.dart';
import 'package:pressuremed/screens/profile_screens/help_&_support_screens/about_us_screen.dart';
import 'package:pressuremed/screens/profile_screens/help_&_support_screens/contact_us_screen.dart';
import 'package:pressuremed/screens/profile_screens/help_&_support_screens/faq_screen.dart';
import 'package:pressuremed/screens/profile_screens/widget/setting_container.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.backgroundColor,
        leading:InkWell(
          onTap: (){
            Get.back();
          },
          child: const Image(image: AssetImage("assets/icons/backarrow.png"))),
        title: Text("My Account",
               style: primaryFont.copyWith(
               fontSize: 20,fontWeight: FontWeight.w800,color: AppColors.text,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
              Container(
                height: 84,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.blue,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      const Image(image: AssetImage("assets/icons/ProfilePic.png")),
                      const SizedBox(width: 15,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Sanae Dekomori",
                            style: primaryFont.copyWith(
                            fontSize: 18,fontWeight: FontWeight.w800,color: AppColors.white,)),
                            const SizedBox(height: 10,),
                          Text("dekomori@fuwa.jp",
                            style: primaryFont.copyWith(
                            fontSize: 12,fontWeight: FontWeight.w600,color: AppColors.lightGrey,)),  
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Text("General Settings",
               style: primaryFont.copyWith(
               fontSize: 20,fontWeight: FontWeight.w800,color: AppColors.text,)),
               const SizedBox(height: 10,),
               InkWell(
                onTap: (){
                   Get.to(const PersonalInfoEditScreen());
                },
                 child: SettingContainer(
                  text: "Personal Info", 
                  image: "assets/icons/forwordios.png", 
                  icon: "assets/icons/Monotoneuser.png", 
                  color: AppColors.white),
               ),
               InkWell(
                onTap: (){
                  Get.to(const NotificationScreen());
                },
                child: SettingContainer(
                  text: "Notification", 
                  image: "assets/icons/forwordios.png", 
                  icon: "assets/icons/bell.png", 
                  color: AppColors.white),
              ),
              SettingContainer(
                text: "Preferences", 
                image: "assets/icons/forwordios.png", 
                icon: "assets/icons/gear.png", 
                color: AppColors.white),
              // SettingContainer(
              //   text: "Security", 
              //   image: "assets/icons/forwordios.png", 
              //   icon: "assets/icons/lock.png", 
              //   color: AppColors.white),
              const SizedBox(height: 20,),
              Text("Accessibility",
               style: primaryFont.copyWith(
               fontSize: 20,fontWeight: FontWeight.w800,color: AppColors.text,)),
               const SizedBox(height: 10,),
               SettingContainer(
                text: "Language", 
                image: "assets/icons/forwordios.png", 
                icon: "assets/icons/flag.png", 
                color: AppColors.white),
              SettingContainer(
                text: "Dark Mode", 
                image: "assets/icons/forwordios.png", 
                icon: "assets/icons/eye.png", 
                color: AppColors.white),
               const SizedBox(height: 20,),
              Text("Help & Support",
               style: primaryFont.copyWith(
               fontSize: 20,fontWeight: FontWeight.w800,color: AppColors.text,)),
               const SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  Get.to(const AboutUsScreen());
                },
                child: SettingContainer(
                  text: "About", 
                  image: "assets/icons/forwordios.png", 
                  icon: "assets/icons/question.png", 
                  color: AppColors.white),
              ),
              InkWell(
                onTap: (){
                  Get.to(const FAQScreen());
                },
                child: SettingContainer(
                  text: "FAQ Center", 
                  image: "assets/icons/forwordios.png", 
                  icon: "assets/icons/chat.png", 
                  color: AppColors.white),
              ),
              InkWell(
                onTap: (){
                  Get.to(const ContactUsScreen());
                },
                child: SettingContainer(
                  text: "Contact Us", 
                  image: "assets/icons/forwordios.png", 
                  icon: "assets/icons/telephone.png", 
                  color: AppColors.white),
              ),
                const SizedBox(height: 20,),
              Text("Sign Out",
               style: primaryFont.copyWith(
               fontSize: 20,fontWeight: FontWeight.w800,color: AppColors.text,)),
               const SizedBox(height: 10,),
              SettingContainer(
                text: "Sign Out", 
                image: "assets/icons/forwordios.png", 
                icon: "assets/icons/bottomright.png", 
                color: AppColors.white),
                const SizedBox(height: 20,),
              Text("Danger Zone",
               style: primaryFont.copyWith(
               fontSize: 20,fontWeight: FontWeight.w800,color: AppColors.text,)),
                Padding(
      padding: const EdgeInsets.only(top: 20,bottom: 20),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.redAccent,
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
                        color: AppColors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:const Center(
                        child: Image(image: AssetImage("assets/icons/trash.png"),color: AppColors.text,),
                      ),
                    ),
                    const SizedBox(width: 15,),
                    Text("Delete Account",
                     style: primaryFont.copyWith(
                     fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.text,)),
                  ],
                ),
                const Row(
                  children: [
                        Image(image: AssetImage("assets/icons/forwordios.png"))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),  
              
          ],
        ),
      ),
    );
  }
}