// import 'package:flutter/material.dart';
// import 'package:pressuremed/constants/app_colors.dart';

// class FAQScreen extends StatefulWidget {
//   const FAQScreen({super.key});

//   @override
//   State<FAQScreen> createState() => _FAQScreenState();
// }

// class _FAQScreenState extends State<FAQScreen> {
  
//   bool isExpanded = false;

//   int selectedIndex = 99999;

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       if (selectedIndex != index) {
//                         setState(() {
//                           selectedIndex = index;
//                         });
//                       } else {
//                         setState(() {
//                           selectedIndex = 99999;
//                         });
//                       }
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.only(
//                           left: 20, right: 20, top: 10, bottom: 10),
//                       child: Container(
//                         width: size.width,
//                         decoration: BoxDecoration(
//                           color: const Color.fromARGB(255, 214, 213, 213),
//                           borderRadius: BorderRadius.circular(7),
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.only(
//                               left: 10, right: 10, top: 10, bottom: 10),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Container(
//                                 width: size.width * 0.7,
//                                 child:
//                                     Text("fxfhthg"),
//                               ),
//                               selectedIndex != index
//                                   ? Icon(Icons.arrow_drop_down)
//                                   : Icon(Icons.arrow_drop_up),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   if (selectedIndex == index)
//                     Padding(
//                       padding:
//                           const EdgeInsets.only(left: 20, right: 20, top: 10),
//                       child: Container(
//                         width: size.width,
//                         decoration: BoxDecoration(
//                             color: Colors.grey.withOpacity(0.3),
//                             borderRadius: BorderRadius.circular(10)),
//                         child: Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Text("cfygu",
//                           ),
//                         ),
//                       ),
//                     )
//                 ],
//               ),
//       ),
//     );
//   }
// }