import 'package:flutter/material.dart';

Future<Widget> myTextField({
  required TextEditingController controller,
  required IconData icon,
  String hint = "",
  bool isPassword = false,
  Function(String)? onTextChanged,
}) async {
  return TextField(
    controller: controller,
    obscureText: isPassword,
    onChanged: onTextChanged, //replaced
    decoration: InputDecoration(
      hintText: hint, //replaced
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.black)),
      filled: true,
      fillColor: Colors.white,
      prefixIcon: Icon(icon),
      suffixIcon: isPassword ? const Icon(Icons.visibility) : null, //replaced
    ),
  );
}
