import 'package:flutter/material.dart';
import 'package:installer/constants.dart';

class FlueTextField extends StatelessWidget {
  final String hint;
  final bool password;
  final TextEditingController controller;
  const FlueTextField({
    super.key,
    required this.hint,
    required this.controller,
    this.password = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: TextFormField(
        controller: controller,
        obscureText: password,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: primaryColor),
            borderRadius: BorderRadius.circular(10.0),
          ),
          filled: true,
          hintStyle: const TextStyle(color: Colors.white),
          hintText: hint,
          fillColor: secondaryColor,
        ),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
