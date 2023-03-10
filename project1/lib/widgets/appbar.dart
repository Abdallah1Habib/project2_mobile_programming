import 'package:flutter/material.dart';
import 'package:project1/screens/checkout.dart';
import 'package:provider/provider.dart';

class CustApp extends StatelessWidget {
  const CustApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: ((context, newx, child) {
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
                  child: Text(
                    "${newx.selectprod.length}",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Checkout()));
                },
                icon: const Icon(Icons.add_shopping_cart),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Text(
              "\$ ${newx.price}",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      );
    }));
  }
}
