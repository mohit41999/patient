import 'package:flutter/material.dart';
import 'package:patient/API%20repo/api_constants.dart';
import 'package:patient/Models/doctor_profile_model.dart';
import 'package:patient/Models/doctor_profile_one_model.dart';
import 'package:patient/Models/slot_time_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DoctorProfileOneController {
  late Map<String, dynamic> doctordetails;
  late Map<String, dynamic> slot_time;
  bool loading = true;
  bool slotloading = true;
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

  Future<SlotTime> getSlotTime(
      BuildContext context, String doctor_id, String date) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await PostData(PARAM_URL: 'time_slot.php', params: {
      'token': Token,
      'user_id': prefs.getString('user_id'),
      'doctor_id': doctor_id,
      'date': date,
    }).then((value) {
      slot_time = value;
    });
    return SlotTime.fromJson(slot_time);
  }
}
