
import 'package:flutter/material.dart';
import 'package:intake/constant.dart';
import 'package:sizer/sizer.dart';

class Dashboard extends StatefulWidget {
  static const id = "Dashboard";

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
          body: Stack(
        children: [
          Container(
            padding: EdgeInsets.zero,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff16BFFD), Color(0xffCB3066)],
            )),
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
                    ]),
                child: Column(
                  children: [
                    SizedBox(
                      height: 4.h,
                    ),
                    const Text(
                      kCalorieText,
                      style: TextStyle(
                          fontFamily: kFontBarlow,
                          fontSize: kValue30,
                          color: kWhiteColor
                      ),
                      textScaleFactor: kScalingFactor,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      padding: EdgeInsets.all(2.w),
                      decoration: const BoxDecoration(
                        color: kBlackColor,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Text(
                        "1000",
                        style: TextStyle(
                            fontFamily: kFontBarlow,
                            fontSize: kValue40,
                            color: kWhiteColor
                        ),
                        textScaleFactor: kScalingFactor,
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Wrap(
                      children:[
                        Text(
                          kIntroText,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: kFontBarlow,
                              fontSize: kValue30+2,
                              color: kLightBlue.shade100.withOpacity(0.5),
                          ),
                          textScaleFactor: kScalingFactor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(

                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ));
    }));
  }
}
