import 'package:flutter/material.dart';
import 'package:tamuoz/constant/style.dart';
import 'package:tamuoz/widgets/butonlogin.dart';

import '../../widgets/loginoption.dart';
import '../../widgets/textfieldlogin.dart';
import '../navigation.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailControl = TextEditingController();
    final TextEditingController passwordControl = TextEditingController();
    final TextEditingController password2Control = TextEditingController();
    String email = '';
    String password = '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        defualtTextFormField(
            validate: (value) {},
            controller: emailControl,
            hint: 'البريد الإلكتروني',
            visibility: null,
            type: TextInputType.emailAddress),
        defualtTextFormField(
            validate: (value) {},
            controller: passwordControl,
            hint: 'كلمة المرور',
            visibility: Icon(Icons.visibility),
            type: TextInputType.emailAddress),
        defualtTextFormField(
            validate: (value) {},
            controller: password2Control,
            hint: 'كلمة المرور',
            visibility: Icon(Icons.visibility),
            type: TextInputType.emailAddress),

        Loginbuton(
            txt: 'إنشاء حساب جديد',
            color: brown,
            backcolor: lightgold,
            ontab: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => NavigationScreen()));
            },
            width: sizeFromWidth(context, 1.13)),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              const Expanded(
                  child: Divider(
                thickness: 1,
                indent: 10,
              )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text("أو سجل الدخول عبر",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, color: brown)),
              ),
              const Expanded(child: Divider(thickness: 2, endIndent: 10)),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Facelogin(imgurl: 'assets/images/google2.png'),
            Facelogin(imgurl: 'assets/images/facelogo.png'),
          ],
        ),
      ],
    );
  }
}
