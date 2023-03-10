import 'package:flutter/material.dart';
import 'package:project1/model/items.dart';

class Cart with ChangeNotifier {
  List selectprod = [];

  double price = 0;

  additem(item product) {
    selectprod.add(product);
    price += product.price.round();
    notifyListeners();
  }
}
