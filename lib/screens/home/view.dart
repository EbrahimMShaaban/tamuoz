import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tamuoz/constant/style.dart';
import 'package:tamuoz/widgets/butonlogin.dart';


class Homeview extends StatelessWidget {
  const Homeview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: light,
      appBar: AppBar(
        elevation: 0,
        actionsIconTheme: IconThemeData(color: gold),
        backgroundColor: brown,
        title: Text(
          'حفاظ المتون',
          style:
              TextStyle(fontSize: 22, color: gold, fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
        leadingWidth: 100,
        leading: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notifications, color: gold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search, color: gold),
            ),
          ],
        ),
      ),
      endDrawer: const Drawer(),
      body: Column(
        //alignment: Alignment.bottomCenter,
        children: [
          Expanded(
            flex: 1,
            child: Container(
                width: sizeFromWidth(context, 1),
                //height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                    color: brown,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/smalldecoretion.svg'),
                        Text(
                          """الاحتفاظ بما في صدرك أولى من درس
                      ما في كتابك""",
                          style: TextStyle(
                              fontSize: 18,
                              color: light,
                              fontWeight: FontWeight.w800),
                        ),
                        SvgPicture.asset('assets/images/smalldecoretion.svg'),
                      ],
                    ),
                    Text(
                      'الخليل بن أحمد',
                      style: TextStyle(
                          fontSize: 16,
                          color: gold,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                )),
          ),
          Expanded(
            flex: 5,
            child: ListView(
              children: [
                Stack(
                  children: [
                    Card(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              "مرحبا بك في حفاظ المتون",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: lightgold,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              """لا تكثر علي نفسك من المتون فيصيبك التشتت وربما الانقطاع, بل ابدأ بمتن واحد ثم إذا انهيته انتقلت لغيره""",
                              style: TextStyle(

                                  fontSize: 22,
                                  color: brown,
                                  fontWeight: FontWeight.w800),textDirection: TextDirection.rtl,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Loginbuton(
                                    txt: '+ خطة جديدة',
                                    color: brown,
                                    backcolor: lightgold,
                                    ontab: () {},
                                    width: sizeFromWidth(context, 3))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Image(
                      image: AssetImage('assets/images/books.png'),
                    )
                  ],
                  alignment: AlignmentDirectional.bottomStart,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 3,
                      indent: 20,
                      color: lightgold,
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text("أوراد اليوم",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: brown)),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 3,
                      endIndent: 20,
                      color: lightgold,
                    )),
                  ],
                ),
                // Container(
                //   // color: brown,
                //   //alignment: Alignment.topCenter,
                //   height: MediaQuery.of(context).size.height * 5,
                //   width: sizeFromWidth(context, 1),
                //   child: Column(
                //     children: [
                //       ListView.builder(
                //           itemCount: 2,
                //           scrollDirection: Axis.horizontal,
                //           itemBuilder: (BuildContext, int) {
                //             return Dayitem();
                //           })
                //     ],
                //   ),
                // ),
              ],
            ),
          ),

          // Expanded(child: NavigationFile()),
        ],
      ),
    );
  }
}
