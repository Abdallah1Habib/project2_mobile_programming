import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          const SizedBox(
            height: 64,
          ),
          TextField(
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter password : ",
              enabledBorder: OutlineInputBorder(
                  borderSide: Divider.createBorderSide(context)),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              filled: true,
              contentPadding: const EdgeInsets.all(8),
            ),
          ),
        ],
      ),
    ));
  }
}
