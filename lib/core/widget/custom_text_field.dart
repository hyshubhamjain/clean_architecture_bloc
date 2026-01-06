import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String labelText;
  final bool obscureText;
  final String? hintText;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  final Widget? prefixIcon;
  final String ? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this.focusNode,
    this.validator,   
    this.prefixIcon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: const OutlineInputBorder(borderRadius: BorderRadius.all(  Radius.circular(8.0))),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
      validator: validator,
      keyboardType: keyboardType,
      focusNode: focusNode,
      obscureText: obscureText,
    );
  }
}