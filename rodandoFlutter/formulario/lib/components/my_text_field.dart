

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final dynamic controller;
  final String hintText;
  final bool obscureText;
  final String text;
  final dynamic keyBoardType;

  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.text,
      this.keyBoardType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.00),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyBoardType,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade200,
          labelText: text,
          hintText: hintText,
          labelStyle: const TextStyle(color: Colors.blue),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          suffixIcon: IconButton(
            color: Colors.blue,
            onPressed: controller.clear,
            icon: const Icon(Icons.clear),
          ),
        ),
      ),
    );
  }
}
