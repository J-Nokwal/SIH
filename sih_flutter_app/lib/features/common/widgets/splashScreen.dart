import 'package:flutter/material.dart';
import 'package:sih_flutter_app/core/colores.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColors.purpleDark,
      body: Center(
        child: Container(
          height: 200,
          // color: kColors.whitePure,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kColors.purpleLight,
          ),
          child: const Center(child: Text("Logo")),
        ),
      ),
    );
  }
}
