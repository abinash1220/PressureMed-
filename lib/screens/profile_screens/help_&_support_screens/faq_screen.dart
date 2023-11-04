import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({super.key});

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  
  int selectedIndex = 9999;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(182),
         child: Container(
            height: 182,
            width: double.infinity,
            decoration:const BoxDecoration(
              color: AppColors.text,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24))
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      Get.back();
                    },
                    child: const Icon(Icons.arrow_back_ios,color: AppColors.white,)),
                  const SizedBox(height: 20,),
                  Text("FAQ Contents",
                  style: primaryFont.copyWith(
                  fontSize: 30,fontWeight: FontWeight.w800,color: AppColors.white,)),
                ],
              ),
            ),
           ),
         ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Container(
                      height: 55,
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
                              hintText: "Search",
                              hintStyle: primaryFont.copyWith(
                                color: AppColors.grey,
                                fontWeight: FontWeight.w600,
                              )),
                        ),
                      ),
                    ),
                ),
                InkWell(
                  onTap: () {
                    if (selectedIndex != index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    } else {
                      setState(() {
                        selectedIndex = 99999;
                      });
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 10),
                    child: Container(
                      height: 80,
                      width: size.width,
                      decoration: BoxDecoration(
                        color:AppColors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, top: 10, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: size.width * 0.6,
                              child: Text("How does Asklepios work?",
                                     style: primaryFont.copyWith(
                                     fontSize: 16,fontWeight: FontWeight.w800,
                                     color: AppColors.text,)),
                            ),
                            // selectedIndex != index
                            Container(
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: AppColors.text),
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child:const Image(image: AssetImage("assets/icons/downarrow.png")))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                if (selectedIndex == index)
                InkWell(
                  onTap: (){
                    setState(() {
                        selectedIndex = 99999;
                      });
                  },
                  child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                      child: Container(
                        height: 200,
                        width: size.width,
                        decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: AppColors.lightblueGrey,width: 5)
                            ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                   Text("How does Asklepios work?",
                                       style: primaryFont.copyWith(
                                       fontSize: 16,fontWeight: FontWeight.w800,
                                       color: AppColors.white,)),
                                   Container(
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: AppColors.white),
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child:const Image(image: AssetImage("assets/icons/uparrow.png"))),
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Text("Asklepios AI is a personalized healthcare AI solutions app that utilizes artificial intelligence to provide support for everyone.",
                                  style: primaryFont.copyWith(
                                  fontSize: 16,fontWeight: FontWeight.w500,
                                  color: AppColors.white,)),
                            ],
                          ),
                        ),
                      ),
                    ),
                )
              ],
            );
          }),
    );
  }
}
