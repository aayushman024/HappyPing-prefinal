// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happy_ping/onboarding/onboarding2.dart';

void main(){
  runApp(const Onboarding1());
}
class Onboarding1 extends StatefulWidget {
  const Onboarding1({super.key});

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
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
              //width: yourWidth,
              height: screenHeight*0.15,

            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Image.asset('assets/ob1.png'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text('Track your daily happiness\n levels with us.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text('Achieve your happiness goals with a simple\n tap!',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight*0.16,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    Navigator.push(context, CupertinoPageRoute(builder: (_) => Onboarding2()));
                  });
                },
                style: ButtonStyle(backgroundColor: WidgetStateProperty.all
                  (Color(0xff1B262C)),
                  padding: WidgetStateProperty.all(EdgeInsets.fromLTRB(150, 20, 150, 20)),
                  shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
                ),
                child: Text('NEXT',
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
