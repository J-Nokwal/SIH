import 'package:flutter/material.dart';
import 'package:sih_flutter_app/core/colores.dart';
import 'package:sih_flutter_app/features/common/widgets/textFieldCustom.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({
    Key? key,
  }) : super(key: key);
  final String hintText = "Email";
  final TextEditingController controller = TextEditingController();
  final String? errorText = "sadfsfczs";
  final bool isValid = true;
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColors.whitePure,
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
              child: Column(
            children: [
              const SizedBox(height: 50),
              Container(
                height: 200,
                // color: kColors.whitePure,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kColors.purpleLight,
                ),
                child: const Center(child: Text("Logo")),
              ),
              const SizedBox(height: 30),
              const Text("Product Name", style: TextStyle(fontSize: 30)),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFieldCustom(
                    controller: controller,
                    hintText: hintText,
                    isValid: isValid,
                    errorText: errorText,
                    obscureText: obscureText),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFieldCustom(
                    controller: TextEditingController(),
                    hintText: "Password",
                    isValid: isValid,
                    errorText: errorText,
                    obscureText: true),
              ),
              const SizedBox(height: 30),
              Container(
                height: 60,
                constraints: const BoxConstraints(maxWidth: 200, minWidth: 100),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: kColors.purpleDark),
                child: Center(child: Text("Enter", style: TextStyle(fontSize: 24, color: kColors.whitePure))),
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/signUpScreen');
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text.rich(TextSpan(text: "First time? Sign Up ", children: [
                    TextSpan(text: "here", style: TextStyle(color: kColors.purpleDark, fontWeight: FontWeight.bold)),
                    const TextSpan(text: ".")
                  ])),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/copyWriteReservs.png"),
                  const SizedBox(width: 10),
                  const Text("All Rights Reserved")
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}
