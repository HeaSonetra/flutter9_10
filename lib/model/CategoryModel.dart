import 'package:flutter/material.dart';

class Categorymodel {
  final int id;
  final Image img;
  final String name;

  Categorymodel({required this.id, required this.img, required this.name});
}
List<Categorymodel> listCategory = [
  Categorymodel(id: 1, img: Image.asset('assets/meat.png'), name: 'Meat'),
  Categorymodel(id: 2, img: Image.asset('assets/berger.png'), name: 'Fast Food'),
  Categorymodel(id: 3, img: Image.asset('assets/shusi.png'), name: 'Shusi'),
  Categorymodel(id: 4, img: Image.asset('assets/drink.jpg'), name: 'Shusi'),
  
];
