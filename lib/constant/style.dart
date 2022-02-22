import 'package:flutter/material.dart';

//constant colors
Color brown = const Color(0xff51433a);
Color gold = const Color(0xffbda580);
Color lightgold = const Color(0xffddc294);
Color light = const Color(0xfff5efe5);

//functions to set size
double sizeFromHeight(BuildContext context, double fraction,
    {bool hasAppBar = true}) {
  final screenHeight = MediaQuery.of(context).size.height;
  fraction = (hasAppBar
          ? (screenHeight -
              AppBar().preferredSize.height -
              MediaQuery.of(context).padding.top)
          : screenHeight) /
      fraction;
  return fraction;
}

double sizeFromWidth(
  BuildContext context,
  double fraction,
) {
  return MediaQuery.of(context).size.width / fraction;
}
