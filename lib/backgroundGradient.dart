import 'package:flutter/material.dart';

import 'constant.dart';

Widget background() {
  return Container(
    padding: EdgeInsets.zero,
    decoration: const BoxDecoration(
        gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [kGradient1Color, kGradient2Color],
    )),
  );
}
