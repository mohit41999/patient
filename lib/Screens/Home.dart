import 'package:flutter/material.dart';
import 'package:patient/Screens/DoctorScreens/doctor_profile_1.dart';
import 'package:patient/Screens/DoctorScreens/DoctorProfile.dart';
import 'package:patient/Screens/LabProfile.dart';
import 'package:patient/Screens/MedicineProfile.dart';
import 'package:patient/Screens/Products.dart';
import 'package:patient/Screens/Signup.dart';
import 'package:patient/Utils/colorsandstyles.dart';
import 'package:patient/Utils/navigation_drawer.dart';
import 'package:patient/Utils/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:patient/controller/NavigationController.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<dynamic, dynamic>> hometile = [
    {
      'label': 'Doctor Consultaion',
      'Screen': DoctorProfile(),
      'profile': 'Rectangle 69.png'
    },
    {
      'label': 'Health care & Other product',
      'Screen': ProductPage(),
      'profile': 'Rectangle 69.png'
    },
    {
      'label': 'Home Care Servicies',
      'Screen': 'null',
      'profile': 'Rectangle 69.png'
    },
    {
      'label': 'Stress buster zone',
      'Screen': 'null',
      'profile': 'Rectangle 69.png'
    },
    {
      'label': 'Lab Tests',
      'Screen': LabProfile(),
      'profile': 'Rectangle 69.png'
    },
    {'label': 'Ask Questions', 'Screen': 'null', 'profile': 'Rectangle 69.png'},
    {
      'label': 'Medicine',
      'Screen': MedicineProfile(),
      'profile': 'Rectangle 69.png'
    },
    {
      'label': 'Knowledge Forum',
      'Screen': 'null',
      'profile': 'Rectangle 69.png'
    },
  ];
  TextEditingController _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: commonAppBarTitle(),
        backgroundColor: appAppBarColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Builder(
            builder: (context) => GestureDetector(
              child: Container(
                width: 30,
                height: 30,
                child: Center(
                  child: Icon(
                    Icons.menu,
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
                setState(() {
                  Scaffold.of(context).openDrawer();
                });
              },
            ),
          ),
        ),
      ),
      drawer: commonDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        color: Color(0xff161616).withOpacity(0.6),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Search',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            color: Color(0xff161616).withOpacity(0.6)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              color: Colors.white,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffF6F6F6),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 10,
                              offset: const Offset(2, 5),
                            ),
                          ],
                        ),
                        // height: 100,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Heal At Home',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 20,
                                        color: appblueColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    width: 160,
                                    child: Text(
                                      'India\'s largest home health care company',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: Color(0xff161616),
                                      ),
                                    ),
                                  ),
                                  commonBtn(
                                    s: 'Consult Now',
                                    bgcolor: appblueColor,
                                    textColor: Colors.white,
                                    onPressed: () {
                                      Push(context, DoctorProfile1());
                                    },
                                    width: 120,
                                    height: 30,
                                    textSize: 12,
                                    borderRadius: 5,
                                  ),
                                ],
                              ),
                            ),
                            Image.asset('assets/pngs/nursedoctor.png')
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              height: 300,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          // maxCrossAxisExtent: 100,
                          childAspectRatio: 1.3 / 1,
                          // crossAxisSpacing: 10,
                          // mainAxisSpacing: 10,
                          crossAxisCount: 2),
                      itemCount: hometile.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: GestureDetector(
                            onTap: () {
                              (hometile[index]['Screen'].toString() == 'null')
                                  ? {print('blablabla')}
                                  : Push(context, hometile[index]['Screen']);
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: appblueColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Image.asset(
                                      'assets/pngs/${hometile[index]['profile']}'),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      hometile[index]['label'].toString(),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: commonRow(
                      subTitle: 'View all',
                      Title: 'Find Your Doctors',
                      value: DoctorProfile(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Choose from top specialities',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: apptealColor),
                    ),
                  ),
                  Container(
                    height: 150,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Push(context, DoctorProfile());
                              },
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 50,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Type',
                                    style: GoogleFonts.montserrat(fontSize: 11),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: commonRow(
                      Title: 'Health Care Services',
                      subTitle: 'View all',
                      value: DoctorProfile(),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    //color: Colors.red,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              height: 126,
                              width: 154,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 10,
                                    offset: const Offset(2, 5),
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/Icon material-face.svg',
                                    height: double.infinity,
                                    width: double.infinity,
                                  ),
                                  Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Physiotherapy',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: commonRow(
                      Title: 'Health Checkup at Home',
                      subTitle: 'View all',
                      value: DoctorProfile,
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    //color: Colors.red,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              height: 126,
                              width: 154,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 10,
                                    offset: const Offset(2, 5),
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/Icon material-face.svg',
                                    height: double.infinity,
                                    width: double.infinity,
                                  ),
                                  Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Physiotherapy',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
