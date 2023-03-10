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
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 300,
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      subtitle: Text(
                          "${cartt.selectprod[index].price} - ${cartt.selectprod[index].locname}"),
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage(cartt.selectprod[index].imgpath),
                      ),
                      title: Text("Product ${index}"),
                      trailing: IconButton(
                        onPressed: () {
                          cartt.removeitem(cartt.selectprod[index]);
                        },
                        icon: Icon(Icons.remove),
                      ),
                    ),
                  );
                },
                padding: const EdgeInsets.all(8),
                itemCount: cartt.selectprod.length,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Pay \$ ${cartt.price}",
              style: TextStyle(fontSize: 19),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(paybuttoncolor),
                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)))),
          )
        ],
      ),
    );
  }
}
