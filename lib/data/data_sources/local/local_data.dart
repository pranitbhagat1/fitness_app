import 'package:shared_preferences/shared_preferences.dart';

class PreferenceManager{

  String userId = "userId";
  String typeId = "typeId";
  String email = "email";
  String phone = "phone";

  Future<bool> setUserId(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userId, value);
  }

  Future<String> getUserId() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userId)??"";
  }

  Future<bool> setTypeId(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(typeId, value);
  }

  Future<String> getTypeId() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(typeId)??"";
  }

  Future<bool> setEmail(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(email, value);
  }

  Future<String> getEmail() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(email)??"";
  }

  Future<bool> setPhone(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(phone, value);
  }

  Future<String> getPhone() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(phone)??"";
  }

}