import 'package:flutter/material.dart';
import 'package:patient/Utils/colorsandstyles.dart';
import 'package:patient/widgets/common_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patient/widgets/title_enter_field.dart';

class Personal extends StatefulWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  TextEditingController _firstname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            TitleEnterField('Firstname', 'Firstname', _firstname),
            TitleEnterField('Lastname', 'Lastname', _firstname),
            TitleEnterField('Email id', 'Email id', _firstname),
            TitleEnterField('Contact Number', 'Contact Number', _firstname),
            TitleEnterField('Age', 'Age', _firstname),
            TitleEnterField('Gender', 'Gender', _firstname),
            TitleEnterField('DOB', 'DOB', _firstname),
            TitleEnterField('Blood Group', 'Blood Group', _firstname),
            TitleEnterField('Marital status', 'Marital status', _firstname),
            TitleEnterField('Height', 'Height', _firstname),
            TitleEnterField('Weight', 'Weight', _firstname),
            TitleEnterField(
                'Emergency contact', 'Emergency contact', _firstname),
            TitleEnterField(
              'Address',
              'Address',
              _firstname,
              maxLines: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 130,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/pngs/Rectangle 51.png'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Update Profile',
                            style: GoogleFonts.montserrat(
                                color: Color(0xff161616).withOpacity(0.6),
                                fontSize: 15),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: commonBtn(
                              s: 'Choose new photo',
                              bgcolor: Color(0xffB2B1B1),
                              textColor: Colors.black,
                              onPressed: () {},
                              width: 187,
                              height: 30,
                              borderRadius: 4,
                              textSize: 12,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: commonBtn(
                s: 'Submit',
                bgcolor: appblueColor,
                textColor: Colors.white,
                onPressed: () {},
                borderRadius: 8,
                textSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
