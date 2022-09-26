import 'package:flutter/material.dart';

InputDecoration formFieldStyle(String hint, {Widget? suffixIcon}) {
  return InputDecoration(
    border: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
    ),
    contentPadding: const EdgeInsets.all(10),
    hintText: hint,
    suffixIcon: suffixIcon,
  );
}
