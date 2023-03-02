import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.pass,
      required this.text,
      required this.inputtype});
  final bool pass;
  final String text;
  final TextInputType inputtype;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputtype,
      obscureText: pass,
      decoration: InputDecoration(
        hintText: text,
        enabledBorder:
            OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        filled: true,
        contentPadding: const EdgeInsets.all(8),
      ),
    );
  }
}
