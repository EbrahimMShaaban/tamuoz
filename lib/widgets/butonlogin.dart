import 'package:flutter/material.dart';

import '../constant/style.dart';

class Loginbuton extends StatelessWidget {
  Loginbuton(
      {Key? key,
      required this.txt,
      required this.color,
      required this.backcolor,
      required this.ontab,
      required this.width})
      : super(key: key);
  Color color;
  Color backcolor;
  double width;
  String txt;
  Function ontab;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontab();
      },
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: backcolor,
            borderRadius: BorderRadius.circular(5),
          ),
          height: sizeFromHeight(context, 10),
          width: width,
          child: Center(
              child: Text(
            txt,
            style: TextStyle(
                color: color, fontSize: 20, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
