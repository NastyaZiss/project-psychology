import 'package:flutter/material.dart';

abstract class TextStyleG {
  static const AppBarTextStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 25, 10, 50)
      // color: Colors.white,
      );
  static const h2TextStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.teal);
  static const h2blackboldTextStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black);

  static const h3baseTextStyle = TextStyle(
    fontSize: 16.0,
    color: Colors.black,
  );
  static const h3baseakTextStyle = TextStyle(
    fontSize: 16.0,
    color: Color.fromARGB(255, 163, 123, 231),
  );
  static const h3baseakboldTextStyle = TextStyle(
      fontSize: 16.0,
      color: Color.fromARGB(255, 163, 123, 231),
      fontWeight: FontWeight.bold);
  static const h3boldTextStyle = TextStyle(fontWeight: FontWeight.bold);

  static const h4akTextStyle = TextStyle(
    fontSize: 14.0,
    color: Color.fromARGB(255, 163, 123, 231),
  );
  static const h4akboldTextStyle = TextStyle(
    fontSize: 14.0,
    color: Colors.deepPurple,
  );

  // color: Colors.white,
}
