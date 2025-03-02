import 'package:dio/dio.dart';
import 'package:fitness/constants/api_constants.dart';
import 'package:injectable/injectable.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio_intercept_to_curl/dio_intercept_to_curl.dart';

@module
abstract class InjectionModule {
  @Named('baseUrl')
  //todo change base url
  String get baseUrl => ApiConstants.baseURL;

  @lazySingleton
  Dio dio(@Named('baseUrl') String baseUrl) => Dio(
    BaseOptions(
      baseUrl: baseUrl,
      contentType: Headers.jsonContentType,
      connectTimeout: const Duration(milliseconds: 60 * 1000),
      receiveTimeout: const Duration(milliseconds: 60 * 1000),
      sendTimeout: const Duration(milliseconds: 30 * 1000),
    ),
  )..interceptors.add(
    DioInterceptToCurl(
      printOnSuccess: true,
    ),
  );

  @lazySingleton
  Connectivity connectivity() => Connectivity();
}
