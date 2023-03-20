import 'dart:async';

import 'package:flutter/material.dart';
import 'package:skripts/screen/Metod_Makulova/2/vibration_yudro/m_nineteenth_screen.dart';
import 'package:skripts/screen/Metod_Makulova/3/m_twelfteenth_screen.dart';

import '../../../../utils/text_style.dart';

class PEndScreen extends StatefulWidget {
  const PEndScreen({super.key});

  @override
  State<PEndScreen> createState() => _PEndScreenState();
}

class _PEndScreenState extends State<PEndScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () => Navigator.pushNamed(context, '/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Center(
            child: Text(
              'КОНСУЛЬТАЦИЯ ОКОНЧЕНА!',
              style: TextStyleG.h2blackboldTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
