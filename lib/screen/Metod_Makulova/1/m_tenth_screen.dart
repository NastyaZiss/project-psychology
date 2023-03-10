import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/info_classes/m_inference.dart';

import '../../../info_classes/m_info.dart';
import '../../../utils/text_style.dart';
import '../../../widget/text_input.dart';

class MTenthScreen extends StatefulWidget {
  const MTenthScreen({super.key});

  @override
  State<MTenthScreen> createState() => _MTenthScreenState();
}

class _MTenthScreenState extends State<MTenthScreen> {
  final _aboutWorldfocus = FocusNode();
  final _conclusionfocus = FocusNode(); //
  final _aboutOthersfocus = FocusNode();
  final _decidedBehavesfocus = FocusNode(); //как решил вести себя
  final _aboutYoutselffocus = FocusNode();
  final _decisiontoActfocus = FocusNode();

  final aboutWorldfController = TextEditingController();
  final conclusionController = TextEditingController();
  final aboutOthersController = TextEditingController();
  final decidedBehaveController = TextEditingController();
  final decisiontoActController = TextEditingController();
  final aboutYoutselfController = TextEditingController();

  @override
  void dispose() {
    _aboutWorldfocus.dispose();
    _conclusionfocus.dispose();
    _aboutOthersfocus.dispose();
    _decidedBehavesfocus.dispose();
    _aboutYoutselffocus.dispose();
    _decisiontoActfocus.dispose();

    aboutYoutselfController.dispose();
    decidedBehaveController.dispose();
    aboutOthersController.dispose();
    aboutWorldfController.dispose();
    conclusionController.dispose();
    decisiontoActController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final inference = Provider.of<InferenceClass>(context);
    final situationR = Provider.of<Regresion>(context).situationR;
    final data = Provider.of<DTN>(context).data;
    final name = Provider.of<Name>(context).name; //выводя
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ВЫВОД',
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
                  focusNode: _aboutYoutselffocus,
                  currentFocus: _aboutYoutselffocus,
                  nextFocus: _aboutOthersfocus,
                  Controller: aboutWorldfController),
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
                  focusNode: _aboutOthersfocus,
                  currentFocus: _aboutOthersfocus,
                  nextFocus: _aboutWorldfocus,
                  Controller: aboutOthersController),
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
                  currentFocus: _aboutWorldfocus,
                  focusNode: _aboutWorldfocus,
                  nextFocus: _decidedBehavesfocus,
                  Controller: aboutYoutselfController),
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
                          text: ' когда $situationR.',
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
                  focusNode: _decidedBehavesfocus,
                  currentFocus: _decidedBehavesfocus,
                  nextFocus: _decisiontoActfocus,
                  Controller: decidedBehaveController),
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
                  nextFocus: _decidedBehavesfocus,
                  currentFocus: _decisiontoActfocus,
                  focusNode: _decisiontoActfocus,
                  Controller: decisiontoActController),
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
                  RichText(
                    text: TextSpan(
                        style: TextStyleG.h3baseTextStyle,
                        children: <TextSpan>[
                          new TextSpan(
                              text: '4. ', style: TextStyleG.h3boldTextStyle),
                          new TextSpan(
                              text: 'Хотел бы ты их изменить?',
                              style: TextStyleG.h3baseTextStyle),
                        ]),
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
          inference.changeAO(aboutOthersController.text);

          inference.changeAW(aboutWorldfController.text);
          inference.changeAYSF(aboutYoutselfController.text);
          inference.changeDA(decisiontoActController.text);
          inference.changeC(conclusionController.text);

          print(inference.aboutOthers.toString());
          print(inference.aboutYoutself.toString());
          print(inference.aboutWorldling.toString());
          print(inference.conclusion.toString());
          print(inference.decidedBehaves.toString());
          print(inference.decisiontoAct.toString());
          Navigator.pushNamed(context, '/M11');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
