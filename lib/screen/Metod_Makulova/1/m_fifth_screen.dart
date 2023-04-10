import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/utils/color.dart';
import 'package:skripts/widget/app_bar.dart';

import '../../../info_classes/m_info.dart';
import '../../../utils/text_style.dart';
import '../3/m_twelfteenth_screen.dart';

class MFifthScreen extends StatefulWidget {
  const MFifthScreen({super.key});

  @override
  State<MFifthScreen> createState() => _MFifthScreenState();
}

class _MFifthScreenState extends State<MFifthScreen> {
  @override
  Widget build(BuildContext context) {
    final problem = Provider.of<Problem>(context).problem;
    final aboutnegativ = Provider.of<Diagnostic>(context).aboutnegativ;
    final placebody = Provider.of<Diagnostic>(context).placebody;
    return Scaffold(
      appBar: AppBarG(
        text: '5 2-ТЕКСТ ИНДУКЦИЯ',
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextNum(
                numText: '1. ',
                mainText:
                    'Сделай приятный полный глубокий вдох С УСИЛИЕМ, как бы пропуская воздух от живота через грудь к голове и свободный НЕ полный выход БЕЗ усилий. ',
              ),
              Text(
                'Делаете вместе с Клиентом это 30 раз, на выдохе задерживаете дыхание на столько на сколько Клиент сам может. Вдох, задежка на 15 секунд, выдох и дышишь в собственном темпе. ',
                style: TextStyleG.h4akTextStyle,
              ),
              SizedBox(
                height: 30,
              ),
              TextNum(
                numText: '2.	',
                mainText: 'Закройте глаза.',
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
                              'Обрати внимание на свои мысли по поводу «$problem», перестань им сопротивляться, позволь самым неприятным мыслям приходить. ',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 15,
              ),
              PauseWidget(),
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
                              'Обрати внимание на чувство «$aboutnegativ $placebody», перестань ему сопротивляться, ведь ты много раз боролся с ним и это ни к чему не привело. Потому что это чувство часть тебя. Ты боролся с самим собой и значит никак не мог выиграть. Сдайся этому чувству, позволь ему взять верх над тобой.',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 25,
              ),
              PauseWidget(),
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
                              'Обрати внимание на физическую реакцию тела, когда у тебя «$problem». На то как телу хочется напрячься. Перестань сопротивляться этой реакции. ',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 25,
              ),
              PauseWidget(),
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
                              'Позволь мыслям о «$problem» перетекать в чувство «$aboutnegativ $placebody» и далее перетекать в реакцию тела.',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 25,
              ),
              PauseWidget(),
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

  PauseWidget() {
    return Row(
      children: [
        Icon(
          Icons.pause_circle_filled_outlined,
          color: Colors.teal,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          'Пауза примерно 30 секунд',
          style: TextStyleG.h4akTextStyle,
        )
      ],
    );
  }
}
