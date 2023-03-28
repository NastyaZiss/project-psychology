import 'package:flutter/material.dart';
import 'package:skripts/screen/Metod_Makulova/2/vibration_yudro/m_nineteenth_screen.dart';
import 'package:skripts/screen/Metod_Makulova/3/m_twelfteenth_screen.dart';
import 'package:skripts/widget/app_bar.dart';

import '../../../utils/text_style.dart';

class PTenthScreen extends StatelessWidget {
  const PTenthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarG(
        text: '10 ЗАВЕРШЕНИЕ КОНСУЛЬТАЦИИ',),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              children: [
                TextNum(
                    mainText:
                        'Возвращайтесь в настоящий момент, глаза закрыты. Положите руку на живот и, обращаясь внутрь себя, вглубь себя, я – вслух, вы – про себя.',
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
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/P11');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
