import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sih_flutter_app/core/bloc/verifyAuth/verifyauth_bloc.dart';
import 'package:sih_flutter_app/core/colores.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColors.purpleDark,
      body: BlocListener<VerifyauthBloc, VerifyauthState>(
        listener: (context, state) {
          // if (state == VerifyauthState.signedin()) {}
          state.map(
              loading: (_) {},
              signedin: (s) => Navigator.of(context).pushReplacementNamed("/home", arguments: s.sudentsInformationGet),
              signedOut: (_) => Navigator.of(context).pushReplacementNamed("/signinScreen"));
        },
        child: Center(
          child: Container(
            height: 200,
            // color: kColors.whitePure,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kColors.purpleLight,
            ),
            child: Center(
                child: Column(
              children: [
                Image.asset("assets/images/ChitraGupta_Light.png"),
                SizedBox(height: 20),
                Image.asset("assets/images/Light Name.png")
              ],
            )),
          ),
        ),
      ),
    );
  }
}
