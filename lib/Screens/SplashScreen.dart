import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:patient/Screens/Signup.dart';
import 'package:patient/Utils/colorsandstyles.dart';
import 'package:patient/Utils/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffFF2442),
                          blurRadius: 20,
                          spreadRadius: 40)
                    ],
                    color: Color(0xffFF2442),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(200))),
              )),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffFFC069),
                          blurRadius: 20,
                          spreadRadius: 15)
                    ],
                    color: Color(0xffFFC069),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(200))),
              )),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff085385),
                          blurRadius: 20,
                          spreadRadius: 30)
                    ],
                    color: Color(0xff085385),
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(200))),
              )),
          Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 200,
                width: 80,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff9A671A),
                          blurRadius: 20,
                          spreadRadius: 30)
                    ],
                    color: Color(0xff9A671A).withOpacity(0.1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(200),
                        bottomLeft: Radius.circular(200))),
              )),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.white.withOpacity(0.7),
                  blurRadius: 10,
                  spreadRadius: 20)
            ]),
            child: Center(
              child: commonBtn(
                s: 'SignUp',
                width: 100,
                borderRadius: 50,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpPage()));
                },
                textColor: Colors.white,
                bgcolor: appblueColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
