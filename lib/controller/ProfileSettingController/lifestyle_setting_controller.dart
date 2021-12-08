import 'package:flutter/material.dart';
import 'package:patient/API%20repo/api_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LifestyleSettingController {
  var SmokingList = ['Yes', 'No'];
  var AlcoholList = ['Yes', 'No'];
  var WorkOutLevelList = ['Low', 'Medium', 'High'];
  var SportsInvolvementList = ['Low', 'Medium', 'High'];

  String SmokingdropdownValue = 'Yes';
  String AlcoholdropdownValue = 'Yes';
  String WorkOutLeveldropdownValue = 'High';
  String SportsInvolvementdropdownValue = 'High';

  Future<void> submit(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? user_id = prefs.getString('user_id');
    print(user_id);
    var response = PostData(PARAM_URL: 'update_patient_lifestyle.php', params: {
      'token': Token,
      'user_id': user_id.toString(),
      'smoking': SmokingdropdownValue.toString(),
      'alchol': AlcoholdropdownValue.toString(),
      'workout_level': WorkOutLeveldropdownValue.toString(),
      'sports_involvement': SportsInvolvementdropdownValue.toString(),
    }).then((value) {
      (value['status'])
          ? success(context, value)
          : ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                value['message'].toString(),
                textAlign: TextAlign.center,
              ),
              duration: Duration(seconds: 2),
            ));
    });
    // print(response.toString() + '===============>');
  }
}
