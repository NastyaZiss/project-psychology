import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/info_classes/m_yudro.dart';
import 'package:skripts/widget/app_bar.dart';

import '../../../info_classes/m_info.dart';
import '../../../utils/text_style.dart';
import '../../../widget/text_input.dart';
import '../metod_makulova_screen.dart';

class MFourteenthScreen extends StatelessWidget {
  MFourteenthScreen({super.key});
  final _decisionYfocus = FocusNode();

  final decisionYController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final yudro =
        Provider.of<Yudro>(context); // with decision решение в подобных сит

    return Scaffold(
      appBar: AppBarG(
        text: '14 РЕШЕНИЕ',
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
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
                  nextFocus: _decisionYfocus,
                  currentFocus: _decisionYfocus,
                  focusNode: _decisionYfocus,
                  Controller: decisionYController),
            ]),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          yudro.changeDY(decisionYController.text);

          // instinct.changeD(decisionController.text);
          print(yudro.decisionY.toString());
          Navigator.pushNamed(context, '/M15');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
