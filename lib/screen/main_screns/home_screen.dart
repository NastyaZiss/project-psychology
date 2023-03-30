import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/utils/text_style.dart';

import '../../info_classes/p_belief.dart';

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
          child: Image.asset('assets/logo_png.png'),
          height: 50,
          width: 50,
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.09,
              child: ElevatedButton(
                  style: ButtonStyle(),
                  onPressed: () {
                    Navigator.pushNamed(context, '/MetodMakulova');
                  },
                  child: Text('Метод Макулова')),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.09,
                child: ElevatedButton(
                    onPressed: () {
                      belief.clear();
                      
                      Navigator.pushNamed(context, '/PiramidaNevroza');
                    },
                    child: Text('Пирамида невроза'))),
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
