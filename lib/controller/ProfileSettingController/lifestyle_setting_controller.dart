import 'package:flutter/material.dart';
import 'package:patient/API%20repo/api_constants.dart';
import 'package:patient/Utils/progress_view.dart';
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
  bool loading = false;

  Future<void> submit(BuildContext context) async {
    var loader = ProgressView(context);
    loader.show();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? user_id = prefs.getString('user_id');
    print(user_id);
    var response =
        await PostData(PARAM_URL: 'update_patient_lifestyle.php', params: {
      'token': Token,
      'user_id': user_id.toString(),
      'smoking': SmokingdropdownValue.toString(),
      'alchol': AlcoholdropdownValue.toString(),
      'workout_level': WorkOutLeveldropdownValue.toString(),
      'sports_involvement': SportsInvolvementdropdownValue.toString(),
    });
    loader.dismiss();
    compareresponsedata(response, context);
    // if (response['status']) {
    //   success(context, response);
    // } else {
    //   failure(context, response);
    // }

    // print(response.toString() + '===============>');
  }
}
