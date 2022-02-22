import 'package:flutter/material.dart';
import 'package:tamuoz/constant/style.dart';
Padding defualtTextFormField({
  required TextEditingController controller,
  required TextInputType type,
  bool isPassword = false,
   Widget? visibility ,
  required FormFieldValidator validate,
  required String hint,
  int maxlines = 1,
}) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        maxLines: maxlines,

        controller: controller,
        validator: validate,
        obscureText: isPassword,

        decoration: InputDecoration(

          suffixIcon: visibility,
          hintText: hint,
          hintStyle: TextStyle(fontWeight: FontWeight.bold),


          filled: true,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderSide:  BorderSide(color: lightgold),
            borderRadius: BorderRadius.circular(2),
          ),

          enabledBorder: OutlineInputBorder(
            borderSide:  BorderSide(color: lightgold),
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ),
    ),
  );
}