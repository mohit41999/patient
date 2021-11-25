import 'package:flutter/material.dart';
import 'package:patient/Utils/widgets.dart';

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
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            TitleEnterField('firstname', 'hdcbikc', _firstname),
            TitleEnterField('firstname', 'hdcbikc', _firstname),
            TitleEnterField('firstname', 'hdcbikc', _firstname),
            TitleEnterField('firstname', 'hdcbikc', _firstname),
            TitleEnterField('firstname', 'hdcbikc', _firstname),
            Container(
              height: 130,
              color: Colors.pink,
            ),
            Center(child: Text('Submit button'))
          ],
        ),
      ),
    );
  }
}
