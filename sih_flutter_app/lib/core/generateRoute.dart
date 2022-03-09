import 'package:flutter/material.dart';
import 'package:sih_flutter_app/features/common/widgets/splashScreen.dart';
import 'package:sih_flutter_app/features/signin_signup/Screen/otpScreen.dart';
import 'package:sih_flutter_app/features/signin_signup/Screen/signinScreen.dart';

import '../features/applicationForm/screens/applicationFormScreen.dart';
import '../features/homepage/screens/homeScreen.dart';
import '../features/signin_signup/Screen/chooseCollegeScreen.dart';
import '../features/signin_signup/Screen/entrerollNumberScreen.dart';
import '../features/signin_signup/Screen/signupScreen.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
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
      case '/entreRollNoScreen':
        return MaterialPageRoute(builder: (_) => EntreRollNoScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/application':
        return MaterialPageRoute(builder: (_) => ApplicationFormScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
