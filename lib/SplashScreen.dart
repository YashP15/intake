
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:intake/Dashboard.dart';
import 'package:intake/constant.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  static const id = "Splash Screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Sizer(
          builder: (context, orientation, deviceType) {
            return Scaffold(
                body: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.zero,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xff16BFFD),
                              Color(0xffCB3066)
                            ],
                          )
                      ),
                    ),
                    Hero(
                      tag: "Splash",
                      child: Container(
                          padding: EdgeInsets.zero,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200.withOpacity(0.5)),
                          child: Center(
                              child:AnimatedTextKit(
                                onFinished: (){
                                  Navigator.pushNamed(context, Dashboard.id);
                                },
                                animatedTexts: [
                                  TyperAnimatedText(
                                      "Intake",
                                      speed: const Duration(milliseconds: 220),
                                      textStyle: TextStyle(
                                        fontSize: kValue40.sp,
                                        color: kWhiteColor,
                                        fontFamily: kFontBarlow
                                      )
                                  )
                                ],
                                isRepeatingAnimation: false,
                              )
                          )
                      ),
                    )
                  ],
                )
            );
          }),
    );
  }
}
