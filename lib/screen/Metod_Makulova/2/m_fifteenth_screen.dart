import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/info_classes/m_inference.dart';
import 'package:skripts/info_classes/m_yudro.dart';
import 'package:skripts/screen/Metod_Makulova/3/m_twelfteenth_screen.dart';

import '../../../info_classes/m_info.dart';
import '../../../utils/text_style.dart';
import '../../../widget/text_input.dart';

class MFifteenthScreen extends StatelessWidget {
  MFifteenthScreen({super.key});

  final _aboutWorldYfocus = FocusNode();
  final _conclusionYfocus = FocusNode(); //
  final _aboutOthersYfocus = FocusNode();
  final _decidedBehavesYfocus = FocusNode(); //как решил вести себя
  final _aboutYoutselfYfocus = FocusNode();
  final _decisiontoActYfocus = FocusNode();

  final aboutWorldYController = TextEditingController();
  // final conclusionYController = TextEditingController();
  final aboutOthersYController = TextEditingController();
  final decidedBehaveYController = TextEditingController();
  final decisiontoActYController = TextEditingController();
  final aboutYoutselfYController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final inferenceY = Provider.of<InferenceY>(context);
    final situationY = Provider.of<Yudro>(context).situationY;
    final data = Provider.of<DTN>(context).data;
    final name = Provider.of<Name>(context).name;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '15 ВЫВОД ЯДРО',
          style: TextStyleG.AppBarTextStyle,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(children: [
              Text(
                  style: TextStyleG.h3baseTextStyle,
                  '- Какой вывод сделал О СЕБЕ? (какой ты, если то все произошло)'),
              SizedBox(
                height: 15,
              ),
              TextFormFieldWidget(
                  textChild: 'Вывод клиента о себе',
                  focusNode: _aboutYoutselfYfocus,
                  currentFocus: _aboutYoutselfYfocus,
                  nextFocus: _aboutOthersYfocus,
                  Controller: aboutYoutselfYController),
              SizedBox(
                height: 10,
              ),
              Text(
                  style: TextStyleG.h3baseTextStyle,
                  '- Какой вывод сделал О ДРУГИХ? (какие они , если это всё произошло)'),
              SizedBox(
                height: 10,
              ),
              TextFormFieldWidget(
                  textChild: 'Вывод клиента о других',
                  focusNode: _aboutOthersYfocus,
                  currentFocus: _aboutOthersYfocus,
                  nextFocus: _aboutWorldYfocus,
                  Controller: aboutOthersYController),
              SizedBox(
                height: 10,
              ),
              Text(
                '-Какой вывод сделал О МИРЕ? (какой мир , если всё это произошло)',
                style: TextStyleG.h3baseTextStyle,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormFieldWidget(
                  textChild: 'Вывод клиента о мире',
                  currentFocus: _aboutWorldYfocus,
                  focusNode: _aboutWorldYfocus,
                  nextFocus: _decidedBehavesYfocus,
                  Controller: aboutWorldYController),
              SizedBox(
                height: 30,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: '1. Какой вывод ты сделал из этой ситуации',
                          style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text: ' когда $situationY.',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 15,
              ),
              // TextFormFieldWidget(
              //     textChild: 'Вывод клиента из ситуации',
              //     focusNode: _conclusionfocus,
              //     currentFocus: _conclusionfocus,
              //     nextFocus: _decidedBehavesfocus,
              //     Controller: conclusionController),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text:
                              '2. Как решил себя вести в подобных ситуациях дальше:',
                          style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              ' «избегать», «провоцировать», «делать вид, что ничего не происходит»? ',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldWidget(
                  textChild: 'Как решил себя вести',
                  focusNode: _decidedBehavesYfocus,
                  currentFocus: _decidedBehavesYfocus,
                  nextFocus: _decisiontoActYfocus,
                  Controller: decidedBehaveYController),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      TextSpan(
                          text: '* КАК ',
                          style: TextStyleG.h2blackboldTextStyle),
                      new TextSpan(
                          text:
                              '- Решил получать Любовь и Одобрение (свою полноценность)?',
                          style: TextStyleG.h3boldTextStyle),
                      // TextSpan(
                      //     text: ' ',
                      //     style: TextStyleG.h3baseakTextStyle),
                      // TextSpan(
                      //     text: '',
                      //     style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: '- Решил', style: TextStyleG.h3boldTextStyle),
                      TextSpan(
                          text: ', что-то покупать?',
                          style: TextStyleG.h3baseakTextStyle),
                      TextSpan(
                          text: ' (Чтобы почувствовать себя более важным)',
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
                          text: '- Решил', style: TextStyleG.h3boldTextStyle),
                      TextSpan(
                          text: ', достигать чего-то? ',
                          style: TextStyleG.h3baseakTextStyle),
                      TextSpan(
                          text: ' (Чтобы тебя признали)',
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
                          text: '- Решил', style: TextStyleG.h3boldTextStyle),
                      TextSpan(
                          text: ' угождать кому-то?  ',
                          style: TextStyleG.h3baseakTextStyle),
                      TextSpan(
                          text:
                              '(Чтобы кто-то более сильный за тебя заступился)',
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
                          text: '- Решил', style: TextStyleG.h3boldTextStyle),
                      TextSpan(
                          text: ' развлекать?',
                          style: TextStyleG.h3baseakTextStyle),
                      TextSpan(
                          text: ' (Чтобы получать внимание)',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldWidget(
                  textChild: 'Решил...',
                  nextFocus: _decidedBehavesYfocus,
                  currentFocus: _decisiontoActYfocus,
                  focusNode: _decisiontoActYfocus,
                  Controller: decisiontoActYController),
              SizedBox(
                height: 30,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: '3. Посмотри от этой ситуации вверх на  ',
                          style: TextStyleG.h3boldTextStyle),
                      TextSpan(
                          text: '«$data». ',
                          style: TextStyleG.h3baseakboldTextStyle),
                      TextSpan(
                          text:
                              'Скажи мне, там эти выводы и решения помогают или мешают «взрослому $name»?',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextNum(
                    mainText: 'Хотел бы ты их изменить?',
                    numText: '4. ',
                  ),
                ],
              ),
              SizedBox(
                height: 180,
              )
            ]),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          inferenceY.changeAO(aboutOthersYController.text);
          inferenceY.changeAW(aboutWorldYController.text);
          inferenceY.changeAYSF(aboutYoutselfYController.text);
          inferenceY.changeDBY(decidedBehaveYController.text);
          inferenceY.changeDA(decisiontoActYController.text);
          // inferenceY.changeC(conclusionYController.text);

          print(inferenceY.aboutOthersY.toString()); //
          print(inferenceY.aboutYoutselfY.toString());
          print(inferenceY.aboutWorldY.toString());
          // print(inferenceY.conclusionY.toString());
          print(inferenceY.decidedBehavesY.toString());
          print(inferenceY.decisiontoActY.toString());
          Navigator.pushNamed(context, '/M16');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
