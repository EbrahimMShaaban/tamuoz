import 'package:flutter/material.dart';
import 'package:tamuoz/constant/style.dart';
import 'package:tamuoz/widgets/butonlogin.dart';

import '../../widgets/loginoption.dart';
import '../../widgets/textfieldlogin.dart';
import '../navigation.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailControl = TextEditingController();
    final TextEditingController passwordControl = TextEditingController();
    // String email = '';
    // String password = '';

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
            visibility: const Icon(Icons.visibility),
            type: TextInputType.emailAddress),
        TextButton(
            onPressed: () {},
            child: Text(
              'نسيت كلمة المرور ؟',
              style: TextStyle(
                  color: brown, fontSize: 15, fontWeight: FontWeight.bold),
            )),
        Loginbuton(
            txt: 'تسجيل الدخول',
            color: brown,
            backcolor: lightgold,
            ontab: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const NavigationScreen()));
            },
            width: sizeFromWidth(context, 1.13)),
        Padding(
          padding: const EdgeInsets.all(12),
          child: InkWell(
            child: Center(
              child: Text(
                "تسجيل الدخول لاحقا",
                textDirection: TextDirection.rtl,
                style: TextStyle(color: lightgold, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
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
            Facelogin(imgurl: 'assets/images/facelogo.png'),
            Facelogin(imgurl: 'assets/images/google2.png'),

          ],
        ),

      ],
    );
  }
}
