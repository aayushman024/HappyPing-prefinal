// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happy_ping/onboarding/onboarding3.dart';

void main(){
  runApp(const Onboarding2());
}
class Onboarding2 extends StatefulWidget {
  const Onboarding2({super.key});

  @override
  State<Onboarding2> createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0FFC0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 30),
              child: Image.asset('assets/ob2.png'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text('Smart Reminders Tailored\nto You',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text('Quick and easy to set your happiness goal & \n then track your daily progress.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 105,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    Navigator.push(context, CupertinoPageRoute(builder: (_) => Onboarding3()));
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
