import 'package:flutter/material.dart';
import 'package:sih_flutter_app/core/colores.dart';

import '../../common/widgets/textFieldCustom.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  TextEditingController aadhaarController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColors.whitePure,
      appBar: AppBar(
        backgroundColor: kColors.whitePure,
        iconTheme: IconThemeData(color: kColors.purpleDark, size: 30),
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
                // const SizedBox(height: 30),
                const Text("Enter your ADHAAR number", style: TextStyle(fontSize: 22)),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFieldCustom(
                      controller: aadhaarController,
                      hintText: "Adhaar number",
                      isValid: true,
                      errorText: null,
                      obscureText: false),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFieldCustom(
                      controller: usernameController,
                      hintText: "Enter New Username",
                      isValid: true,
                      errorText: null,
                      obscureText: false),
                ),

                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFieldCustom(
                      controller: passwordController,
                      hintText: "Enter new Password",
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
                  child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/otpScreen',
                            arguments: [usernameController, passwordController, aadhaarController]);
                      },
                      child: Center(
                          child: Text("Generate OTP", style: TextStyle(fontSize: 24, color: kColors.whitePure)))),
                ),
                const SizedBox(height: 30),
                // const Text("Product Name", style: TextStyle(fontSize: 30)),
                Image.asset("assets/images/DarkName.png"),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
