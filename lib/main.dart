import 'package:flutter/material.dart';
import 'package:patient/Screens/SplashScreen.dart';
import 'package:patient/Screens/biometric_authenticate.dart';
import 'package:patient/demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xffEFEFEF)),
      home: SplashScreen(),
    );
  }
}
