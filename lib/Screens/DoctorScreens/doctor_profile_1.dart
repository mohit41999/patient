import 'package:flutter/material.dart';
import 'package:patient/Utils/colorsandstyles.dart';
import 'package:patient/Utils/widgets.dart';

class DoctorProfile1 extends StatefulWidget {
  const DoctorProfile1({Key? key}) : super(key: key);

  @override
  _DoctorProfile1State createState() => _DoctorProfile1State();
}

class _DoctorProfile1State extends State<DoctorProfile1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 40,
                height: 40,
                child: Center(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: appblueColor,
                    size: 18,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 10,
                      offset: const Offset(2, 5),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: commonBtn(
            s: 'Book an Appointment',
            bgcolor: appblueColor,
            textColor: Colors.white,
            borderRadius: 8,
            onPressed: () {}),
      ),
    );
  }
}
