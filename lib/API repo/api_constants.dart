import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:patient/controller/NavigationController.dart';

const String BASE_URL = 'http://ciam.notionprojects.tech/api/patient/';
const String Token = '123456789';
void success(BuildContext context, dynamic value) {
  Pop(context);
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      value['message'].toString(),
      textAlign: TextAlign.center,
    ),
    duration: Duration(seconds: 2),
  ));
}

Future PostData({required String PARAM_URL, required Map params}) async {
  var response = await http.post(Uri.parse(BASE_URL + PARAM_URL), body: params);
  print(response.body);
  var Response = jsonDecode(response.body);
  return Response;
}

Future Getdata({required String PARAM_URL}) async {
  var response = await http.get(
    Uri.parse(BASE_URL + PARAM_URL),
  );
  print(response.body);
  var Response = jsonDecode(response.body);
  return Response;
}
