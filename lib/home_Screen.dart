import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboardingscreen/onboarding_screens.dart';

class home_Screen extends StatefulWidget {
  const home_Screen({super.key});

  @override
  State<home_Screen> createState() => _home_ScreenState();
}

class _home_ScreenState extends State<home_Screen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("OnBoarding Screen",style: GoogleFonts.monda(
          color: Colors.white
        ),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(120),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const onBoardingScreens()));
              },
              child: Container(
                height: height*0.05,
                width: width*0.4,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(4)
                ),
                child: Center(
                  child: Text("Onboarding Screen",style: GoogleFonts.monda(
                    color: Colors.white,
                    fontSize: 12
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
