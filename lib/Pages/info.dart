// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happy_ping/Pages/home.dart';

class InfoCollection extends StatefulWidget {

  InfoCollection({super.key});

  Color myBackground = Color(0xFFE0FFC0);
  final _keyTimerUp = GlobalKey<CustomRadioButtonState>();

  @override
  State<InfoCollection> createState() => _InfoCollectionState();
}

class _InfoCollectionState extends State<InfoCollection> {

  TimeOfDay _time = TimeOfDay(hour: 7, minute: 15);

  void _selectTimeMorning() async {
    final TimeOfDay? newTime =
    await showTimePicker(context: context, initialTime: _time);
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFDEF9C4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  'JUST A FEW MORE STEPS...',
                  style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w800),
                )),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 15, left: 20, bottom: 0),
              child: Text(
                "Select your frequency of smiles",
                style: GoogleFonts.poppins(fontSize: 19, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Row(
            children: [
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 20),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Wake up time",
                      style:
                      GoogleFonts.poppins(fontSize: 19, fontWeight: FontWeight.bold),
                    )),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: Container(
                      width: screenWidth*0.2,
                      height: screenHeight*0.045,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          _time.format(context),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 15),
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green[400]),
                      child: Text(
                        'SELECT TIME',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 20),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Sleeping time",
                      style:
                      GoogleFonts.poppins(fontSize: 19, fontWeight: FontWeight.bold),
                    )),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: Container(
                      width: screenWidth*0.2,
                      height: screenHeight*0.045,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          _time.format(context),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 15),
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green[400]),
                      child: Text(
                        'SELECT TIME',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight*0.2),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, CupertinoPageRoute(builder: (_) => HomeScreen()));
              },
              style: ButtonStyle(backgroundColor: WidgetStateProperty.all
                (Color(0xff1B262C)),
                  padding: WidgetStateProperty.all(EdgeInsets.fromLTRB(100, 20, 100, 20)),
                  shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
              ),
              child: Text(
                "CONTINUE",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}