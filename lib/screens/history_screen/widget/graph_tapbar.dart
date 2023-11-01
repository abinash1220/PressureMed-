import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';
import 'package:pressuremed/controllers/history_controller.dart';

class GraphTapbar extends StatefulWidget {
  const GraphTapbar({super.key});

  @override
  State<GraphTapbar> createState() => _GraphTapbarState();
}

class _GraphTapbarState extends State<GraphTapbar> {

  final historyController = Get.find<HistoryController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Obx( () =>
             Container(
               height: 35,
               width: double.infinity,
               decoration: BoxDecoration(
                color: AppColors.containerGrey,
                borderRadius: BorderRadius.circular(10), 
               ),
               child: Row(
                children: [
                        historyController.graphtapIndex.value == 0 ?
                        Expanded(
                          child: Container(
                            height: 35,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.text,
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Text("Daily",
                              style: primaryFont.copyWith(
                              fontSize: 14,fontWeight: FontWeight.w700,
                              color:historyController.graphtapIndex.value == 0 ?AppColors.white : AppColors.text,)),
                          ),
                        ) : Expanded(
                            child: InkWell(
                               onTap: (){
                                  historyController.graphtapIndex(0);
                                },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text("Daily",
                                    style: primaryFont.copyWith(
                                    fontSize: 14,fontWeight: FontWeight.w700,
                                    color:AppColors.text,)),
                              ),
                          ),
                        ),
                        historyController.graphtapIndex.value == 1 ?
                        Expanded(
                          child: Container(
                             height: 35,
                             alignment: Alignment.center,
                             decoration: BoxDecoration(
                              color: AppColors.text,
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Text("Week",
                              style: primaryFont.copyWith(
                              fontSize: 14,fontWeight: FontWeight.w700,
                              color:historyController.graphtapIndex.value == 1 ?AppColors.white : AppColors.text,)),
                          ),
                        ) : Expanded(
                            child: InkWell(
                               onTap: (){
                                  historyController.graphtapIndex(1);
                                },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text("Week",
                                    style: primaryFont.copyWith(
                                    fontSize: 14,fontWeight: FontWeight.w700,
                                    color:AppColors.text,)),
                              ),
                          ),
                        ),
                        historyController.graphtapIndex.value == 2 ?
                        Expanded(
                          child: Container(
                             height: 35,
                             alignment: Alignment.center,
                             decoration: BoxDecoration(
                              color: AppColors.text,
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Text("Month",
                              style: primaryFont.copyWith(
                              fontSize: 14,fontWeight: FontWeight.w700,
                              color:historyController.graphtapIndex.value == 2 ?AppColors.white : AppColors.text,)),
                          ),
                        ) : Expanded(
                            child: InkWell(
                               onTap: (){
                                  historyController.graphtapIndex(2);
                                },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text("Month",
                                    style: primaryFont.copyWith(
                                    fontSize: 14,fontWeight: FontWeight.w700,
                                    color:AppColors.text,)),
                              ),
                          ),
                        ), 
                        historyController.graphtapIndex.value == 3 ?
                        Expanded(
                          child: Container(
                             height: 35,
                             alignment: Alignment.center,
                             decoration: BoxDecoration(
                              color: AppColors.text,
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Text("Year",
                              style: primaryFont.copyWith(
                              fontSize: 14,fontWeight: FontWeight.w700,
                              color:historyController.graphtapIndex.value == 3 ?AppColors.white : AppColors.text,)),
                          ),
                        ) : Expanded(
                            child: InkWell(
                               onTap: (){
                                  historyController.graphtapIndex(3);
                                },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text("Year",
                                    style: primaryFont.copyWith(
                                    fontSize: 14,fontWeight: FontWeight.w700,
                                    color:AppColors.text,)),
                              ),
                          ),
                        ), 
                        historyController.graphtapIndex.value == 4 ?
                        Expanded(
                          child: Container(
                             height: 35,
                             alignment: Alignment.center,
                             decoration: BoxDecoration(
                              color: AppColors.text,
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Text("All",
                              style: primaryFont.copyWith(
                              fontSize: 14,fontWeight: FontWeight.w700,
                              color:historyController.graphtapIndex.value == 4 ?AppColors.white : AppColors.text,)),
                          ),
                        ) : Expanded(
                            child: InkWell(
                               onTap: (){
                                  historyController.graphtapIndex(4);
                                },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text("All",
                                    style: primaryFont.copyWith(
                                    fontSize: 14,fontWeight: FontWeight.w700,
                                    color:AppColors.text,)),
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