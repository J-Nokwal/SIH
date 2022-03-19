// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'dart:async' as _i7;

import 'package:connectivity_plus/connectivity_plus.dart' as _i8;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/homepage/bloc/opportunitiesBloc/opportunities_bloc.dart'
    as _i6;
import '../features/homepage/requests/homeScreenRequests.dart' as _i5;
import '../features/signin_signup/bloc/aadhaarpost/aadharpost_bloc.dart'
    as _i12;
import '../features/signin_signup/bloc/chooseCollege/choosecollege_bloc.dart'
    as _i10;
import '../features/signin_signup/requests/authRequests.dart' as _i9;
import 'bloc/verifyAuth/verifyauth_bloc.dart' as _i11;
import 'classes.dart' as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModulesss = _$RegisterModulesss();
  gh.factory<_i3.A>(() => _i3.A());
  gh.factory<_i3.B>(() => _i3.B.createFactory());
  gh.lazySingleton<_i4.Dio>(() => registerModulesss.dio);
  gh.singleton<_i5.HomeScreenRequests>(
      _i5.HomeScreenRequests(dio: get<_i4.Dio>()));
  gh.factory<_i6.OpportunitiesBloc>(
      () => _i6.OpportunitiesBloc(get<_i5.HomeScreenRequests>()));
  gh.lazySingleton<_i7.Stream<_i8.ConnectivityResult>>(
      () => registerModulesss.connectivityResult);
  gh.singleton<_i9.AuthRequests>(_i9.AuthRequests(dio: get<_i4.Dio>()));
  gh.factory<_i3.C>(() => _i3.C(get<_i7.Stream<_i8.ConnectivityResult>>()));
  gh.factory<_i10.ChoosecollegeBloc>(
      () => _i10.ChoosecollegeBloc(get<_i9.AuthRequests>()));
  gh.factory<_i11.VerifyauthBloc>(
      () => _i11.VerifyauthBloc(get<_i9.AuthRequests>()));
  gh.factory<_i12.AadharpostBloc>(
      () => _i12.AadharpostBloc(get<_i9.AuthRequests>()));
  return get;
}

class _$RegisterModulesss extends _i3.RegisterModulesss {}
