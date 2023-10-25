import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';
import 'package:pressuremed/hooks/button_container.dart';
import 'package:pressuremed/screens/onboarding_screen/gender_screen.dart';

class PatientInfoScreen extends StatefulWidget {
  const PatientInfoScreen({super.key});

  @override
  State<PatientInfoScreen> createState() => _PatientInfoScreenState();
}

class _PatientInfoScreenState extends State<PatientInfoScreen> {

  final fromDateController = TextEditingController();
  final toDateController = TextEditingController();

  DateTime date1 = DateTime.now();
  DateTime date = DateTime.now();

  String selectdt = formatDate(DateTime.now().subtract(const Duration(days: 0)), [
    dd,
    "-",
    mm,
    "-",
    yyyy,
  ]);

  _showDatePicker(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2030),
        builder: ((context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme:const ColorScheme.light(
                primary: AppColors.blue,
                onPrimary: Colors.white,
                onSurface: Colors.blue,
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  primary:const Color.fromARGB(255, 42, 59, 158),
                ),
              ),
            ),
            child: child!,
          );
        }));

    if (picked != null) {
      setState(() {
        date1 = picked;
        selectdt = formatDate(date1.subtract(const Duration(days: 0)), [
          dd,
          "-",
          mm,
          "-",
          yyyy,
        ]);
      });
      // payoutController.walletHistory(
      //     startDate: selectdt, endDate: selectdt1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.backgroundColor,
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(70),
         child: AppBar(
          elevation: 0,
          backgroundColor: AppColors.backgroundColor,
          leading: InkWell(
            onTap: (){
               Get.back();
            },
            child: const Icon(Icons.arrow_back_ios,color: Colors.black,)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20,top: 15),
              child: Text("Skip",
              style: primaryFont.copyWith(
                fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.text,)),
            ),
          ],
         )),
         body: Padding(
           padding: const EdgeInsets.all(20.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Enter Patient info",
                    style: primaryFont.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: AppColors.text,)),
                    const SizedBox(height: 25,),
                    Text("First Name",
                    style: primaryFont.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey,)),
                    const SizedBox(height: 25,),
                    Container(
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
                    ),
                    const SizedBox(height: 25,),
                    Text("Last Name",
                    style: primaryFont.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey,)),
                    const SizedBox(height: 25,),
                    Container(
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
                    ),
                    const SizedBox(height: 25,),
                    Text("Date Of Birth",
                    style: primaryFont.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey,)),
                    const SizedBox(height: 25,),
                    InkWell(
                      onTap: (){
                        _showDatePicker(context);
                      },
                      child: Container(
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
                            readOnly: true,
                            decoration: InputDecoration(
                                isCollapsed: true,
                                isDense: true,
                                border: InputBorder.none,
                                hintText: selectdt,
                                hintStyle: primaryFont.copyWith(
                                  color: AppColors.grey,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                 Padding(
                  padding:const EdgeInsets.only(bottom: 50),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Get.to(const GenderScreen());
                        },
                        child: NextContainer(
                        text: "Continue",
                        image: "assets/icons/arrowForword.png"),
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