// import 'dart:ui';
//
// import 'package:flutter/material.dart';
// import 'package:patient/Screens/Home.dart';
// import 'package:patient/widgets/bottombar.dart';
// import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
// import 'package:flutter/cupertino.dart';
// import 'Screens/DoctorScreens/doctor_profile.dart';
// import 'Screens/LabProfile.dart';
// import 'Screens/MedicineProfile.dart';
// import 'Utils/colorsandstyles.dart';
//
// class GeneralScreen2 extends StatefulWidget {
//   const GeneralScreen2({Key? key}) : super(key: key);
//
//   @override
//   State<GeneralScreen2> createState() => _GeneralScreen2State();
// }
//
// class _GeneralScreen2State extends State<GeneralScreen2> {
//   List<Widget> _buildScreens() {
//     return [
//       HomeScreen(),
//       DoctorProfile(),
//       HomeScreen(),
//       MedicineProfile(),
//       LabProfile()
//     ];
//   }
//
//   int _selected_index = 0;
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       bottomSheet: ClipRRect(
//         child: BackdropFilter(
//           filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
//           child: Container(
//             height: 60,
//             width: MediaQuery.of(context).size.width,
//             child: FABBottomAppBar(
//               centerItemText: 'Search',
//               color: Color(0xff161616),
//               selectedColor: appblueColor,
//               notchedShape: CircularNotchedRectangle(),
//               onTabSelected: (int index) {
//                 setState(() {
//                   _selected_index = index;
//                 });
//               },
//               items: [
//                 FABBottomAppBarItem(iconData: Icons.home, text: 'Home'),
//                 FABBottomAppBarItem(iconData: Icons.search, text: 'Doctor'),
//                 FABBottomAppBarItem(
//                     iconData: Icons.account_circle, text: 'Medicine'),
//                 FABBottomAppBarItem(iconData: Icons.more_horiz, text: 'Lab'),
//               ],
//               backgroundColor: Colors.purple,
//             ),
//           ),
//         ),
//       ),
//       extendBody: true,
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Colors.white,
//       body: Center(
//         child: _buildScreens().elementAt(_selected_index),
//       ),
//       floatingActionButton: ClipRRect(
//         borderRadius: BorderRadius.circular(50),
//         clipBehavior: Clip.hardEdge,
//         child: BackdropFilter(
//           filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
//           child: Container(
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(100),
//                 color: Colors.white.withOpacity(0.5)),
//             child: FloatingActionButton(
//               isExtended: true,
//               backgroundColor: Colors.transparent,
//               onPressed: () {},
//               child: Icon(
//                 Icons.search,
//                 color: appblueColor,
//               ),
//               elevation: 0,
//             ),
//           ),
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       // bottomNavigationBar:
//     );
//   }
// }
