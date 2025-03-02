import 'package:fitness/constants/api_constants.dart';
import 'package:fitness/core/network/api_client.dart';
import 'package:flutter/material.dart';

Future<dynamic> callLoginApi(String phone, String password) async {
  Map<String, String> body = {"phone": phone, "password": password};
  debugPrint(ApiConstants.login);
  debugPrint("$body");
  return ApiClient().post(ApiConstants.baseURL+ApiConstants.login, body);
}
