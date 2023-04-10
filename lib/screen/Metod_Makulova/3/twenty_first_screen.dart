import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/info_classes/m_yudro.dart';
import 'package:skripts/widget/app_bar.dart';

import '../../../info_classes/m_info.dart';
import '../../../utils/text_style.dart';
import 'm_twelfteenth_screen.dart';

class MTwentyFirstScreen extends StatelessWidget {
  const MTwentyFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final problem = Provider.of<Problem>(context).problem;
    final purpose = Provider.of<Cangefelling>(context).purpose;
    final instinctY = Provider.of<Yudro>(context).instinctY;
    final situationY = Provider.of<Yudro>(context).situationY;
    final decisionY = Provider.of<Yudro>(context).decisionY;
    final oldY = Provider.of<Yudro>(context).oldY;
    return Scaffold(
      appBar: AppBarG(
        text: '21 ТЕСТ В СИТУАЦИИ',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextNum(
                    mainText:
                        'Возвращайся в «$oldY, когда $situationY» с новыми решениями, новыми выводами, реагируя по-новому. ',
                    numText: '1. '),
                TextNum(
                    mainText:
                        'Происходит все то же самое «$situationY», но ты относишься к этому по-новому, как к опыту и возможности чему-то научиться. Как там сейчас реагируешь? ',
                    numText: '2. '),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/M22');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
