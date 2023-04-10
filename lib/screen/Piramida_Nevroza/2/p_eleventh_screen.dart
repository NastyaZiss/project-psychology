import 'dart:math';

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/screen/Metod_Makulova/3/m_twelfteenth_screen.dart';
import 'package:skripts/screen/main_screns/home_screen.dart';

import '../../../info_classes/m_info.dart';
import '../../../utils/text_style.dart';
import '../../../widget/text_input.dart';
import 'package:flame_splash_screen/flame_splash_screen.dart';

class EndPScreen extends StatelessWidget {
  EndPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var listImagesnotFound = [
      'assets/end_kubl.gif',
      'assets/end_smile.gif',
      // 'assets/end_two.gif',
      'assets/end_head.gif',
      // 'assets/end_result.gif',
      // 'assets/end_salit.gif',
      'assets/end_settigns.gif',
      'assets/end_peo.gif',
      'assets/end_peo2.gif',
    ];

    var _random = Random();
    var imageToShow =
        listImagesnotFound[_random.nextInt(listImagesnotFound.length - 1)];

    return EasySplashScreen(
      // logo: Image.asset(imageToShow.toString()),
      logo: Image.asset('assets/end_peo2.gif'),
      logoWidth: MediaQuery.of(context).size.height * 0.3,

      // gradientBackground: Gradient.lerp(c, b, t),
      showLoader: false,
      title: Text(
        'Консультация завершена!',
        style: TextStyleG.h2TextStyle,
      ),
      durationInSeconds: 3,
      navigator: HomeScreen(),
    );
  }
}
