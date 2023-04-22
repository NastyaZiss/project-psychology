import 'dart:ui';

import 'package:flutter/material.dart';

import '../utils/text_style.dart';

class OkButtom extends StatefulWidget {
  const OkButtom({super.key, required this.submiForm, required this.text});
  final Function submiForm;
  final String text;

  @override
  State<OkButtom> createState() => _OkButtomState();
}

class _OkButtomState extends State<OkButtom> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: ElevatedButton(
        onPressed: () => widget.submiForm(),
        style: ElevatedButton.styleFrom(
          backgroundColor:
              Color.fromARGB(255, 203, 144, 229), // Background color
        ),
        child: Text(
          widget.text,
          style: TextStyleG.buttomTextStyle,
        ),
      ),
    );
  }
}
