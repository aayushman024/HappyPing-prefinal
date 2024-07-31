// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happy_ping/onboarding/name.dart';

void main(){
  runApp(const Onboarding3());
}

class Onboarding3 extends StatefulWidget {
  const Onboarding3({super.key});

  @override
  State<Onboarding3> createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFE0FFC0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight*0.2,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: Image.asset('assets/ob3.png'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text('Easy to Use – Set Goals,\nReceive Notifications, & Smile',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text('Staying happy every day is easy with HappyPing.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight*0.25,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 60, 0, 20),
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    Navigator.pushReplacement(context, CupertinoPageRoute(builder: (_) => Name()));
                  });
                },
                style: ButtonStyle(backgroundColor: WidgetStateProperty.all
                  (Color(0xff1B262C)),
                    padding: WidgetStateProperty.all(EdgeInsets.fromLTRB(100, 20, 100, 20)),
                    shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
                ),
                child: Text('GET STARTED',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                  ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
