// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happy_ping/Pages/home.dart';

class InfoCollection extends StatefulWidget {
  InfoCollection({super.key});

  Color myBackground = Color(0xFFDEF9C4);

  @override
  State<InfoCollection> createState() => _InfoCollectionState();
}

class _InfoCollectionState extends State<InfoCollection> {
  TimeOfDay _time = TimeOfDay(hour: 7, minute: 15);

  void _selectTime() async {
    final TimeOfDay? newTime =
    await showTimePicker(context: context, initialTime: _time);
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }

  void onPressed() {}

  double _currentSliderValue = 20;
  bool isPressedfirst = false;
  bool isPressedsecond = false;
  bool isPressedthird = false;
  bool isPressedfourth = false;
  bool isPressedfifth = false;
  bool isPressedsixth = false;
  bool isPressedseven = false;
  bool isPressedeigth = false;
  bool isPressedmale = false;
  bool isPressedfemale = false;
  bool isPressedtrans = false;

  @override
  Widget build(BuildContext context) {
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
                  style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w900),
                )),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 25),
              child: Text(
                "How old are you",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w500,
                    fontSize: 19,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ),
          SliderTheme(
            data: SliderThemeData(
              valueIndicatorColor: Colors.black,
              valueIndicatorShape: PaddleSliderValueIndicatorShape(),
            ),
            child: Slider(
              thumbColor: Color(0xffFFFFFF),
                inactiveColor: Color(0x335E5D5D),
                value: _currentSliderValue,
                max: 100,
                divisions: 100,
                activeColor: Colors.green[200],
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                }),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 15, left: 20, bottom: 0),
              child: Text(
                "Select your frequency of smiles",
                style: GoogleFonts.poppins(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (isPressedsecond ||
                              isPressedthird ||
                              isPressedfourth ||
                              isPressedfifth ||
                              isPressedsixth ||
                              isPressedseven ||
                              isPressedeigth) {
                            isPressedsecond = false;
                            isPressedthird = false;
                            isPressedfourth = false;
                            isPressedfifth = false;
                            isPressedsixth = false;
                            isPressedseven = false;
                            isPressedeigth = false;
                          }
                          isPressedfirst = !isPressedfirst;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(width: 0.3, color: Colors.black),
                          backgroundColor: isPressedfirst
                              ? Colors.green[400]
                              : Colors.green[200],
                          minimumSize: Size(80, 40)),
                      child: Text(
                        "10 min",
                        style: TextStyle(color: Colors.black),
                      ),
                      //minimumSize: Size(90, 40)),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (isPressedfirst ||
                                isPressedthird ||
                                isPressedfourth ||
                                isPressedfifth ||
                                isPressedsixth ||
                                isPressedseven ||
                                isPressedeigth) {
                              isPressedfirst = false;
                              isPressedthird = false;
                              isPressedfourth = false;
                              isPressedfifth = false;
                              isPressedsixth = false;
                              isPressedseven = false;
                              isPressedeigth = false;
                            }
                            isPressedsecond = !isPressedsecond;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            side: BorderSide(width: 0.3, color: Colors.black),
                            backgroundColor: isPressedsecond
                                ? Colors.green[400]
                                : Colors.green[200],
                            minimumSize: Size(80, 40)),
                        child: Text(
                          "15 min",
                          style: TextStyle(color: Colors.black),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (isPressedsecond ||
                                isPressedfirst ||
                                isPressedfourth ||
                                isPressedfifth ||
                                isPressedsixth ||
                                isPressedseven ||
                                isPressedeigth) {
                              isPressedsecond = false;
                              isPressedfirst = false;
                              isPressedfourth = false;
                              isPressedfifth = false;
                              isPressedsixth = false;
                              isPressedseven = false;
                              isPressedeigth = false;
                            }
                            isPressedthird = !isPressedthird;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            side: BorderSide(width: 0.3, color: Colors.black),
                            backgroundColor: isPressedthird
                                ? Colors.green[400]
                                : Colors.green[200],
                            minimumSize: Size(80, 40)),
                        child: Text(
                          "30 min",
                          style: TextStyle(color: Colors.black),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (isPressedsecond ||
                                isPressedthird ||
                                isPressedfirst ||
                                isPressedfifth ||
                                isPressedsixth ||
                                isPressedseven ||
                                isPressedeigth) {
                              isPressedsecond = false;
                              isPressedthird = false;
                              isPressedfirst = false;
                              isPressedfifth = false;
                              isPressedsixth = false;
                              isPressedseven = false;
                              isPressedeigth = false;
                            }
                            isPressedfourth = !isPressedfourth;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            side: BorderSide(width: 0.3, color: Colors.black),
                            backgroundColor: isPressedfourth
                                ? Colors.green[400]
                                : Colors.green[200],
                            minimumSize: Size(80, 40)),
                        child: Text(
                          "45 min",
                          style: TextStyle(color: Colors.black),
                        )),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (isPressedsecond ||
                              isPressedthird ||
                              isPressedfourth ||
                              isPressedfirst ||
                              isPressedsixth ||
                              isPressedseven ||
                              isPressedeigth) {
                            isPressedsecond = false;
                            isPressedthird = false;
                            isPressedfourth = false;
                            isPressedfirst = false;
                            isPressedsixth = false;
                            isPressedseven = false;
                            isPressedeigth = false;
                          }

                          isPressedfifth = !isPressedfifth;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(width: 0.3, color: Colors.black),
                          backgroundColor: isPressedfifth
                              ? Colors.green[400]
                              : Colors.green[200],
                          minimumSize: Size(80, 40)),
                      child: Text(
                        "1 hr",
                        style: TextStyle(color: Colors.black),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (isPressedsecond ||
                              isPressedthird ||
                              isPressedfourth ||
                              isPressedfifth ||
                              isPressedfirst ||
                              isPressedseven ||
                              isPressedeigth) {
                            isPressedsecond = false;
                            isPressedthird = false;
                            isPressedfourth = false;
                            isPressedfifth = false;
                            isPressedfirst = false;
                            isPressedseven = false;
                            isPressedeigth = false;
                          }
                          isPressedsixth = !isPressedsixth;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(width: 0.3, color: Colors.black),
                          backgroundColor: isPressedsixth
                              ? Colors.green[400]
                              : Colors.green[200],
                          minimumSize: Size(80, 40)),
                      child: Text(
                        "1.5 hrs",
                        style: TextStyle(color: Colors.black),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (isPressedsecond ||
                              isPressedthird ||
                              isPressedfourth ||
                              isPressedfifth ||
                              isPressedsixth ||
                              isPressedfirst ||
                              isPressedeigth) {
                            isPressedsecond = false;
                            isPressedthird = false;
                            isPressedfourth = false;
                            isPressedfifth = false;
                            isPressedsixth = false;
                            isPressedfirst = false;
                            isPressedeigth = false;
                          }
                          isPressedseven = !isPressedseven;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(width: 0.3, color: Colors.black),
                          backgroundColor: isPressedseven
                              ? Colors.green[400]
                              : Colors.green[200],
                          minimumSize: Size(80, 40)),
                      child: Text(
                        "2 hrs",
                        style: TextStyle(color: Colors.black),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (isPressedsecond ||
                              isPressedthird ||
                              isPressedfourth ||
                              isPressedfifth ||
                              isPressedsixth ||
                              isPressedseven ||
                              isPressedfirst) {
                            isPressedsecond = false;
                            isPressedthird = false;
                            isPressedfourth = false;
                            isPressedfifth = false;
                            isPressedsixth = false;
                            isPressedseven = false;
                            isPressedfirst = false;
                          }
                          isPressedeigth = !isPressedeigth;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(width: 0.3, color: Colors.black),
                          backgroundColor: isPressedeigth
                              ? Colors.green[400]
                              : Colors.green[200],
                          minimumSize: Size(80, 40)),
                      child: Text(
                        "3 hrs",
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              )
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
                      width: 70,
                      height: 40,
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
                      onPressed: _selectTime,
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
                      width: 70,
                      height: 40,
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
                      onPressed: _selectTime,
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
              SizedBox(height: 150),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (_) => HomeScreen()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff1B262C),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: Text(
                  "CONTINUE",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}