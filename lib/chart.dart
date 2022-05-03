import 'package:flutter/material.dart';
import 'package:intake/backgroundGradient.dart';
import 'package:intake/constant.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatefulWidget {
  static const id = "Chart";

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  List<_FoodCalorieModal> data = [];
  @override
  void initState() {
    // TODO: implement initState
    data.add(_FoodCalorieModal(foodName: "1", calorie: 1200));
    data.add(_FoodCalorieModal(foodName: "2", calorie: 1000));
    data.add(_FoodCalorieModal(foodName: "3", calorie: 400));
    data.add(_FoodCalorieModal(foodName: "4", calorie: 500));
    data.add(_FoodCalorieModal(foodName: "5", calorie: 345));
    data.add(_FoodCalorieModal(foodName: "6", calorie: 965));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
          body: Stack(
        children: [
          background(),
          Center(
            child: Container(
              height: 90.h,
              width: 90.w,
              padding: EdgeInsets.all(5.w),
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
              child: SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                series: <ChartSeries<_FoodCalorieModal, String>>[
                  LineSeries<_FoodCalorieModal, String>(
                      dataSource: data,
                      xValueMapper: (_FoodCalorieModal f, _) => f.foodName,
                      yValueMapper: (_FoodCalorieModal f, _) => f.calorie,
                      color: kBlackColor)
                ],
              ),
            ),
          ),
        ],
      ));
    }));
  }
}

class _FoodCalorieModal {
  _FoodCalorieModal({required this.foodName, required this.calorie});
  String foodName;
  int calorie;
}
