import 'package:flutter/material.dart';
import 'package:skripts/screen/Metod_Makulova/2/vibration_yudro/m_nineteenth_screen.dart';
import 'package:skripts/screen/Metod_Makulova/3/m_twelfteenth_screen.dart';

import '../../../../utils/text_style.dart';

class MThirtySecondScreen extends StatelessWidget {
  MThirtySecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ВЫХОД ИЗ ПОГРУЖЕНИЯ',
          style: TextStyleG.AppBarTextStyle,
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Column(children: [
                    TextNum(
                        mainText:
                            'Возвращайся в настоящий момент, глаза закрыты. Положи руку на живот и, обращаясь внутрь себя, вглубь себя, я – вслух, ты – про себя',
                        numText: '1. '),
                    TextNum(
                        mainText:
                            'разницу между мной до этой консультации и мной сейчас;',
                        numText: '- Я признаю '),
                    TextNum(
                        mainText: ' все произошедшие со мной изменения;',
                        numText: '- Я признаю '),
                    TextNum(
                        mainText:
                            'что переношу все изменения из внутреннего мира во внешний мир;',
                        numText: '- Я признаю '),
                    TextNum(
                        mainText:
                            ' что могу воспользоваться результатами всех изменений прямо сейчас. ',
                        numText: '- Я признаю '),
                    TextNum(
                        mainText:
                            'Вдох. Выдох. Глаза открываются, полностью возвращаешься назад со всеми изменениями и в прекрасном самочувствии. ',
                        numText: '3. '),
                    TextNum(mainText: 'Вопросы? Комментарии?', numText: '4. '),
                    SizedBox(
                      height: 50,
                    ),
                  ])))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/M33');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
