import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sih_flutter_app/core/bloc/verifyAuth/verifyauth_bloc.dart';
import 'package:sih_flutter_app/core/classes.dart';
import 'package:sih_flutter_app/core/colores.dart';
import 'package:sih_flutter_app/core/generateRoute.dart';
import 'package:sih_flutter_app/core/injection.dart';
import 'package:hive/hive.dart';
// import 'core/bloc/verifyAuth/verifyauth_bloc.dart';
import 'core/hiveStorage/hiveStorage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await Hive.initFlutter();

  Hive.registerAdapter(AuthHiveAdapter());
  await Hive.openBox<AuthHive>('authHive');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = getIt<Stream<ConnectivityResult>>();
    c.listen((event) {
      print(event.toString());
    });
    return BlocProvider<VerifyauthBloc>(
      create: (context) => getIt<VerifyauthBloc>()..add(const VerifyauthEvent.checkAuth()),
      child: Builder(builder: (context) {
        return BlocListener<VerifyauthBloc, VerifyauthState>(
          listener: (context, state) {},
          child: MaterialApp(
            title: 'Material App',
            debugShowCheckedModeBanner: false,
            onGenerateRoute: Routers.generateRoute,
            theme: ThemeData(primaryColor: kColors.purpleDark, appBarTheme: AppBarTheme(color: kColors.purpleLight)),
            initialRoute: '/splashScreen',
          ),
        );
      }),
    );
  }
}
