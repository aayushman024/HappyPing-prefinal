// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happy_ping/api/firebase_api.dart';
import 'package:happy_ping/firebase_options.dart';
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

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double yourWidth = width * 0.95;
    return Scaffold(
        backgroundColor: Color(0xFFDEF9C4),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80, left: 20),
                    child: Text(
                      "Hey, " + Name().get_name() + "!",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, right: 20),
                    child: Image(
                      image: AssetImage('assets/logo.png'),
                      height: 40,
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
                  width: 400,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
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
                    width: yourWidth,
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
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
                      width: MediaQuery.of(context).size.width * 0.95,
                      height: 150,
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
                                  Container(
                                    width: 180,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFDEF9C4),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: TimerCountdown(
                                        format:
                                            CountDownTimerFormat.minutesSeconds,
                                        endTime: DateTime.now().add(
                                            Duration(minutes: 0, seconds: 30)),
                                        timeTextStyle: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                        colonsTextStyle:
                                            TextStyle(color: Colors.black),
                                        descriptionTextStyle:
                                            TextStyle(color: Colors.black),
                                        onEnd: ()=>[LocalNotifications
                                          .showSimpleNotification(
                                          title: "HappyPing",
                                          body: "Smile, It's a new day",
                                          payload:
                                          "Smile, It's a new day"),setState(() {
                                            smile_count++;
                                          })],
                                      ),
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
                      width: MediaQuery.of(context).size.width * 0.95,
                      height: 70,
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
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.95,
                      height: 70,
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
                              )
                            ],
                          )),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
