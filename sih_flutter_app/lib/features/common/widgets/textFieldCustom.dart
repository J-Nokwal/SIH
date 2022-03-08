import 'package:flutter/material.dart';
import 'package:sih_flutter_app/core/colores.dart';

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.isValid,
    required this.errorText,
    required this.obscureText,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final bool isValid;
  final String? errorText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(width: 1.5, style: BorderStyle.solid, color: kColors.purpleDark),
        ),
        filled: true,
        fillColor: kColors.purpleLight,
        hintText: hintText,
        errorText: isValid ? null : errorText,
      ),
      obscureText: obscureText,
    );
  }
}
