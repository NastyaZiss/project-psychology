import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/screen/Metod_Makulova/3/m_twelfteenth_screen.dart';
import 'package:skripts/screen/main_screns/home_screen.dart';

import '../../../info_classes/m_info.dart';
import '../../../utils/text_style.dart';
import '../../../widget/text_input.dart';
import 'package:flame_splash_screen/flame_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(
        'assets/logo.gif',
      ),
      logoWidth: 100,
      // gradientBackground: Gradient.lerp(c, b, t),
      showLoader: false,
      durationInSeconds: 3,
      navigator: HomeScreen(),
    );
  }
}
