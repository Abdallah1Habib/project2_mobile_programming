import 'package:flutter/material.dart';
import 'package:project1/constants.dart';
import 'package:project1/widgets/appbar.dart';
import 'package:provider/provider.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarcolor,
        title: Text("Checkout"),
        actions: [
          CustApp(),
        ],
      ),
      body: SizedBox(height: 300,
      child: ,
      ),
    );
  }
}
