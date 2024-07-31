// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happy_ping/local_notifications.dart';
import 'package:happy_ping/onboarding/name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static int smile_count = 0;
  late String value;
  CountDownController timerController = CountDownController();

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Color(0xFFE0FFC0),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80, left: 20),
                    child: Text(
                      "Hey, ${Name().get_name()}!",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80, right: 20),
                    child: Image(
                      image: AssetImage('assets/logo.png'),
                      height: screenHeight*0.05,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFF1B262C),
                  ),
                  width: screenWidth*0.95,
                  height: screenHeight*0.24,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: screenHeight*0.025),
                      Text(
                        "YOUR SMILE COUNT TODAY IS",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color(0xffE6FFCD)),
                      ),
                      Text(
                        smile_count.toString(),
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 90,
                          color: Color(0xFFDEF9C4),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    width: screenWidth*0.95,
                    height: screenHeight*0.24,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green[200],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Did you know?",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Happiness boosts your immune system. Positive emotions and optimism strengthen immunity, \nhelping you fight illnesses. Joy \nand positivity contribute to better mental and physical health.",
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      width: screenWidth* 0.95,
                      height: screenHeight*0.3,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green[200],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(height: screenHeight*0.02,),
                              Text(
                                "Next Happy Ping in :",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Center(
                                    child: CircularCountDownTimer(
                                      height: screenHeight*0.2,
                                      width: screenWidth*0.3,
                                      duration: 15,
                                      fillColor: Color(0xFF1B262C),
                                      ringColor: Color(0xFFDEF9C4),
                                      strokeCap: StrokeCap.round,
                                      textStyle: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black),
                                      strokeWidth: 10,
                                      controller: timerController,
                                      isTimerTextShown:  true,
                                      isReverse: true,
                                      onComplete: ()=>[LocalNotifications.showSimpleNotification(
                                          title: "HappyPing",
                                          body: "Smile, It's a new day",
                                          payload:
                                          "Smile, It's a new day"),
                                        setState(() {
                                        smile_count++;
                                        timerController.restart();
                                      })],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      width: screenWidth* 0.95,
                      height: screenHeight*0.09,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'nameToInfo');
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green[200],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Icon(
                                      Icons.edit,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "Edit your preferences",
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              )
                            ],
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 20),
                    child: SizedBox(
                      width: screenWidth * 0.95,
                      height: screenHeight * 0.08,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green[200],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Icon(
                                      Icons.info,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "About",
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ),
                  )
                ],
              ),
            ],

          ),
        ));
  }
}
