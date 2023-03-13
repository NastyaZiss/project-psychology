import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../info_classes/m_yudro.dart';
import '../../../../utils/text_style.dart';

class MSeventeenthScreen extends StatelessWidget {
  const MSeventeenthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final situationY = Provider.of<Yudro>(context).situationY;
    final instinctY = Provider.of<Yudro>(context).instinctY;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ОБРАТНЫЙ ПРОЦЕСС',
          style: TextStyleG.AppBarTextStyle,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(children: [
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      TextSpan(
                          text: 'СПРЯТАТЬСЯ  ',
                          style: TextStyleG.h3boldTextStyle),
                      TextSpan(
                          text:
                              'И из «груди» начинай наружу выпускать все, что спряталось. ',
                          style: TextStyleG.h3baseTextStyle),
                      TextSpan(
                          text:
                              'Как почувствуешь, что дальше не выражается, скажешь мне об этом. Если раньше было «пятьдесят процентов» этого «желания спрятаться», то сколько сейчас остается? ',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
