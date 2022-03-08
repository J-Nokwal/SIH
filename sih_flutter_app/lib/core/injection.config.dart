// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'dart:async' as _i5;

import 'package:connectivity_plus/connectivity_plus.dart' as _i6;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'classes.dart' as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get, {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModulesss = _$RegisterModulesss();
  gh.factory<_i3.A>(() => _i3.A());
  gh.factory<_i3.B>(() => _i3.B.createFactory());
  gh.lazySingleton<_i4.Dio>(() => registerModulesss.dio);
  gh.lazySingleton<_i5.Stream<_i6.ConnectivityResult>>(() => registerModulesss.connectivityResult);
  gh.factory<_i3.C>(() => _i3.C(get<_i5.Stream<_i6.ConnectivityResult>>()));
  return get;
}

class _$RegisterModulesss extends _i3.RegisterModulesss {}
