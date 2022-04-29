
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intake/Dashboard.dart';
import 'package:sizer/sizer.dart';
import 'constant.dart';

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
                                  FadeAnimatedText(
                                      "Intake",
                                      textStyle: TextStyle(
                                        fontSize: kValue30.sp,
                                        color: Colors.black,
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
