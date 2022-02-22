import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tamuoz/constant/style.dart';
import 'package:tamuoz/screens/regestration/view.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) =>  const Registrationview()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brown,
      body: Column(
        children: [
          const Expanded(
              child: Image(image: AssetImage('assets/images/logo_png.png'))),
          SvgPicture.asset('assets/images/tamayyuz.svg'),
          Text(
            'جميع الحقوق محفوظة لمركز تميز', textAlign: TextAlign.center,
            style: TextStyle(color: gold,
              fontSize: 20,

            ),
          ),
        ],
      ),
    );
  }
}
