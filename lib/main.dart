import 'package:flutter/material.dart';
import 'package:petadoption/constant.dart';
import 'package:petadoption/screens/home.dart';
import 'package:petadoption/screens/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Adoption',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: Index(),
    );
  }
}
