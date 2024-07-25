// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happy_ping/Pages/info.dart';

void main(){
  runApp(const Name());
}

class Name extends StatefulWidget {
  const Name({super.key});

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0FFC0),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
            ),
            Text('WHAT SHOULD WE CALL YOU?',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
            Padding(
              padding: const EdgeInsets.fromLTRB(70, 40, 70, 40),
              child: TextField(
                controller: nameController,
                cursorRadius: Radius.circular(20),
                decoration: InputDecoration(
                  hintText: 'Your Name',
                  hintStyle: TextStyle(color: Colors.black38),
                  fillColor: Color(0xffF4FFE9),
                ),
                style: TextStyle(color: Colors.black,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Image.asset('assets/logo.png', height: 100,),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 130, 0, 20),
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    Navigator.push(context, CupertinoPageRoute(builder: (_) => InfoCollection()));
                  });
                },
                style: ButtonStyle(backgroundColor: WidgetStateProperty.all
                  (Color(0xff1B262C)),
                    padding: WidgetStateProperty.all(EdgeInsets.fromLTRB(140, 20, 140, 20)),
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