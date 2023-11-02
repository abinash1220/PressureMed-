import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';
import 'package:pressuremed/screens/dash_board_screen/widget/dashboard_container.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
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
        title: Text("Report",
               style: primaryFont.copyWith(
               fontSize: 20,fontWeight: FontWeight.w800,color: AppColors.text,)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Michael",
                          style: primaryFont.copyWith(
                          fontSize: 30,fontWeight: FontWeight.w800,color: AppColors.text,)),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    const Center(child: Image(image: AssetImage("assets/images/Chart.png"))),
                    const SizedBox(height: 20,),
                    Text("Smart Stats",
                          style: primaryFont.copyWith(
                          fontSize: 16,fontWeight: FontWeight.w800,color: AppColors.text,)),
                    const SizedBox(height: 15,),      
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DashBoardContainer(value: "85",data: "kpm",type: "heart rate",color: AppColors.red),
                        DashBoardContainer(value: "85",data: "kpm",type: "heart rate",color: AppColors.red),
                        DashBoardContainer(value: "85",data: "kpm",type: "heart rate",color: AppColors.red),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 64,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text("View Report",
                            style: primaryFont.copyWith(
                            fontSize: 14,fontWeight: FontWeight.w800,color: AppColors.white,)),
                        ),
                        ),
                      ),
                    ), 
                    const SizedBox(height: 20,),
                    Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 64,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.text,
                            borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text("Share Report",
                            style: primaryFont.copyWith(
                            fontSize: 14,fontWeight: FontWeight.w800,color: AppColors.white,)),
                        ),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}