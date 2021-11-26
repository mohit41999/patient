import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patient/Screens/MYScreens/MyAppointments.dart';
import 'package:patient/Screens/MYScreens/MyLabTest.dart';
import 'package:patient/Screens/MYScreens/MyMedicineOrders.dart';
import 'package:patient/Screens/MYScreens/MyOrderPage.dart';
import 'package:patient/Screens/MYScreens/MyPrescriprions.dart';
import 'package:patient/Screens/MYScreens/MyQuestionsScreen.dart';
import 'package:patient/Screens/MYScreens/MyReviewRating.dart';
import 'package:patient/Screens/ProfileSettings/profile_setting.dart';
import 'package:patient/controller/NavigationController.dart';

import 'colorsandstyles.dart';
import 'package:google_fonts/google_fonts.dart';

class commonDrawer extends StatelessWidget {
  const commonDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xffF1F1F1),
        child: Stack(
          children: [
            ListView(
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/pngs/Rectangle 51.png'),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20),
                  child: GestureDetector(
                    child: Text(
                      'Profile',
                      style: GoogleFonts.montserrat(
                          color: apptealColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Push(context, ProfileSetting());
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20),
                  child: GestureDetector(
                    child: Text(
                      'My Appointment',
                      style: GoogleFonts.montserrat(
                          color: apptealColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Push(context, MyAppointments());
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20),
                  child: GestureDetector(
                    child: Text(
                      'My Chats',
                      style: GoogleFonts.montserrat(
                          color: apptealColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20),
                  child: GestureDetector(
                    child: Text(
                      'My Lab Test',
                      style: GoogleFonts.montserrat(
                          color: apptealColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Push(context, MyLabTest());
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20),
                  child: GestureDetector(
                    child: Text(
                      'My Medicine Orders',
                      style: GoogleFonts.montserrat(
                          color: apptealColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Push(context, MyMedicineOrders());
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20),
                  child: GestureDetector(
                    child: Text(
                      'My Order',
                      style: GoogleFonts.montserrat(
                          color: apptealColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Push(context, MyOrderPg());
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20),
                  child: GestureDetector(
                    child: Text(
                      'My Reviews and Rating',
                      style: GoogleFonts.montserrat(
                          color: apptealColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Push(context, MyReviewRatingsScreen());
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20),
                  child: GestureDetector(
                    child: Text(
                      'My Questions',
                      style: GoogleFonts.montserrat(
                          color: apptealColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Push(context, MyQuestionsScreen());
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20),
                  child: GestureDetector(
                    child: Text(
                      'My Wallets',
                      style: GoogleFonts.montserrat(
                          color: apptealColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20),
                  child: GestureDetector(
                    child: Text(
                      'My prescriptions',
                      style: GoogleFonts.montserrat(
                          color: apptealColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Push(context, MyPrescriptionsScreen());
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20),
                  child: GestureDetector(
                    child: Text(
                      'Account Setting',
                      style: GoogleFonts.montserrat(
                          color: apptealColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20),
                  child: GestureDetector(
                    child: Text(
                      'Logout',
                      style: GoogleFonts.montserrat(
                          color: apptealColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0, left: 8),
                child: GestureDetector(
                  child: Container(
                    width: 40,
                    height: 40,
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: appblueColor,
                        size: 20,
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
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
