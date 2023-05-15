import 'package:awesome_app/home%20page/home_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp( MaterialApp(
    title: "Awesome Application",
    home: const Homepage(),
    theme: ThemeData(
      primaryColor: Colors.purple,
    ),
  ));
}
