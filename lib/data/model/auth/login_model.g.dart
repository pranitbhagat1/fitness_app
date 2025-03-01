// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => LoginModel(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      status: json['status'] as String?,
      loginData: json['login_data'] == null
          ? null
          : LoginData.fromJson(json['login_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': instance.status,
      'login_data': instance.loginData,
    };

LoginData _$LoginDataFromJson(Map<String, dynamic> json) => LoginData(
      id: json['id'] as String?,
      fkUserTypeId: json['fk_user_type_id'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      deleteStatus: json['delete_status'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$LoginDataToJson(LoginData instance) => <String, dynamic>{
      'id': instance.id,
      'fk_user_type_id': instance.fkUserTypeId,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'delete_status': instance.deleteStatus,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
    };
