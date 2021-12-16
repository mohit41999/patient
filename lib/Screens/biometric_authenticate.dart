import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patient/API%20repo/local_auth_api.dart';
import 'package:patient/Utils/colorsandstyles.dart';
import 'package:patient/controller/NavigationController.dart';

import 'package:patient/widgets/common_app_bar_title.dart';
import 'package:google_fonts/google_fonts.dart';

import 'general_screen.dart';

class BiometricAuthenticate extends StatefulWidget {
  const BiometricAuthenticate({Key? key}) : super(key: key);

  @override
  _BiometricAuthenticateState createState() => _BiometricAuthenticateState();
}

class _BiometricAuthenticateState extends State<BiometricAuthenticate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: commonAppBarTitle(),
        centerTitle: true,
        backgroundColor: appAppBarColor,
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () async {
          final isAuthenticated = await LocalAuthApi.authenticate(context);
          if (isAuthenticated) {
            Push(context, GeneralScreen());
          }
        },
        child: (Platform.isAndroid)
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/pngs/Icon ionic-md-finger-print.png',
                        height: 90),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Press This FingerPrint to Start Scanning',
                      style: GoogleFonts.montserrat(
                          color: apptealColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/pngs/Icon material-face.png',
                        height: 90),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Press This Face to Start Scanning FaceID',
                      style: GoogleFonts.montserrat(
                          color: apptealColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
