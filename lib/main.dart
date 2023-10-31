import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pressuremed/controllers/history_controller.dart';
import 'package:pressuremed/screens/splash_screens/splash_screen.dart';

void main() {
  Get.put(HistoryController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}

