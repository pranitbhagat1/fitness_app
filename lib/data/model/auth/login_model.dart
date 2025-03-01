// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'login_model.g.dart';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

@JsonSerializable()
class LoginModel {
  @JsonKey(name: "code")
  int? code;
  @JsonKey(name: "message")
  String? message;
  @JsonKey(name: "status")
  String? status;
  @JsonKey(name: "login_data")
  LoginData? loginData;

  LoginModel({
    this.code,
    this.message,
    this.status,
    this.loginData,
  });

  LoginModel copyWith({
    int? code,
    String? message,
    String? status,
    LoginData? loginData,
  }) =>
      LoginModel(
        code: code ?? this.code,
        message: message ?? this.message,
        status: status ?? this.status,
        loginData: loginData ?? this.loginData,
      );

  factory LoginModel.fromJson(Map<String, dynamic> json) => _$LoginModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}

@JsonSerializable()
class LoginData {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "fk_user_type_id")
  String? fkUserTypeId;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "phone")
  String? phone;
  @JsonKey(name: "password")
  String? password;
  @JsonKey(name: "delete_status")
  String? deleteStatus;
  @JsonKey(name: "updated_at")
  String? updatedAt;
  @JsonKey(name: "created_at")
  String? createdAt;

  LoginData({
    this.id,
    this.fkUserTypeId,
    this.email,
    this.phone,
    this.password,
    this.deleteStatus,
    this.updatedAt,
    this.createdAt,
  });

  LoginData copyWith({
    String? id,
    String? fkUserTypeId,
    String? email,
    String? phone,
    String? password,
    String? deleteStatus,
    String? updatedAt,
    String? createdAt,
  }) =>
      LoginData(
        id: id ?? this.id,
        fkUserTypeId: fkUserTypeId ?? this.fkUserTypeId,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        password: password ?? this.password,
        deleteStatus: deleteStatus ?? this.deleteStatus,
        updatedAt: updatedAt ?? this.updatedAt,
        createdAt: createdAt ?? this.createdAt,
      );

  factory LoginData.fromJson(Map<String, dynamic> json) => _$LoginDataFromJson(json);

  Map<String, dynamic> toJson() => _$LoginDataToJson(this);
}
