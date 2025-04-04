import 'package:firstapp/model/CategoryModel.dart';
import 'package:flutter/material.dart';

class Productmodel {
  final int id;
  final String title;
  final String img;
  final List<Map<String, dynamic>> sizeOption;
  final double map;
  final int counter;
  final double calories;
  final String decription;
  final double rate;
  int selectSizeIndex;
  final int CategoryID;

  Productmodel({
    required this.id,
    required this.title,
    required this.img,
    required this.sizeOption,
    required this.map,
    required this.counter,
    required this.calories,
    required this.decription,
    required this.rate,
    this.selectSizeIndex = -1,
    required this.CategoryID,
  });
}

List<Productmodel> listProduct = [
  Productmodel(
    id: 1,
    title: 'Berger',
    img: 'assets/berger.png',
    sizeOption: [
      {"size": "small", "price": 8.99},
      {"size": "Mediem", "price": 9.99},
      {"size": "Larg", "price": 10.99},
    ],
    map: 2.4,
    counter: 0,
    calories: 4,
    decription: "Delicious pizza",
    rate: 4.9,
    selectSizeIndex: -1,
    CategoryID: 1,
  ),
  Productmodel(
    id: 1,
    title: 'Shusi',
    img: 'assets/shusi.png',
    sizeOption: [
      {"size": "small", "price": 8.99},
      {"size": "Mediem", "price": 9.99},
    ],
    map: 2.4,
    counter: 0,
    calories: 4,
    decription: "Delicious pizza",
    rate: 4.9,
    selectSizeIndex: -1,
    CategoryID: 1,
  ),
];
