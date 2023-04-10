import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/info_classes/m_inference.dart';
import 'package:skripts/widget/app_bar.dart';

import '../../../info_classes/m_info.dart';
import '../../../info_classes/m_yudro.dart';
import '../../../utils/text_style.dart';

class MTwelfteenthScreen extends StatelessWidget {
  const MTwelfteenthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final problem = Provider.of<Problem>(context).problem;
    final purpose = Provider.of<Cangefelling>(context).cangefelling;
    final instinctY = Provider.of<Yudro>(context).instinctY;
    final decisionY = Provider.of<Yudro>(context).decisionY;
    final decidedBehavesY = Provider.of<InferenceY>(context).decidedBehavesY;

    return Scaffold(
      appBar: AppBarG(
        text: '20 РАБОТА С ВЫВОДОМ',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // Text(
              //   style: TextStyleG.h3baseTextStyle,
              // ),
              TextNum(
                  mainText:
                      'Становись там маленьким собой, которого ты простил. Глядя на все это по-новому, какие там новые выводы можно сделать, новые решения принять, чтобы потом в тех ситуациях, где «$problem» (проблема Клиента), начать реагировать по-новому «$purpose» (Цель Клиента).',
                  numText: '1. '),
              TextNum(
                  mainText:
                      'Какой вывод вместо «$instinctY»? Как себя физически чувствовать в подобных ситуациях (Например, спокойно)',
                  numText: '2. '),
              TextNum(
                  mainText:
                      'Какой вывод вместо «$decisionY»? Как себя эмоционально чувствовать в подобных ситуациях (Например, уверенно)',
                  numText: '3. '),
              TextNum(
                  mainText:
                      'Какой вывод вместо «$decidedBehavesY»? Как вести себя в подобных ситуациях (Например, разбираться с проблемами, если возникнут)',
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
          Navigator.pushNamed(context, '/M21');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}

class TextNum extends StatelessWidget {
  const TextNum({super.key, required this.mainText, required this.numText});
  final String mainText;
  final String numText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text:
              TextSpan(style: TextStyleG.h3baseTextStyle, children: <TextSpan>[
            new TextSpan(text: numText, style: TextStyleG.h3boldTextStyle),
            new TextSpan(text: mainText, style: TextStyleG.h3baseTextStyle),
          ]),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
