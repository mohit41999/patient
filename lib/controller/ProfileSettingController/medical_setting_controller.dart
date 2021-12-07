import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:patient/API%20repo/api_constants.dart';
import 'package:patient/Screens/SignInScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../NavigationController.dart';

class MedicalSettingController {
  TextEditingController details_of_allergies = TextEditingController();
  TextEditingController current_and_past_medication = TextEditingController();
  TextEditingController past_surgery_injury = TextEditingController();
  TextEditingController chronic_disease = TextEditingController();

  Future<void> submit(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? user_id = prefs.getString('user_id');
    print(user_id);
    PostData(PARAM_URL: 'update_patient_medical.php', params: {
      'token': Token,
      'user_id': user_id.toString(),
      'details_of_allergies': details_of_allergies.text,
      'current_and_past_medication': current_and_past_medication.text,
      'past_surgery_injury': past_surgery_injury.text,
      'chronic_disease': chronic_disease.text,
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
  }
}
