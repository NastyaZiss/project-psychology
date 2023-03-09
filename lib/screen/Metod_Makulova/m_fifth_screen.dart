import 'package:flutter/material.dart';
import 'package:skripts/utils/color.dart';

import '../../utils/text_style.dart';

class MFifthScreen extends StatefulWidget {
  const MFifthScreen({super.key});

  @override
  State<MFifthScreen> createState() => _MFifthScreenState();
}

class _MFifthScreenState extends State<MFifthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '2-ТЕКСТ ИНДУКЦИЯ',
          style: TextStyleG.AppBarTextStyle,
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: '1.	', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              'Сделай приятный полный глубокий вдох С УСИЛИЕМ, как бы пропуская воздух от живота через грудь к голове и свободный НЕ полный выход БЕЗ усилий. ',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Делаете вместе с Клиентом это 30 раз, на выдохе задерживаете дыхание на столько на сколько Клиент сам может. Вдох, задежка на 15 секунд, выдох и дышишь в собственном темпе. ',
                style: TextStyleG.h4akTextStyle,
              ),
              SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: '2.	', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text: 'Закройте глаза.',
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
                          text: '3.	', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              'Обрати внимание на свои мысли по поводу «страха метро», перестань им сопротивляться, позволь самым неприятным мыслям приходить. ',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.pause_circle_filled_outlined,
                    color: ColorG.main,
                  ),
                  Text(
                    'Пауза примерно 30 секунд',
                    style: TextStyleG.h4akTextStyle,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: '3.	', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              'Обрати внимание на свои мысли по поводу «страха метро», перестань им сопротивляться, позволь самым неприятным мыслям приходить. ',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Icon(
                    Icons.pause_circle_filled_outlined,
                    color: ColorG.main,
                  ),
                  Text(
                    'Пауза примерно 30 секунд',
                    style: TextStyleG.h4akTextStyle,
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: '4.	', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              'Обрати внимание на физическую реакцию тела, когда у тебя «feeling». На то как телу хочется напрячься. Перестань сопротивляться этой реакции. ',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Icon(
                    Icons.pause_circle_filled_outlined,
                    color: ColorG.main,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Пауза примерно 30 секунд',
                    style: TextStyleG.h4akTextStyle,
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: '5.	', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              'Позволь мыслям о «feelingо» перетекать в чувство «глупый в груди» и далее перетекать в реакцию тела. ',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Icon(
                    Icons.pause_circle_filled_outlined,
                    color: ColorG.main,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Пауза примерно 30 секунд',
                    style: TextStyleG.h4akTextStyle,
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: '5.	', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              'Позволяй возникать взаимосвязи между мыслями, чувством и физической реакцией. И вместе с этой взаимосвязью позволь себе погрузиться в состояние, в котором становится доступна вся внутренняя работа.',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              Container(
                height: 180,
              ),
            ],
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/M6');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
