import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sih_flutter_app/core/colores.dart';

import '../../common/widgets/textFieldCustom.dart';

class EntreRollNoScreen extends StatelessWidget {
  const EntreRollNoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColors.whitePure,
      appBar: AppBar(
        backgroundColor: kColors.whitePure,
        iconTheme: IconThemeData(color: kColors.purpleDark, size: 30),
        elevation: 0,
        // title: Text("Re", style: TextStyle(color: kColors.blackPure)),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                // shrinkWrap: true,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  Text("Enter Roll Number: ", style: TextStyle(fontSize: 22, color: kColors.purpleDark)),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: TextFieldCustom(
                        controller: TextEditingController(),
                        hintText: "Roll Number",
                        isValid: true,
                        errorText: null,
                        obscureText: false),
                  ),
                  const SizedBox(height: 30),
                  Image.asset("assets/images/mobileEnterRollNoImage.png", fit: BoxFit.fitWidth),
                  const SizedBox(height: 30),
                  Center(
                    child: Container(
                      height: 60,
                      alignment: Alignment.center,
                      constraints: const BoxConstraints(maxWidth: 200, minWidth: 170),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: kColors.purpleDark),
                      child: InkWell(
                        onTap: () {
                          HapticFeedback.mediumImpact();
                        },
                        child: Text("Submit", style: TextStyle(fontSize: 24, color: kColors.whitePure)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
