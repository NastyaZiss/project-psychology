import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/info_classes/m_inference.dart';

import '../../../../info_classes/m_info.dart';
import '../../../../info_classes/m_yudro.dart';
import '../../../../utils/text_style.dart';
import '../m_twelfteenth_screen.dart';

class MTwentySevenandSixScreen extends StatelessWidget {
  MTwentySevenandSixScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final problem = Provider.of<Problem>(context).problem;
    final purpose = Provider.of<Cangefelling>(context).cangefelling;
    final instinct = Provider.of<Instinct>(context).instinct;
    final decision = Provider.of<Instinct>(context).decision;
    final decidedBehaves = Provider.of<InferenceClass>(context).decidedBehaves;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '26.5 РАБОТА С ВЫВОДОМ',
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
                      'Становись там маленьким собой, которого ты простил. Глядя на все это по-новому, какие там новые выводы можно сделать, новые решения принять, чтобы потом в тех ситуациях, где «$problem» (проблема Клиента), начать реагировать по-новому «$purpose» (Цель Клиента).',
                  numText: '1. '),
              TextNum(
                  mainText:
                      'Какой вывод вместо «$instinct»? Как себя физически чувствовать в подобных ситуациях (Например, спокойно)',
                  numText: '2. '),
              TextNum(
                  mainText:
                      'Какой вывод вместо «$decision»? Как себя эмоционально чувствовать в подобных ситуациях (Например, уверенно)',
                  numText: '3. '),
              TextNum(
                  mainText:
                      'Какой вывод вместо «$decidedBehaves»? Как вести себя в подобных ситуациях (Например, разбираться с проблемами, если возникнут)',
                  numText: '4. '),
              TextNum(
                  mainText:
                      'Как себя вести вместо «$problem» (проблема Клиента) (Например, выражать себя, выступать публично, жить полной жизнью).',
                  numText: '5. '),
              TextNum(
                  mainText:
                      'Какой вывод новый, эффективный , можно сделать О СЕБЕ?(хороший, нужный, уверенный и т.д.)',
                  numText: '6. '),
              TextNum(
                  mainText: 'Какой новый вывод можно сделать О ДРУГИХ?',
                  numText: '7. '),
              TextNum(
                  mainText:
                      'Какой новый позитивный вывод можно сделать О МИРЕ?',
                  numText: '7. '),
            ]),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/M27');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
