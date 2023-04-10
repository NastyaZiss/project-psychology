import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/utils/text_style.dart';

import '../../info_classes/p_belief.dart';
import '../../widget/main_bottom.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final belief = Provider.of<Belief>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SizedBox(
          child: Image.asset('assets/logo.png'),
          height: 50,
          width: 50,
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MainButtom(
              text: 'Метод Макулова',
              fun_onPressed: () {
                Navigator.pushNamed(context, '/MetodMakulova');
              },
            ),
            SizedBox(
              height: 20,
            ),
            MainButtom(
                text: 'Пирамида Невроза',
                fun_onPressed: () {
                  belief.clear();
                  Navigator.pushNamed(context, '/PiramidaNevroza');
                }),
            // MainButtom(text: 'Регистрация', fun_onPressed(){
            //       Navigator.pushNamed(context, '/singup');
            // },)
          ],
        ),
      )),
    );
  }

  //Пока не используется
  MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
    final getColor = (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return colorPressed;
      } else {
        return color;
      }
    };
    return MaterialStateProperty.resolveWith(getColor);
  }
}

