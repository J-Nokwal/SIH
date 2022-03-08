import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sih_flutter_app/core/colores.dart';

import '../../common/widgets/textFieldCustom.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: kColors.whitePure,
      appBar: AppBar(
        backgroundColor: kColors.whitePure.withOpacity(0.5),
        iconTheme: IconThemeData(color: kColors.purpleLight, size: 30),
        elevation: 0,
        title: Text("Verify", style: TextStyle(color: kColors.blackPure)),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              // shrinkWrap: true,
              children: [
                const SizedBox(height: 50),
                Image.asset("assets/images/otpVerifyImage.png", fit: BoxFit.fitWidth),
                const SizedBox(height: 30),
                const Text("OTP Verification", style: TextStyle(fontSize: 22)),
                const SizedBox(height: 30),
                Container(
                  constraints: const BoxConstraints(maxWidth: 290),
                  child: Text.rich(
                      TextSpan(
                          text: "Enter the OTP sent on Phone number as registered with ",
                          style: const TextStyle(fontSize: 22),
                          children: [
                            TextSpan(
                                text: "ADHAAR",
                                style: TextStyle(color: kColors.purpleDark, fontWeight: FontWeight.bold))
                          ]),
                      softWrap: true,
                      textAlign: TextAlign.center),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFieldCustom(
                      controller: TextEditingController(),
                      hintText: "OTP",
                      isValid: true,
                      errorText: null,
                      obscureText: false),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/signUpScreen');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text.rich(TextSpan(text: "DIdn’t recieve?", children: [
                      TextSpan(
                          text: "Resend OTP", style: TextStyle(color: kColors.purpleDark, fontWeight: FontWeight.bold)),
                    ])),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  height: 60,
                  constraints: const BoxConstraints(maxWidth: 200, minWidth: 170),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: kColors.purpleDark),
                  child: Center(child: Text("Verify", style: TextStyle(fontSize: 24, color: kColors.whitePure))),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
