// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project1/widgets/mytextfield.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(children: [
        SizedBox(
          height: 64,
        ),
        CustomTextField(
            pass: false,
            text: "Enter Email : ",
            inputtype: TextInputType.emailAddress),
        SizedBox(
          height: 30,
        ),
        CustomTextField(
            pass: true,
            text: "Enter Password : ",
            inputtype: TextInputType.text),
        SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("Login", style: TextStyle(fontSize: 20)),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
              padding: MaterialStateProperty.all(EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)))),
        )
      ]),
    ));
  }
}
