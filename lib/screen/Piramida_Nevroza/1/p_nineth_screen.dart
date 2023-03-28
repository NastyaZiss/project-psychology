import 'package:flutter/material.dart';
import 'package:skripts/screen/Metod_Makulova/3/m_twelfteenth_screen.dart';
import 'package:skripts/widget/app_bar.dart';

import '../../../utils/text_style.dart';
import '../../Metod_Makulova/2/vibration_yudro/m_nineteenth_screen.dart';

class PNinethScreen extends StatelessWidget {
  const PNinethScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarG(
        text: '9 НОВОЕ ЗНАЧЕНИЕ СИТУАЦИИ',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              children: [
                BaseText(
                    number: '1. ',
                    mainText:
                        'Возвращайтесь к изначальной ситуации, с которой мы начали работу «Знакомый не возвращает деньги». Воспринимая ее по-новому через призму новых убеждений, что она для вас теперь значит? Чему она может вас научить? ',
                    akText:
                        'Клиент: Это всего лишь деньги. Хорошо что я дал небольшую сумму и узнал что это за человек сейчас, а не в сложный для меня момент. Я его прощаю. '),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/P10');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
