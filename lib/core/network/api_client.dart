import 'dart:async';
import 'dart:convert';
import 'dart:io';

/*import 'package:dio/dio.dart';
import 'package:fitness/constants/app_keys.dart';
import 'package:fitness/core/error/custom_exception.dart';
import 'package:fitness/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';*/
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// @lazySingleton
class ApiClient{
  /*final Dio _dio;

  ApiClient(this._dio);

  dynamic get(
      String path, {
        Map<String, dynamic>? queryParameters,
        bool requiresToken = false,
        Map<String, dynamic>? params,
        bool extractData = true,
      }) async {
    try {
      final response = await _dio.get(
        path,
        queryParameters: queryParameters,
        data: params,
        options: Options(
          headers: {
            // 'Authorization': requiresToken ? 'Bearer ${await _tokenService.getToken()}' : '',
          },
        ),
      );
      // debugPrint("print all -->\n\n\n${response.data['data']}",
      //     wrapWidth: 6000);
      return extractData ? response.data['data'] : response.data;
    } on DioException catch (e) {
      debugPrint('Status Code : ${e.response?.statusCode}');
      debugPrint('Status Message ${e.response?.statusMessage}');
      debugPrint('Response ${e.response?.data}');
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw TimeoutException(e.message);
      }
      if (e.type == DioExceptionType.unknown) {
        if (e.message!.contains('SocketException')) {
          throw SocketException(e.message ?? "");
        }
      }
      if (e.type == DioExceptionType.badResponse) {
        if (e.response?.statusCode == 102) {
          throw CustomException(errorCode: e.response?.statusCode);
        }
        if (e.response?.statusCode == 502) {
          throw CustomException(errorCode: e.response?.statusCode);
        }
        if (e.response?.statusCode == 401) {
          navigatorKey.currentState!.context.go(Routes.logout);
          throw CustomException(errorCode: e.response?.statusCode);
        }
      }
      if (e.response?.data is Map<String, dynamic>) {
        throw CustomException(
            errorCode: e.response?.statusCode,
            errorMessage:
            e.response?.data['message'] ?? e.response?.statusMessage);
      }
      throw CustomException(
        errorCode: e.response?.statusCode,
        errorMessage: e.response?.data['message'] ?? e.response?.statusMessage,
      );
    }
  }

  dynamic put(
      String path, {
        Map<String, dynamic>? params,
        Map<String, dynamic>? queryParams,
        bool requiresToken = true,
        bool isFormData = false,
        FormData? formData,
        bool extractData = true,
      }) async {
    try {
      final headers = {
        // 'Authorization':
        // requiresToken ? 'Bearer ${await _tokenService.getToken()}' : '',
      };

      final response = await _dio.put(
        path,
        data: isFormData ? formData! : params,
        queryParameters: queryParams,
        options: Options(
          contentType: isFormData ? Headers.formUrlEncodedContentType : null,
          // headers: headers,
        ),
      );
      debugPrint("print all -->\n\n\n${response.data}", wrapWidth: 6000);

      return extractData ? response.data['data'] : response.data;
    } on DioException catch (e) {
      debugPrint('Status Code : ${e.response?.statusCode}');
      debugPrint('Status Message ${e.response?.statusMessage}');
      debugPrint('Response ${e.response?.data}');

      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw TimeoutException(e.message);
      }
      if (e.type == DioExceptionType.unknown) {
        if (e.message!.contains('SocketException')) {
          throw SocketException(e.message ?? "");
        }
        if (e.message!.contains('HandshakeException')) {
          throw HandshakeException(e.message ?? "");
        }
      }
      if (e.type == DioExceptionType.badResponse) {
        if (e.response?.statusCode == 401) {
          navigatorKey.currentState!.context.go(Routes.logout);

          throw CustomException(errorCode: e.response?.statusCode);
        }
        if (e.response?.statusCode == 102) {
          throw CustomException(errorCode: e.response?.statusCode);
        }
        if (e.response?.statusCode == 502) {
          throw CustomException(errorCode: e.response?.statusCode);
        }
      }
      if (e.response?.data is Map<String, dynamic>) {
        throw CustomException(
            errorCode: e.response?.statusCode,
            errorMessage:
            e.response?.data['message'] ?? e.response?.statusMessage);
      }
      throw CustomException(
          errorCode: e.response?.statusCode,
          errorMessage: e.response?.statusMessage);
    }
  }

  dynamic post(
      String path, {
        Map<String, dynamic>? params,
        Map<String, dynamic>? queryParams,
        bool requiresToken = true,
        bool isFormData = false,
        FormData? formData,
        bool extractData = true,
      }) async {
    try {
      final headers = {
        // 'Authorization':
        // requiresToken ? 'Bearer ${await _tokenService.getToken()}' : '',
      };

      final response = await _dio.post(
        path,
        data: isFormData ? formData! : params,
        queryParameters: queryParams,
        options: Options(
          contentType: isFormData ? Headers.formUrlEncodedContentType : null,
          // headers: headers,
        ),
      );
      debugPrint("print all -->\n\n\n${response.data}", wrapWidth: 6000);

      return extractData ? response.data['data'] : response.data;
    } on DioException catch (e) {
      debugPrint('Status Code : ${e.response?.statusCode}');
      debugPrint('Status Message ${e.response?.statusMessage}');
      debugPrint('Response ${e.response?.data}');

      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw TimeoutException(e.message);
      }
      if (e.type == DioExceptionType.unknown) {
        if (e.message!.contains('SocketException')) {
          throw SocketException(e.message ?? "");
        }
        if (e.message!.contains('HandshakeException')) {
          throw HandshakeException(e.message ?? "");
        }
      }
      if (e.type == DioExceptionType.badResponse) {
        if (e.response?.statusCode == 401) {
          navigatorKey.currentState!.context.go(Routes.logout);
          throw CustomException(errorCode: e.response?.statusCode);
        }
        if (e.response?.statusCode == 102) {
          throw CustomException(errorCode: e.response?.statusCode);
        }
        if (e.response?.statusCode == 502) {
          throw CustomException(errorCode: e.response?.statusCode);
        }
      }
      if (e.response?.data is Map<String, dynamic>) {
        throw CustomException(
            errorCode: e.response?.statusCode,
            errorMessage:
            e.response?.data['message'] ?? e.response?.statusMessage);
      }
      throw CustomException(
          errorCode: e.response?.statusCode,
          errorMessage: e.response?.statusMessage);
    }
  }

  dynamic delete(
      String path, {
        Map<String, dynamic>? params,
        Map<String, dynamic>? queryParams,
        bool requiresToken = true,
        bool isFormData = false,
        bool extractData = true,
        FormData? formData,
      }) async {
    try {
      final response = await _dio.delete(
        path,
        data: isFormData ? formData! : params,
        queryParameters: queryParams,
        options: Options(
          contentType: isFormData ? Headers.formUrlEncodedContentType : null,
          headers: {
            // 'Authorization':
            // requiresToken ? 'Bearer ${await _tokenService.getToken()}' : '',
          },
        ),
      );
      debugPrint("print all -->\n\n\n${response.data}", wrapWidth: 3000);

      return extractData ? response.data['data'] : response.data;
    } on DioException catch (e) {
      debugPrint('Status Code : ${e.response?.statusCode}');
      debugPrint('Status Message ${e.response?.statusMessage}');
      debugPrint('Response ${e.response?.data}');

      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw TimeoutException(e.message);
      }
      if (e.type == DioExceptionType.unknown) {
        if (e.message!.contains('SocketException')) {
          throw SocketException(e.message ?? "");
        }
        if (e.message!.contains('HandshakeException')) {
          throw HandshakeException(e.message ?? "");
        }
      }
      if (e.type == DioExceptionType.badResponse) {
        if (e.response?.statusCode == 401) {
          navigatorKey.currentState!.context.go(Routes.logout);
          throw CustomException(errorCode: e.response?.statusCode);
        }
        if (e.response?.statusCode == 102) {
          throw CustomException(errorCode: e.response?.statusCode);
        }
        if (e.response?.statusCode == 502) {
          throw CustomException(errorCode: e.response?.statusCode);
        }
      }
      if (e.response?.data is Map<String, dynamic>) {
        throw CustomException(
            errorCode: e.response?.statusCode,
            errorMessage:
            e.response?.data['message'] ?? e.response?.statusMessage);
      }
      throw CustomException(
          errorCode: e.response?.statusCode,
          errorMessage: e.response?.statusMessage);
    }
  }*/

  var responseJson;

  Future <dynamic> post(String url, var body) async {
    debugPrint(url);
    return await http.post(
      Uri.parse(url),
      body: body,
      headers: {
        // "Authorization" : ""
      }).then((http.Response response) {
        final int statusCode = response.statusCode;
        if(statusCode < 200 || statusCode > 500 || json == null) {
          throw Exception("Error while fetching data");
        }
        responseJson = json.decode(response.body);
        debugPrint("$responseJson");
        return responseJson;
    }
    );
  }

  Future<dynamic> get(String url) async {
    return await http.get(
        Uri.parse(url),
      headers: {}).then((http.Response response) {
        final int statusCode = response.statusCode;
        if(statusCode < 200 || statusCode > 500 || json == null) {
          String actualError = response.body;
          String error = '{"isError": "1", "message": $actualError}';
          responseJson = json.decode(error);
          return responseJson;
        }
        responseJson = json.decode(response.body);
        return responseJson;
    });
  }

}