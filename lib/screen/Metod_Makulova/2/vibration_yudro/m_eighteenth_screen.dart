import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/screen/Metod_Makulova/3/m_twelfteenth_screen.dart';
import 'package:skripts/widget/app_bar.dart';

import '../../../../info_classes/m_inference.dart';
import '../../../../info_classes/m_info.dart';
import '../../../../info_classes/m_yudro.dart';
import '../../../../info_classes/percent.dart';
import '../../../../utils/text_style.dart';
import '../../../../widget/text_input.dart';

class MEighteenthScreen extends StatelessWidget {
  MEighteenthScreen({super.key});

  final _percentOnefocus = FocusNode();

  final percentOneController = TextEditingController();

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
    final percentf = Provider.of<Percent>(context);
    final cangefelling = Provider.of<Cangefelling>(context).cangefelling;

    return Scaffold(
      appBar: AppBarG(
        text: '18 ЛОГИЧЕСКИЕ СВЯЗИ',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              TextNum(
                  mainText:
                      'Входи в то, что осталось от этого чувства «$placebodyY», становись им. Положи руку на это место в теле. И обращаясь внутрь себя, вглубь себя, я вслух, ты про себя: ',
                  numText: '1.  '),
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
                              ' Я разрываю связь между тем, что «$situationY» (ситуация в ядре), и тем, что я решил «$instinctY».',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: '(Р)', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              ' Я разрываю связь между тем, что «$situationY», и тем, что я решил «$decisionY»',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: '(В)', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              ' Я разрываю связь между тем, что «$situationY», и тем, что я решил «$decidedBehavesY».',
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
                'Воспринимаю все произошедшее как опыт, а не как травму. Вдох … выдох, если раньше было «$percent процентов», то сколько сейчас остается?',
                style: TextStyleG.h3baseTextStyle,
              ),
              SizedBox(
                height: 30,
              ),
              TextFormFieldWidget(
                  textChild: 'проценты',
                  Texthelper: 'например: 10, 20, 30',
                  nextFocus: _percentOnefocus,
                  currentFocus: _percentOnefocus,
                  focusNode: _percentOnefocus,
                  Controller: percentOneController),
              SizedBox(
                height: 100,
              ),
            ]),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          percentf.changePO(percentOneController.text);
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
