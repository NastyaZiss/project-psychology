import 'package:flutter/material.dart';
import 'package:skripts/widget/app_bar.dart';

import '../../../../utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../info_classes/m_inference.dart';
import '../../../../info_classes/m_info.dart';
import '../../../../info_classes/m_yudro.dart';
import '../../../../info_classes/percent.dart';
import '../../../../utils/text_style.dart';

class MNinteenthScreen extends StatelessWidget {
  const MNinteenthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final inferenceY = Provider.of<InferenceY>(context);
    final decisionY = Provider.of<Yudro>(context).decisionY;
    final decisiontoActY = Provider.of<InferenceY>(context).decisiontoActY;
    final situationY = Provider.of<Yudro>(context).situationY;
    final placebodyY = Provider.of<Yudro>(context).placebodyY;
    final instinctY = Provider.of<Yudro>(context).instinctY;
    final decidedBehavesY = Provider.of<InferenceY>(context).decidedBehavesY;
    final purpose = Provider.of<Cangefelling>(context).purpose;
    final percent = Provider.of<Percent>(context).percentOne;
    final name = Provider.of<Name>(context).name;
    final otherpeopleY = Provider.of<Yudro>(context).otherpeopleY;
    final problem = Provider.of<Problem>(context).problem;
    return Scaffold(
      appBar: AppBarG(
        text: '19 РАБОТА С РЕШЕНИЕМ',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(children: [
              BaseText(
                number: '1. ',
                akText:
                    'Когда «$situationY», я чувствую, что... (Клиент отвечает)',
                mainText:
                    'Входи в эти $percent процентов этого чувства, предоставь ему голос. Высказывай все, что не высказал, выражай все, что не выразил. ',
              ),
              BaseText(
                number: '2. ',
                mainText:
                    'Становись «$otherpeopleY» и, глядя на «$name», отвечай. Хотела бы его «обидеть, унизить оскорбить», чтобы он начал «бояться, избегать и не выражать себя»? Или нет, ты просто «воспитывала его так, как тебе казалось правильным»?',
                akText: '(Например, Мама отвечает, что не хотела)',
              ),
              BaseText(
                number: '3. ',
                akText:
                    '(Если да - повторить работу с прощением с начала) Например, нет, ничего не мешает.',
                mainText:
                    'Становись «$name». Глядя на «$otherpeopleY», понимая, что она не хотела тебя «обидеть, унизить, оскорбить», есть что-то, что мешает ее простить? ',
              ),
              BaseText(
                number: '4. ',
                akText: '(Клиент говорит: простил)',
                mainText:
                    'Тогда глядя на «$otherpeopleY» про себя говоришь: «$otherpeopleY», я тебя прощаю за то, что ты била меня и за что-то еще, что там она тебе делала». Как простишь $otherpeopleY, скажешь мне об этом. ',
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: '5. ', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              'Посмотри внутрь себя, на того маленького себя, который решил: ',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '« $decisionY; $decidedBehavesY; $decisiontoActY; $problem».',
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
                          text:
                              '6. Есть ли что-то, что мешает простить себя? Если «Да».',
                          style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              ' «С чем придется столкнуться за что взять на себя ответственность если ты себя простишь?». Клиент отвечает. «Теперь ты готов взять на себя ответственность?»',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text:
                              '6. Если «Нет» - тогда, глядя на маленького себя: «Я себя прощаю за то, что я ошибся, решив ',
                          style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              '«$decisionY;  $decidedBehavesY; $decisiontoActY; $problem».',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              BaseText(
                  number: '7. ',
                  mainText: 'Как простишь себя, скажешь мне об этом',
                  akText: '(Говорит: простил)')
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
          Navigator.pushNamed(context, '/M20');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}

class BaseText extends StatelessWidget {
  const BaseText(
      {super.key,
      required this.number,
      required this.mainText,
      required this.akText});

  final String number;
  final String mainText;
  final String akText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        RichText(
          text:
              TextSpan(style: TextStyleG.h3baseTextStyle, children: <TextSpan>[
            new TextSpan(text: number, style: TextStyleG.h3boldTextStyle),
            new TextSpan(text: mainText, style: TextStyleG.h3baseTextStyle),
          ]),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          akText,
          style: TextStyleG.h3baseakTextStyle,
        ),
        SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}
