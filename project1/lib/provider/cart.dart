import 'package:flutter/material.dart';
import 'package:project1/model/items.dart';

class Cart with ChangeNotifier {
  List selectprod = [];

  additem(item product){
    selectprod.add(product);
  }
}
