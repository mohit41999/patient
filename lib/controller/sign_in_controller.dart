import 'package:flutter/material.dart';
import 'package:patient/API%20repo/api_constants.dart';
import 'package:patient/general_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'NavigationController.dart';

class SignInController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  void clearControllers() {
    email.clear();

    password.clear();
  }

  login(BuildContext context, dynamic value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('user_id', value['data']['id']);

    Push(context, GeneralScreen());
  }

  void SignIn(BuildContext context) {
    PostData(PARAM_URL: 'login.php', params: {
      'token': Token,
      'email': email.text,
      'password': password.text,
    }).then((value) {
      (value['status'])
          ? login(context, value)
          : ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(value['message']),
              duration: Duration(seconds: 1),
            ));
    });
  }
}
