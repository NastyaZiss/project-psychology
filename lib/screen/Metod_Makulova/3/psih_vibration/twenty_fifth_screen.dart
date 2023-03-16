import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../utils/text_style.dart';
import '../../../../info_classes/m_inference.dart';
import '../../../../info_classes/m_info.dart';
import '../../../../info_classes/m_yudro.dart';
import '../../../../info_classes/percent.dart';
import '../../../../utils/text_style.dart';

class MTwentyFifthScreen extends StatelessWidget {
  const MTwentyFifthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final inference = Provider.of<InferenceY>(context);
    final decision = Provider.of<Instinct>(context).decision;
    final situationR = Provider.of<Regresion>(context).situationR;
    final placebody = Provider.of<Instinct>(context).placebody;
    final instinct = Provider.of<Instinct>(context).instinct;
    // final decidedBehaves = Provider.of<Instinct>(context).decision;
    final purpose = Provider.of<Cangefelling>(context).purpose;
    final percent = Provider.of<Percent>(context).percentTwo;
    final decidedBehaves = Provider.of<InferenceClass>(context).decidedBehaves;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '25 ЛОГИЧЕСКИЕ СВЯЗИ',
          style: TextStyleG.AppBarTextStyle,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(children: [
              Text(
                'Входи в то, что осталось от этого чувства «$placebody», становись им. Положи руку на это место в теле. И обращаясь внутрь себя, вглубь себя, я вслух, ты про себя: ',
                style: TextStyleG.h3baseTextStyle,
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: '(И)', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              ' Я разрываю связь между тем, что «$situationR» (ситуация в психотравме), и тем, что я решил «$instinct».',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: '(Р)', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              ' Я разрываю связь между тем, что «$situationR», и тем, что я решил «$decision».',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: '(В)', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              ' Я разрываю связь между тем, что «$situationR», и тем, что я решил «$decidedBehaves пусто».',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Я разрываю связь между маленьким мной в этой ситуации и взрослым здесь и сейчас.',
                style: TextStyleG.h3baseTextStyle,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Теперь я могу «$purpose» и знать, что со мной произошла эта ситуация.',
                style: TextStyleG.h3baseTextStyle,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Воспринимаю все произошедшее как опыт, а не как травму. Вдох … выдох, если раньше было «$percent процентов», то сколько сейчас остается?',
                style: TextStyleG.h3baseTextStyle,
              ),
            ]),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/M26');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
