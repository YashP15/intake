import 'package:flutter/material.dart';
import 'package:intake/chart.dart';
import 'package:intake/constant.dart';
import 'package:sizer/sizer.dart';

import 'backgroundGradient.dart';

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
          background(),
          Center(
            child: Hero(
              tag: "Splash",
              child: Container(
                height: 90.h,
                width: 90.w,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 10,
                        blurRadius: 10,
                        // offset: Offset(0,3),
                      )
                    ]),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        kCalorieText,
                        style: TextStyle(
                            fontFamily: kFontBarlow,
                            fontSize: kValue30.sp,
                            color: kWhiteColor),
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
                        child: Text(
                          "1000",
                          style: TextStyle(
                              fontFamily: kFontBarlow,
                              fontSize: kValue40.sp,
                              color: kWhiteColor),
                          textScaleFactor: kScalingFactor,
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Wrap(
                        children: [
                          Text(
                            kIntroText,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: kFontBarlow,
                              fontSize: kValue30.sp,
                              color: kLightBlue.shade100.withOpacity(0.5),
                            ),
                            textScaleFactor: kScalingFactor,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.w, right: 5.w),
                        child: TextFormField(
                          textInputAction: TextInputAction.next,
                          cursorColor: kGradient1Color.withOpacity(0.5),
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                              color: kBlackColor,
                              fontFamily: kFontBarlow,
                              fontSize: kValue16.sp),
                          decoration: InputDecoration(
                              hintText: kHintText,
                              prefixIcon: const Icon(Icons.fastfood),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: kBlackColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: kGradient1Color.withOpacity(0.5)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)))),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.w, right: 5.w),
                        child: TextFormField(
                          textInputAction: TextInputAction.done,
                          cursorColor: kGradient1Color.withOpacity(0.5),
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            color: kBlackColor,
                            fontFamily: kFontBarlow,
                            fontSize: kValue16.sp,
                          ),
                          decoration: InputDecoration(
                              hintText: kHint1Text,
                              prefixIcon: const Icon(Icons.numbers),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: kBlackColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: kGradient1Color.withOpacity(0.5)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)))),
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "Add+",
                          style: TextStyle(
                              fontFamily: kFontBarlow,
                              fontSize: kValue16.sp,
                              color: kGradient2Color),
                        ),
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: kGradient2Color)),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Chart.id);
                        },
                        child: Text(
                          kViewChartText,
                          style: TextStyle(
                              fontFamily: kFontBarlow,
                              fontSize: kValue16.sp,
                              color: kGradient1Color.withOpacity(0.5)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ));
    }));
  }
}
