import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';
import 'package:pressuremed/controllers/history_controller.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {

  final historyController = Get.find<HistoryController>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.backgroundColor,
        leading:InkWell(
          onTap: (){
            Get.back();
          },
          child: const Image(image: AssetImage("assets/icons/backarrow.png"))),
        title: Text("History",
               style: primaryFont.copyWith(
               fontSize: 20,fontWeight: FontWeight.w800,color: AppColors.text,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Obx( () =>
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.tapGrey,
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
            
                  Container(
                    height: 48,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        historyController.tapIndex.value == 0 ?
                        Expanded(
                          child: Container(
                            //width: 120,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.blue,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 3,color: AppColors.lightblueGrey)
                            ),
                            child: Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Text("Systolic",
                                             style: primaryFont.copyWith(
                                             fontSize: 14,fontWeight: FontWeight.w700,
                                             color:historyController.tapIndex.value == 0 ?AppColors.white :AppColors.text,)),
                              ),
                            ),
                          ),
                        ) : Expanded(
                          child: InkWell(
                             onTap: (){
                                 historyController.tapIndex(0);
                              },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text("Systolic",
                                     style: primaryFont.copyWith(
                                     fontSize: 14,fontWeight: FontWeight.w700,
                                     color:AppColors.text,)),
                            ),
                          ),
                        ),
                     historyController.tapIndex.value == 1 ?
                     Expanded(
                       child: Container(
                           //width: 120,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.blue,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 3,color: AppColors.lightblueGrey)
                            ),
                         child: Expanded(
                           child: Container(
                            alignment: Alignment.center,
                             child: Text("Diastolic",
                             style: primaryFont.copyWith(
                             fontSize: 14,fontWeight: FontWeight.w700,
                             color:historyController.tapIndex.value == 1 ?AppColors.white :AppColors.text,)),
                           ),
                         ),
                       ),
                     ) : Expanded(
                       child: InkWell(
                           onTap: (){
                               historyController.tapIndex(1);
                            },
                         child: Text("Diastolic",
                             style: primaryFont.copyWith(
                             fontSize: 14,fontWeight: FontWeight.w700,
                             color:AppColors.text,)),
                       ),
                     ),
                     historyController.tapIndex.value == 2 ?
                     Expanded(
                       child: Container(
                        //width: 120,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.blue,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 3,color: AppColors.lightblueGrey)
                            ),
                         child: Expanded(
                           child: Container(
                             alignment: Alignment.center,
                             child: Text("Heartrate",
                             style: primaryFont.copyWith(
                             fontSize: 14,fontWeight: FontWeight.w700,
                             color:historyController.tapIndex.value == 2 ?AppColors.white :AppColors.text,)),
                           ),
                         ),
                       ),
                     ) : Expanded(
                       child: InkWell(
                         onTap: (){
                                 historyController.tapIndex(2);
                              },
                         child: Padding(
                           padding: const EdgeInsets.only(right: 20),
                           child: Text("Heartrate",
                               style: primaryFont.copyWith(
                               fontSize: 14,fontWeight: FontWeight.w700,
                               color:AppColors.text,)),
                         ),
                       ),
                     ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}