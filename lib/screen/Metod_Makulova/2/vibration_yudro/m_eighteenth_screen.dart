import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../info_classes/m_inference.dart';
import '../../../../info_classes/m_info.dart';
import '../../../../info_classes/m_yudro.dart';
import '../../../../info_classes/percent.dart';
import '../../../../utils/text_style.dart';

class MEighteenthScreen extends StatelessWidget {
  const MEighteenthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final inferenceY = Provider.of<InferenceY>(context);
    final decisionY = Provider.of<Yudro>(context).decisionY;
    final situationY = Provider.of<Yudro>(context).situationY;
    final placebodyY = Provider.of<Yudro>(context).placebodyY;
    final instinctY = Provider.of<Yudro>(context).instinctY;
    final decidedBehavesY = Provider.of<InferenceY>(context).decidedBehavesY;
    final purpose = Provider.of<Cangefelling>(context).purpose;
    final percent = Provider.of<Percent>(context).percentOne;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '18 ЛОГИЧЕСКИЕ СВЯЗИ',
          style: TextStyleG.AppBarTextStyle,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(children: [
              Text(
                'Входи в то, что осталось от этого чувства «$placebodyY», становись им. Положи руку на это место в теле. И обращаясь внутрь себя, вглубь себя, я вслух, ты про себя: ',
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
                              ' Я разрываю связь между тем, что «$situationY» (ситуация в ядре), и тем, что я решил «$decisionY».',
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
                              ' Я разрываю связь между тем, что «$situationY», и тем, что я решил «$decidedBehavesY».',
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
                              ' Я разрываю связь между тем, что «$situationY», и тем, что я решил «$instinctY».',
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
          // percent.changePO(percentOneController.text);
          // // data.change(dataController.text);

          // // print(name.name.toString());
          // print(percent.percentOne.toString());
          Navigator.pushNamed(context, '/M19');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
