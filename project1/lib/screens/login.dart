import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: const [
        TextField(
          keyboardType: TextInputType.text,
          obscureText: true,
          decoration: InputDecoration(),
        )
      ],
    ));
  }
}
