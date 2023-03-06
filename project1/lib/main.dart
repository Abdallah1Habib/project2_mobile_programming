import 'package:flutter/material.dart';
import 'package:project1/screens/home.dart';
import 'package:project1/screens/login.dart';
import 'package:project1/screens/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}
