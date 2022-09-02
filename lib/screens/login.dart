import 'package:firebase_auth/reusalble%20widgets/reusable_widgets.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      body: Container(
        width: w,
        height: h,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffC02425), Color(0xfff0cb35)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Column(
          children: [
            SizedBox(
              height: h / 10,
            ),
            CircleAvatar(
              backgroundImage: AssetImage("assets/logo.png"),
              radius: 100,
            ),
            SizedBox(
              height: h / 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    hintText: "email id",
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.amber,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white, width: 2)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            SizedBox(
              height: h / 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                    hintText: "password",
                    prefixIcon: Icon(
                      Icons.password,
                      color: Colors.amber,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white, width: 2)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            SigninSignupButton(context, true, () {
              
            })
          ],
        ),
      ),
    );
  }
}
