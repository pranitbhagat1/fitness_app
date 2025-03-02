import 'package:fitness/constants/api_constants.dart';
import 'package:fitness/core/network/api_client.dart';
import 'package:flutter/material.dart';

Future<dynamic> callGymSignup(
    String email, String password, String phone, String ownerName,String gymName, String gymType,
    String address, String state, String city, String pincode, String openTime,
    String closeTime, String userType
    ) async {

  Map<String, String> body = {
    "email": email,
    "password": password,
    "phone": phone,
    "owner_name": ownerName,
    "gym_name": gymName,
    "gym_type": gymType,
    "address": address,
    "state": state,
    "city": city,
    "pincode": pincode,
    "open_time": openTime,
    "close_time": closeTime,
    "user_type": userType,
  };
  debugPrint(ApiConstants.gymSignup);
  debugPrint("$body");
  return ApiClient().post(ApiConstants.baseURL+ApiConstants.gymSignup, body);
}