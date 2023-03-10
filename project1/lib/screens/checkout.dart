import 'package:flutter/material.dart';
import 'package:project1/constants.dart';
import 'package:project1/widgets/appbar.dart';
import 'package:provider/provider.dart';

import '../provider/cart.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    final cartt = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarcolor,
        title: Text("Checkout"),
        actions: [
          CustApp(),
        ],
      ),
      body: SizedBox(
        height: 300,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Card();
          },
          padding: const EdgeInsets.all(8),
          itemCount: cartt.selectprod.length,
        ),
      ),
    );
  }
}
