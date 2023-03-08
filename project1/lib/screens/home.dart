import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project1/constants.dart';

class item {
  String imgpath;
  double price;
  item({required this.imgpath, required this.price});
}

class homepage extends StatelessWidget {
  List itms = [
    item(imgpath: "lec2_project/project1/assets/images/1.jpg", price: 12.99),
    item(imgpath: "lec2_project/project1/assets/images/2.jpg", price: 15.99),
    item(imgpath: "lec2_project/project1/assets/images/3.jpg", price: 13.99),
    item(imgpath: "lec2_project/project1/assets/images/4.jpg", price: 21.99),
    item(imgpath: "lec2_project/project1/assets/images/5.jpg", price: 9.99),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/94.jpg"),
                          fit: BoxFit.cover)),
                  accountName: Text(
                    "Abdallah Habib",
                    style: TextStyle(color: Colors.white),
                  ),
                  accountEmail: Text("abdallahhabib55@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage("assets/images/62.jpg"),
                  ),
                ),
                ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("My products"),
                  leading: Icon(Icons.add_shopping_cart),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.help_center),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Logout"),
                  leading: Icon(Icons.exit_to_app),
                  onTap: () {},
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text("Developed by Abdallah Habib @ 2023"),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: appbarcolor,
        title: const Text("Home"),
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
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 35,
          ),
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {},
              child: GridTile(
                child: Stack(
                  children: [
                    Positioned(
                      top: -2,
                      bottom: -9,
                      right: 0,
                      left: 0,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset('assets/images/62.jpg')),
                    ),
                  ],
                ),
                footer: GridTileBar(
                  backgroundColor: Color.fromARGB(66, 73, 127, 110),
                  trailing: IconButton(
                    color: Color.fromARGB(255, 62, 94, 70),
                    onPressed: () {},
                    icon: Icon(Icons.add),
                  ),
                  leading: Text("\$14"),
                  title: Text(""),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
