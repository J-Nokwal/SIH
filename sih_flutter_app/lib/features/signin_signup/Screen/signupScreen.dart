import 'package:flutter/material.dart';
import 'package:sih_flutter_app/core/colores.dart';

import '../../common/widgets/textFieldCustom.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColors.whitePure,
      appBar: AppBar(
        backgroundColor: kColors.whitePure,
        iconTheme: IconThemeData(color: kColors.purpleLight, size: 30),
        elevation: 0,
        title: Text("Sign Up", style: TextStyle(color: kColors.blackPure)),
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
                const SizedBox(height: 30),
                const Text("Enter your ADHAAR number", style: TextStyle(fontSize: 22)),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFieldCustom(
                      controller: TextEditingController(),
                      hintText: "Adhaar number",
                      isValid: true,
                      errorText: null,
                      obscureText: false),
                ),
                const SizedBox(height: 30),
                Image.asset("assets/images/signUpScreenimage.png", fit: BoxFit.fitWidth),
                const SizedBox(height: 30),
                Container(
                  height: 60,
                  constraints: const BoxConstraints(maxWidth: 200, minWidth: 170),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: kColors.purpleDark),
                  child: Center(child: Text("Generate OTP", style: TextStyle(fontSize: 24, color: kColors.whitePure))),
                ),
                const SizedBox(height: 30),
                const Text("Product Name", style: TextStyle(fontSize: 30)),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
