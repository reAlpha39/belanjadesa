import 'package:flutter/material.dart';

InputDecoration formFieldStyle(String hint) {
  return InputDecoration(
    border: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
    ),
    contentPadding: const EdgeInsets.all(10),
    hintText: hint,
  );
}
