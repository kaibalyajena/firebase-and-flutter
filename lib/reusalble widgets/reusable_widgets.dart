import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';

Container SigninSignupButton(
    BuildContext context, bool isLogin, Function onTap) {
  return Container(
      width: MediaQuery.of(context).size.width / 1.8,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Color.fromARGB(255, 222, 86, 86);
              } else {
                return Color(0xfff0cb35);
              }
            })),
        onPressed: () {
          onTap();
        },
        child: Text(
          isLogin ? "Login" : "Signup",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ));
}
