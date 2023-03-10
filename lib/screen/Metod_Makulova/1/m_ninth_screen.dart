import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/widget/text_input.dart';

import '../../../info_classes/m_info.dart';
import '../../../utils/text_style.dart';
import '../metod_makulova_screen.dart';

class MNinthScreen extends StatefulWidget {
  MNinthScreen({super.key});

  @override
  State<MNinthScreen> createState() => _MNinthScreenState();

  // @override
  // void dispose() {
  //   _decisionfocus.dispose();
  //   decisionController.dispose();
  //   super.dispose();
  // }
}

class _MNinthScreenState extends State<MNinthScreen> {
  final _decisionfocus = FocusNode();

  final decisionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final instinct =
        Provider.of<Instinct>(context); // with decision решение в подобных сит
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
            SizedBox(
              height: 20,
            ),
            TextFormFieldWidget(
                textChild: 'Решение',
                nextFocus: _decisionfocus,
                currentFocus: _decisionfocus,
                focusNode: _decisionfocus,
                Controller: decisionController),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          instinct.changeD(decisionController.text);
          print(instinct.decision.toString());
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
