import 'package:fitness/constants/api_constants.dart';
import 'package:fitness/core/network/api_client.dart';
import 'package:flutter/material.dart';

Future<dynamic> callTrainerSignup(
    String email, String password, String phone, String fName,String lName, String gender,
    String dob,String address, String state, String city, String pincode, String experience
    ) async {

  Map<String, String> body = {
    "email": email,
    "password": password,
    "phone": phone,
    "f_name": fName,
    "l_name": lName,
    "gender": gender,
    "dob": dob,
    "address": address,
    "state": state,
    "city": city,
    "pincode": pincode,
    "experience": experience,
  };
  debugPrint(ApiConstants.trainerSignup);
  debugPrint("$body");
  return ApiClient().post(ApiConstants.baseURL+ApiConstants.trainerSignup, body);
}