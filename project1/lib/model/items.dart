class item {
  String imgpath;
  double price;
  item({required this.imgpath, required this.price});
}

List<item> items = [
  item(imgpath: "assets/images/1.jpg", price: 12.99),
  item(imgpath: "assets/images/2.jpg", price: 15.99),
  item(imgpath: "assets/images/3.jpg", price: 13.99),
  item(imgpath: "assets/images/4.jpg", price: 21.99),
  item(imgpath: "assets/images/5.jpg", price: 9.99),
];
