import 'package:flutter/material.dart';
import 'package:project1/provider/cart.dart';
import 'package:project1/screens/details.dart';
import 'package:project1/screens/home.dart';
import 'package:project1/screens/login.dart';
import 'package:project1/screens/register.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Cart();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: homepage(),
      ),
    );
  }
}
