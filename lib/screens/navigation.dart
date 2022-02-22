import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tamuoz/constant/style.dart';
import 'package:tamuoz/screens/bookmark/view.dart';
import 'package:tamuoz/screens/moton/view.dart';
import 'package:tamuoz/screens/werd/view.dart';

import 'home/view.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageindex = 3;
  List<Widget> pages = [
    const BookMarkview(),
    const Motonview(),
    const Werdview(),
    const Homeview(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageindex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: lightgold,
          iconSize: 35,
          type: BottomNavigationBarType.fixed,
          currentIndex: pageindex,
          onTap: (value) {
            setState(() {
              pageindex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outline_outlined),
                label: 'المحفوظات'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'قائمة المتون '),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_open), label: 'الورد اليومي'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
          ]),
    );
  }
}
