import 'package:flutter/material.dart';
import 'package:skripts/utils/text_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Выбор метода",
          style: TextStyleG.AppBarTextStyle,
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
                  // style: ButtonStyle(
                  //   minimumSize: MaterialStateProperty.all(const Size(10, 50)),
                  //   foregroundColor: getColor(Colors.red, Colors.pink),
                  //   backgroundColor:
                  //       getColor(Colors.teal, Color.fromARGB(255, 76, 175, 165)),
                  // ),
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
