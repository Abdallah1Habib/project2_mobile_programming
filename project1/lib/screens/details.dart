import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project1/model/items.dart';
import 'package:project1/widgets/appbar.dart';

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
        title: Consumer<Cart>(
          builder:((context,inst,child){
            return Text("${inst.locname}")
          })
        ),
        actions: [
          CustApp(),
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
            Text("\$ ${widget.prod.price}"),
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
