import 'package:flutter/material.dart';

abstract class TextStyleG {
  static const SimpleTextStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: Color.fromARGB(255, 70, 70, 70),
    // color: Colors.white,
  );
  static const TextButtomStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: Color.fromARGB(255, 246, 117, 117),
    // color: Colors.white,
  );
  static const buttomTextStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: Color.fromARGB(255, 255, 255, 255)
      // color: Colors.white,
      );
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
