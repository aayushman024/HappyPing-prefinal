// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happy_ping/Pages/info.dart';

void main(){
  runApp(const Name());
}

class Name extends StatefulWidget {
  const Name({super.key});

  String get_name(){
    return _NameState.user_name;
  }

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
final nameController = TextEditingController();
  static String user_name = "";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFE0FFC0),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHeight*0.30,
              ),
              Text('WHAT SHOULD WE CALL YOU?',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),),
              Padding(
                padding: const EdgeInsets.fromLTRB(70, 40, 70, 40),
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    validator: (value){
                      if (value == null || value.isEmpty){
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      labelText: 'Your Name',
                      labelStyle: TextStyle(color: Colors.black45),
                      hintStyle: TextStyle(color: Colors.black38),
                      fillColor: Color(0xffF4FFE9),
                    ),
                    style: TextStyle(color: Colors.black,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Image.asset('assets/logo.png', height: screenHeight*0.12,),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 130, 0, 20),
                child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      user_name = nameController.text;
                      if (_formKey.currentState!.validate()){
                        Navigator.push(context, CupertinoPageRoute(builder: (_) => InfoCollection()));
                      }
                      else {
                        setState(() {
                          Text('Please enter your name', style: TextStyle(color: Colors.red),);
                        });
                      }
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
      ),
    );

  }
}

