import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarcolor,
        title: const Text("Details Page"),
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Positioned(
                    bottom: 24,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(211, 164, 255, 193),
                          shape: BoxShape.circle),
                      child: const Text(
                        "8",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_shopping_cart),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  "\$ 15",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset('assets/images/62.jpg'),
          SizedBox(
            height: 11,
          ),
          Text("\$12.99"),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  "New",
                  style: TextStyle(fontSize: 12),
                ),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(4),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
