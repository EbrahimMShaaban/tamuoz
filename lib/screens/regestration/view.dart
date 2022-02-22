import 'package:flutter/material.dart';
import 'package:tamuoz/screens/regestration/login.dart';
import 'package:tamuoz/screens/regestration/sign_up.dart';

import '../../constant/style.dart';

class Registrationview extends StatefulWidget {
  const Registrationview({Key? key}) : super(key: key);

  @override
  State<Registrationview> createState() => _RegistrationviewState();
}

class _RegistrationviewState extends State<Registrationview> {
  @override
  int index=0;
  @override
  Widget build(BuildContext context) {
    // bool onclick = true;

    return Scaffold(
      backgroundColor: brown,
      body: Center(
        child: Column(
          children: [
            const Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 10),
                  child: Image(image: AssetImage('assets/images/logo_png.png')),
                )),
            Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Card(
                    child: Container(
                      height: sizeFromHeight(context, 1.5),
                      width: sizeFromWidth(context, 1.1),
                      color: Colors.white,
                      child: SingleChildScrollView(
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [


                                  GestureDetector(

                                    onTap: () {
                                      setState(() {
                                       index =1;
                                       // onclick =false;
                                        // onclick == true
                                        //     ? onclick = !onclick
                                        //     : null;
                                      });
                                    },

                                    child: Center(
                                      child: Container(
                                        height: sizeFromHeight(context, 10),
                                        width: sizeFromHeight(context, 4),
                                        color: index
                                            ==0? light : brown,
                                        child: Center(
                                            child: Text(
                                          'إنشاء حساب',
                                          style: TextStyle(
                                              color: index
                                                  ==0 ? brown : light,
                                              fontSize: 20),
                                        )),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {

                                        index =0;
                                        null;
                                      });
                                    },
                                    child: Center(
                                      child: Container(
                                        height: sizeFromHeight(context, 10),
                                        width: sizeFromHeight(context, 4),
                                        color: index==1 ? lightgold : brown,
                                        child: Center(
                                            child: Text(
                                          'تسجيل الدخول',
                                          style: TextStyle(
                                              color: index==1 ? brown : lightgold,
                                              fontSize: 20),
                                        )),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            index==0 ? const Login() : const Signup(),
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
            // SizedBox(height: sizeFromHeight(context, 5),)
          ],
        ),
      ),
    );
  }
}
//