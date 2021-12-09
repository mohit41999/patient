import 'package:flutter/material.dart';
import 'package:patient/API%20repo/api_constants.dart';
import 'package:patient/Models/doctor_profile_model.dart';
import 'package:patient/Models/doctor_profile_one_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DoctorProfileOneController {
  late Map<String, dynamic> doctordetails;
  bool loading = true;
  Future<DoctorProfileOneModel> getDoctorDetails(
      BuildContext context, String doctor_id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await PostData(PARAM_URL: 'doctor_profile_1.php', params: {
      'token': Token,
      'user_id': prefs.getString('user_id'),
      'doctor_id': doctor_id
    }).then((value) {
      doctordetails = value;
    });
    return DoctorProfileOneModel.fromJson(doctordetails);
  }
}
