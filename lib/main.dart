import 'package:flutter/material.dart';
import 'package:tamuoz/screens/splashscreen.dart';

void main() {
  runApp(const Tasktamyuoz());
}

class Tasktamyuoz extends StatelessWidget {
  const Tasktamyuoz({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //
      //   primarySwatch: Colors.blue,
      // ),
      home: Splashscreen(),
    );
  }
}
