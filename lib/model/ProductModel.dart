import 'package:firstapp/model/CategoryModel.dart';
import 'package:flutter/material.dart';

class Productmodel {
    final int id;
    final String title;
    final double price;
    final Image img;
    final List preview;
    final double map;
    final int counter;
    final double calories;
    final int CategoryID;

  Productmodel({required this.id, required this.title, required this.price, required this.img, required this.preview, required this.map, required this.counter, required this.calories, required this.CategoryID});
}

List<Productmodel>  listProduct=[
  //Productmodel(id: 1, title: '', price: 2.7, img: img, preview: [], map: 20, counter: 0, calories: 40, CategoryID: listCategory[0].id),
];