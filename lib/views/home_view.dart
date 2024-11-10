import 'dart:ui';

import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:hr_app/components/profile_card.dart';
import 'package:hr_app/components/schedule_list.dart';
import 'package:hr_app/components/sign_widget.dart';
import 'package:hr_app/components/statistics_cards.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: appBar(),
      body: SafeArea(
        child: Stack(
          children: [
            Stack(
              children: [
                // Gradient background
                Container(
                  height: 320,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.green[300]!,
                        Colors.green[700]!,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
                // Blur effect
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    color: Colors
                        .transparent, // Maintains transparency while applying blur
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // SizedBox(
                  //   height: 8,
                  // ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          'Prism House',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.menu),
                    ],
                  ),
                  ProfileCard(),
                  // SizedBox(
                  //   height: 8,
                  // ),
                  SignWidget(),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  Text(
                    'Today\'s Schedule',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  DatePicker(
                    DateTime.now(),
                    initialSelectedDate: DateTime.now(),
                    selectionColor: Colors.lightGreen,
                    selectedTextColor: Colors.white,
                    height: 88,
                    daysCount: 12,
                    // onDateChange: (date) {
                    //   // New date selected
                    //   setState(() {
                    //     _selectedValue = date;
                    //   });
                    // },
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  ScheduleList(),
                  Text("Statistics",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  StatisticsCards(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/* 

Stack(
        children: [
          // Gradient background
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.green[300]!,
                  Colors.green[700]!,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          // Blur effect
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              color: Colors.transparent, // Maintains transparency while applying blur
            ),
          ),
        ],
      ),
*/