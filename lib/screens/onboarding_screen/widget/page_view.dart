import 'package:flutter/material.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/constants/app_fonts.dart';
import 'package:pressuremed/hooks/next_container.dart';

class PageViewExample extends StatefulWidget {
  const PageViewExample({super.key});

  @override
  State<PageViewExample> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(24.0),
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
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Column(
                  children: [
                    NextContainer(),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Center(
          child: Text('Second Page'),
        ),
        const Center(
          child: Text('Third Page'),
        ),
        const Center(
          child: Text('Fourth Page'),
        ),
      ],
    );
  }
}