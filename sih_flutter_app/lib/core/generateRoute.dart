import 'package:flutter/material.dart';
import 'package:sih_flutter_app/features/common/widgets/splashScreen.dart';
import 'package:sih_flutter_app/features/signin_signup/Screen/otpScreen.dart';
import 'package:sih_flutter_app/features/signin_signup/Screen/signinScreen.dart';

import '../features/signin_signup/Screen/chooseCollegeScreen.dart';
import '../features/signin_signup/Screen/signupScreen.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => ChooseCollegeScreen());
      case '/splashScreen':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/signinScreen':
        return MaterialPageRoute(builder: (_) => SignInScreen());
      case '/signUpScreen':
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case '/otpScreen':
        return MaterialPageRoute(builder: (_) => OtpScreen());
      case '/chooseCollegeScreen':
        return MaterialPageRoute(builder: (_) => ChooseCollegeScreen());
      case '/f':
        return MaterialPageRoute(builder: (_) => Container());
      case '/g':
        return MaterialPageRoute(builder: (_) => Container());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
