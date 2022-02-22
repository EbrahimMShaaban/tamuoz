import 'package:flutter/material.dart';
import 'package:tamuoz/constant/style.dart';

class Facelogin extends StatelessWidget {
   Facelogin({Key? key,required this.imgurl}) : super(key: key);
  late String imgurl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: sizeFromWidth(context, 8),
          height: sizeFromWidth(context, 8),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imgurl)),
              color: const Color(0xff395797),
              borderRadius: BorderRadius.circular(7)),
        ),
      ),
    );
  }
}
