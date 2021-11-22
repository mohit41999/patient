import 'package:flutter/material.dart';
import 'package:patient/Screens/Products.dart';
import 'package:patient/Utils/colorsandstyles.dart';
import 'package:patient/Utils/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProductPage()));
                },
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
                        width: 5,
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
              SizedBox(
                height: 20,
              ),
              Container(
                height: 180,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
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
                          height: 140,
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
                                      onPressed: () {},
                                      width: 120,
                                      height: 30,
                                      textSize: 12,
                                      borderRadius: 5,
                                    ),
                                  ],
                                ),
                              ),
                              SvgPicture.asset(
                                  'assets/images/Icon ionic-md-finger-print.svg',
                                  height: 90)
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 220,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      // maxCrossAxisExtent: 100,
                      //childAspectRatio: 1 / 2,
                      // crossAxisSpacing: 0,
                      // mainAxisSpacing: 20,
                      crossAxisCount: 2),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(6),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: appblueColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: SvgPicture.asset(
                                'assets/images/Icon material-face.svg'),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('ll'),
                              SizedBox(height: 2),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              commonRow(
                subTitle: 'View all',
                Title: 'Find Your Doctors',
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Choose from top specialities',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: apptealColor),
              ),
              Container(
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
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
                      );
                    }),
              ),
              SizedBox(
                height: 15,
              ),
              commonRow(Title: 'Health Care Services', subTitle: 'View all'),
              SizedBox(
                height: 150,
                //color: Colors.red,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
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
                                color: Colors.grey.withOpacity(0.2),
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
              SizedBox(
                height: 15,
              ),
              commonRow(Title: 'Health Checkup at Home', subTitle: 'View all'),
              SizedBox(
                height: 150,
                //color: Colors.red,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
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
                                color: Colors.grey.withOpacity(0.2),
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
      ),
    );
  }
}
