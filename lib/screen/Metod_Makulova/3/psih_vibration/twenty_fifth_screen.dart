import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../utils/text_style.dart';
import '../../../../info_classes/m_inference.dart';
import '../../../../info_classes/m_info.dart';
import '../../../../info_classes/m_yudro.dart';
import '../../../../info_classes/percent.dart';
import '../../../../utils/text_style.dart';
import '../../../../widget/app_bar.dart';
import '../../../../widget/text_input.dart';

class MTwentyFifthScreen extends StatelessWidget {
  MTwentyFifthScreen({super.key});

  final _percentOnefocus = FocusNode();
  final percentOneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // final inference = Provider.of<InferenceY>(context);
    final decision = Provider.of<Instinct>(context).decision;
    final situationR = Provider.of<Regresion>(context).situationR;
    final placebody = Provider.of<Instinct>(context).placebody;
    final instinct = Provider.of<Instinct>(context).instinct;
    // final decidedBehaves = Provider.of<Instinct>(context).decision;
    final cangefelling = Provider.of<Cangefelling>(context).cangefelling;
    final percentO = Provider.of<Percent>(context).percentOne;
    final decidedBehaves = Provider.of<InferenceClass>(context).decidedBehaves;
    final percent = Provider.of<Percent>(context);
    final percentT = Provider.of<Percent>(context).percentTwo;

    return Scaffold(
      appBar: AppBarG(
        text: '25 ЛОГИЧЕСКИЕ СВЯЗИ',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(children: [
              Text(
                'Входи в то, что осталось от этого чувства «$placebody» в эти $percentT, становись им. Положи руку на это место в теле. И обращаясь внутрь себя, вглубь себя, я вслух, ты про себя: ',
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
                              ' Я разрываю связь между тем, что «$situationR», и тем, что я решил «$decidedBehaves».',
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
                'Теперь я могу «$cangefelling» и знать, что со мной произошла эта ситуация.',
                style: TextStyleG.h3baseTextStyle,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Воспринимаю все произошедшее как опыт, а не как травму. Вдох … выдох, если раньше было «$percentO процентов», то сколько сейчас остается?',
                style: TextStyleG.h3baseTextStyle,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormFieldWidget(
                  textChild: 'проценты',
                  Texthelper: 'например: 10, 20, 30',
                  nextFocus: _percentOnefocus,
                  currentFocus: _percentOnefocus,
                  focusNode: _percentOnefocus,
                  Controller: percentOneController),
            ]),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          percent.changePO(percentOneController.text);
          Navigator.pushNamed(context, '/M26');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
