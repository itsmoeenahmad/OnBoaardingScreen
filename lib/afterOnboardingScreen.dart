import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class afterOnBoardingScreen extends StatefulWidget {
  const afterOnBoardingScreen({super.key});

  @override
  State<afterOnBoardingScreen> createState() => _afterOnBoardingScreenState();
}

class _afterOnBoardingScreenState extends State<afterOnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("After OnBoarding Screen",style: GoogleFonts.monda(
          color: Colors.white
        ),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
    );
  }
}
