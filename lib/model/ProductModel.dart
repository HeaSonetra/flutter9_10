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

  Productmodel({
    required this.id,
    required this.title,
    required this.price,
    required this.img,
    required this.preview,
    required this.map,
    required this.counter,
    required this.calories,
    required this.CategoryID,
  });
}

List<Productmodel> listProduct = [
  Productmodel(
    id: 1,
    title: 'Metting chhese pizza',
    price: 10,
    img: Image(image: AssetImage('assets/pizza1.png')),
    preview: [],
    map: 20,
    counter: 0,
    calories: 40,
    CategoryID: listCategory[0].id,
  ),
  Productmodel(
    id: 2,
    title: 'Shusi for you',
    price: 10,
    img: Image(image: AssetImage('assets/shusi.png')),
    preview: [],
    map: 20,
    counter: 0,
    calories: 50,
    CategoryID: listCategory[0].id,
  ),
  Productmodel(
    id: 3,
    title: 'Lemom cat tea',
    price: 10,
    img: Image(image: AssetImage('assets/drink.jpg')),
    preview: [],
    map: 20,
    counter: 0,
    calories: 30,
    CategoryID: listCategory[0].id,
  ),
  Productmodel(
    id: 4,
    title: 'Berger a title calories',
    price: 10,
    img: Image(image: AssetImage('assets/berger.png')),
    preview: [],
    map: 20,
    counter: 0,
    calories: 10,
    CategoryID: listCategory[0].id,
  ),
];
