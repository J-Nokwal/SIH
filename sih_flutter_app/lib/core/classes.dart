import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class A {
  final String s = "hiii";
}

@injectable
class B {
  @factoryMethod
  static B createFactory() {
    var component = B(A());
    return component;
  }

  late A a;
  B(this.a);
}

@injectable
class C {
  // late Hive2 hive;
  late Stream<ConnectivityResult> d;
  C(this.d);
}

@module
abstract class RegisterModulesss {
  @lazySingleton
  Dio get dio => Dio(); // construct it the way you want
  @lazySingleton
  Stream<ConnectivityResult> get connectivityResult => Connectivity().onConnectivityChanged;
}
