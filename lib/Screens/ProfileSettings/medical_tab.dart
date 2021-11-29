import 'package:flutter/material.dart';
import 'package:patient/Utils/colorsandstyles.dart';
import 'package:patient/widgets/common_button.dart';
import 'package:patient/widgets/title_enter_field.dart';

class Medical extends StatefulWidget {
  const Medical({Key? key}) : super(key: key);

  @override
  State<Medical> createState() => _MedicalState();
}

class _MedicalState extends State<Medical> {
  TextEditingController _firstname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        children: [
          TitleEnterField(
            'Details of allergies',
            'Details of allergies',
            _firstname,
            maxLines: 10,
          ),
          TitleEnterField(
            'Current & Past Medications',
            'Current & Past Medications',
            _firstname,
            maxLines: 10,
          ),
          TitleEnterField(
            'Past surgery or injury',
            'Past surgery or injury',
            _firstname,
            maxLines: 10,
          ),
          TitleEnterField(
            'Any chronic disease',
            'Any chronic disease',
            _firstname,
            maxLines: 10,
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
    );
  }
}
