import 'package:flutter/material.dart';
import 'package:tatli/pages/homepage.dart';

void main() {
  runApp(const Kahveci());
}

class Kahveci extends StatelessWidget {
  const Kahveci({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      theme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.orange),
    );
  }
}
