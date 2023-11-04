// import 'package:flutter/material.dart';

// class DatePicCalendar extends StatefulWidget {
//   const DatePicCalendar({super.key});

//   @override
//   State<DatePicCalendar> createState() => _DatePicCalendarState();
// }

// class _DatePicCalendarState extends State<DatePicCalendar> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: <Widget>[
//         DatePicker(
//         DateTime.now(),
//         initialSelectedDate: DateTime.now(),
//         selectionColor: Colors.black,
//         selectedTextColor: Colors.white,
//         onDateChange: (date) {
//           // New date selected
//           setState(() {
//             _selectedValue = date;
//           });
//         },
//       ),
//     ],
// ) ;
//   }
// }