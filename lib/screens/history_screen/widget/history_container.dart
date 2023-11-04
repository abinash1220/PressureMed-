import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';
import 'package:pressuremed/screens/report_screen/report_screen.dart';
import 'package:square_percent_indicater/square_percent_indicater.dart';

class HistoryContainer extends StatefulWidget {
  const HistoryContainer({super.key});

  @override
  State<HistoryContainer> createState() => _HistoryContainerState();
}

class _HistoryContainerState extends State<HistoryContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
           height: 150,
           width: double.infinity,
           decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow:const [
              BoxShadow(
                blurRadius: 5.0,
                spreadRadius: 2.0,
                color: AppColors.borderGrey
              )
            ]
           ),
           child: Padding(
             padding: const EdgeInsets.only(top: 10,bottom: 10),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Image(image: AssetImage("assets/icons/document.png")),
                      Row(
                        children: [
                        const Image(image: AssetImage("assets/icons/date.png")),
                        const SizedBox(width: 5,),
                        Text("11 oct 2023",
                                   style: primaryFont.copyWith(
                                   fontSize: 14,fontWeight: FontWeight.w600,
                                   color:AppColors.grey,
                          )
                         ),
                         const SizedBox(width: 10,),
                          const Image(image: AssetImage("assets/icons/historyclock.png")), 
                          const SizedBox(width: 5,),
                           Text("1:41 PM",
                            style: primaryFont.copyWith(
                            fontSize: 14,fontWeight: FontWeight.w600,
                            color:AppColors.grey,
                         )
                       ),
                        ],
                      ),
                    Container()
                       
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    Get.to(const ReportScreen());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                       Column(
                         children: [
                           SquarePercentIndicator(
                              width: 64,
                              height: 64,
                              startAngle: StartAngle.bottomRight,
                              reverse: true,
                              borderRadius: 12,
                              shadowWidth: 5,
                              progressWidth: 5,
                              shadowColor: AppColors.lightGrey,
                              progressColor: AppColors.blue,
                              progress: 0.64,
                               child: Center(
                                 child: Text(
                                       "85",
                                       style: primaryFont.copyWith(
                                   fontSize: 36,fontWeight: FontWeight.w800,
                                   color:AppColors.text,)),
                                     ),
                             ),
                             const SizedBox(height: 15,),
                             Text("SYS",
                                   style: primaryFont.copyWith(
                                   fontSize: 12,fontWeight: FontWeight.w800,
                                   color:AppColors.text,)),
                         ],
                       ),
                        Column(
                         children: [
                           SquarePercentIndicator(
                              width: 64,
                              height: 64,
                              startAngle: StartAngle.bottomRight,
                              reverse: true,
                              borderRadius: 12,
                              shadowWidth: 5,
                              progressWidth: 5,
                              shadowColor: AppColors.lightGrey,
                              progressColor: AppColors.blue,
                              progress: 0.54,
                               child: Center(
                                 child: Text(
                                       "85",
                                       style: primaryFont.copyWith(
                                   fontSize: 36,fontWeight: FontWeight.w800,
                                   color:AppColors.text,)),
                                     ),
                             ),
                             const SizedBox(height: 15,),
                             Text("DIA",
                                   style: primaryFont.copyWith(
                                   fontSize: 12,fontWeight: FontWeight.w800,
                                   color:AppColors.text,)),
                         ],
                       ),
                        Column(
                         children: [
                           SquarePercentIndicator(
                              width: 64,
                              height: 64,
                              startAngle: StartAngle.bottomRight,
                              reverse: true,
                              borderRadius: 12,
                              shadowWidth: 5,
                              progressWidth: 5,
                              shadowColor: AppColors.lightGrey,
                              progressColor: AppColors.blue,
                              progress: 0.84,
                               child: Center(
                                 child: Text(
                                       "85",
                                       style: primaryFont.copyWith(
                                   fontSize: 36,fontWeight: FontWeight.w800,
                                   color:AppColors.text,)),
                                     ),
                             ),
                             const SizedBox(height: 15,),
                             Text("HR",
                                   style: primaryFont.copyWith(
                                   fontSize: 12,fontWeight: FontWeight.w800,
                                   color:AppColors.text,)),
                         ],
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