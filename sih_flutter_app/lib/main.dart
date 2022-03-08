import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:sih_flutter_app/core/classes.dart';
import 'package:sih_flutter_app/core/colores.dart';
import 'package:sih_flutter_app/core/generateRoute.dart';
import 'package:sih_flutter_app/core/injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
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
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routers.generateRoute,
      theme: ThemeData(primaryColor: kColors.purpleDark, appBarTheme: AppBarTheme(color: kColors.purpleLight)),
      initialRoute: '/',
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}
