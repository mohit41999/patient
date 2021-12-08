import 'package:flutter/material.dart';
import 'package:patient/API%20repo/api_constants.dart';
import 'package:patient/Models/doctor_profile_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DoctorController {
  late Map<String, dynamic> doctors;

  Future<DoctorProfileModel> getDoctor(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await PostData(
            PARAM_URL: 'get_doctors.php',
            params: {'token': Token, 'user_id': prefs.getString('user_id')})
        .then((value) {
      doctors = value;
    });
    return DoctorProfileModel.fromJson(doctors);
  }
}
