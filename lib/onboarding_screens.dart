import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:onboardingscreen/afterOnboardingScreen.dart';

class onBoardingScreens extends StatefulWidget {
  const onBoardingScreens({super.key});

  @override
  State<onBoardingScreens> createState() => _onBoardingScreensState();
}

class _onBoardingScreensState extends State<onBoardingScreens> {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body:
      Stack(
        children: [
          LiquidSwipe(
           positionSlideIcon: 0.5,
             fullTransitionValue: 100,
             enableLoop: false,
              slideIconWidget: const Icon(Icons.arrow_back_ios,size: 20,color: Colors.white,),
              pages: [

                Container(
              child: const Center(
                child: Image(image: AssetImage("assets/1.jpeg"),),
              ),
            ),

                Container(
                  //color: Colors.black,
                  child: const Center(
                    child: Image(image: AssetImage("assets/2.jpeg")),
                  ),
                ),

                Container(
                 // color: Colors.black,
                  child: const Center(
                    child: Image(image: AssetImage("assets/3.jpeg")),
                  ),
                ),
]),
          Positioned(
            top: height*0.958,
              right: width*0.01,
              child: InkWell(
                onTap: (){
                  print("Skip");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const afterOnBoardingScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  height: height*0.03,
                  width: width*0.2,
                  child: Center(
                    child: Text("Skip",style: GoogleFonts.monda(),),
                  ),
                ),
              )),
     ]
    ),
    );
  }
}
