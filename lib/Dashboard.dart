import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

import 'constant.dart';

class Dashboard extends StatefulWidget {
  static const id = "Dashboard";

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Sizer(
          builder: (context, orientation, deviceType){
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
                    Center(
                      child: Hero(
                        tag: "Splash",
                        child: Container(
                            height: 90.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200.withOpacity(0.5),
                                borderRadius: const BorderRadius.all(Radius.circular(24)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 10,
                                    blurRadius: 10,
                                    // offset: Offset(0,3),
                                  )
                                ]
                            ),
                          child: Column(
                            children: [
                              AnimatedTextKit(
                                isRepeatingAnimation: false,
                                  animatedTexts: [
                                    ScaleAnimatedText(
                                        "1000",
                                        textStyle: TextStyle(
                                          fontSize: kValue30.sp,
                                          color: Colors.black,
                                        ),
                                    ),
                                  ]
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
            );
          })
    );
  }
}
