import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/controller/counter.dart';
import 'package:provider1/view/homepage.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => Counter(), 
    child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Provider",
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
