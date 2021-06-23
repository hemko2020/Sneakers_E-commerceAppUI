import 'package:flutter/material.dart';
import 'package:sneakersapp/pages/home.dart';
import 'package:sneakersapp/tools/custom_color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sneakers Addict',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(color1),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage());
  }
}
