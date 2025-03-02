// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../injectiion/injection_module.dart' as _i1052;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final injectionModule = _$InjectionModule();
  gh.lazySingleton<_i895.Connectivity>(() => injectionModule.connectivity());
  gh.factory<String>(
    () => injectionModule.baseUrl,
    instanceName: 'baseUrl',
  );
  gh.lazySingleton<_i361.Dio>(
      () => injectionModule.dio(gh<String>(instanceName: 'baseUrl')));
  return getIt;
}

class _$InjectionModule extends _i1052.InjectionModule {}
