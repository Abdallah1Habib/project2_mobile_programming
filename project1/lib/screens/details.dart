import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project1/model/items.dart';

import '../constants.dart';

class Details extends StatefulWidget {
  Details({required this.prod});

  item prod;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool ismore = true;

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              widget.prod.imgpath,
              height: 300,
            ),
            SizedBox(
              height: 11,
            ),
            Text("\$ 15"),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 23,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      size: 23,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      size: 23,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      size: 23,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      size: 23,
                      color: Colors.yellow,
                    ),
                  ],
                ),
                SizedBox(
                  width: 77,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.edit_location,
                      size: 23,
                      color: Colors.greenAccent,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Flower Shop",
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Details: ",
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "a;ldkfja;ldkjf;alkdjf;alkjfl;kadsjflkjalkdjfklsjafl;akdsjf;lkajdfl;akjdlfkaj;dlkfja;lkdfjlakdfj;ladjflakdjf;alkjfladjsflkadjflk",
              style: TextStyle(fontSize: 18),
              maxLines: ismore ? 3 : null,
              overflow: TextOverflow.fade,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  ismore = !ismore;
                });
              },
              child: Text(
                ismore ? "Show more" : "Show less",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
