import 'package:flutter/material.dart';

import '../../utils/text_style.dart';
import 'metod_makulova_screen.dart';

class MNinthScreen extends StatefulWidget {
  const MNinthScreen({super.key});

  @override
  State<MNinthScreen> createState() => _MNinthScreenState();
}

class _MNinthScreenState extends State<MNinthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'РЕШЕНИЕ',
          style: TextStyleG.AppBarTextStyle,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(children: [
            RichText(
              text: TextSpan(
                  style: TextStyleG.h3baseTextStyle,
                  children: <TextSpan>[
                    new TextSpan(
                        text: '1. ', style: TextStyleG.h3boldTextStyle),
                    new TextSpan(
                        text:
                            'Как решил чувствовать себя в подобных ситуациях дальше? ',
                        style: TextStyleG.h3baseTextStyle),
                  ]),
            ),
            new ListTile(
              leading: new MyBullet(),
              title: new Text('Бояться'),
            ),
            new ListTile(
              leading: new MyBullet(),
              title: new Text('Обижаться, Злиться'),
            ),
            new ListTile(
              leading: new MyBullet(),
              title: new Text('Винить'),
            ),
            new ListTile(
              leading: new MyBullet(),
              title: new Text('Стыдиться'),
            ),
            new ListTile(
              leading: new MyBullet(),
              title: new Text('Быть одиноким, Грустить'),
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/M10');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}



//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'РЕШЕНИЕ',
//           style: TextStyleG.AppBarTextStyle,
//         ),
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(17.0),
//           child: Column(children: [
            
//           ]),
//         ),
//       ),
//     );
//   }
// }
