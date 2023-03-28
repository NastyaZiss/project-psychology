import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/info_classes/m_info.dart';
import 'package:skripts/info_classes/p_controller.dart';

import '../../../info_classes/m_yudro.dart';
import '../../../utils/text_style.dart';
import '../../../widget/app_bar.dart';
import '../../../widget/text_input.dart';

class MEleventhScreen extends StatefulWidget {
  const MEleventhScreen({super.key});

  @override
  State<MEleventhScreen> createState() => _MEleventhScreenState();
}

class _MEleventhScreenState extends State<MEleventhScreen> {
  final _situationYudrofocus = FocusNode();

  final situationYudroController = TextEditingController();

  @override
  void dispose() {
    _situationYudrofocus.dispose();
    situationYudroController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final yudro = Provider.of<Yudro>(context);
    final situation = Provider.of<Situation>(context).situation;
    final oldR = Provider.of<Regresion>(context).oldR;
    final situationR = Provider.of<Regresion>(context).situationR;
    final placebody = Provider.of<Instinct>(context).placebody;
    final controller = Provider.of<ControllerYudro>(context);

    //выводя

    return Scaffold(
      appBar: AppBarG(
        text: '11 РЕГРЕССИЯ_К_ЯДРУ',
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
                      new TextSpan(
                          text: '1. ', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              'Там и тогда в $oldR лет, когда $situationR, сконцентрируйся на этом чувстве $placebody. ',
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
                          text: '2. ', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              'Находясь там и тогда в возрасте «$oldR » (возраст психотравмы), ты уже знаешь, что часто чувства не растут на пустом месте. Возможно, до этого было что-то, что послужило почвой для острой реакции на «$situationR» (описание травмы). Поэтому там и тогда сконцентрируйся на этом чувстве «$placebody»',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              // RichText(
              //   text: TextSpan(
              //       style: TextStyleG.h3baseTextStyle,
              //       children: <TextSpan>[
              //         new TextSpan(
              //             text: '1. ', style: TextStyleG.h3boldTextStyle),
              //         new TextSpan(
              //             text:
              //                 'Там и тогда в $oldR, когда $situationR, сконцентрируйся на этом чувстве $placebody. ',
              //             style: TextStyleG.h3baseTextStyle),
              //       ]),
              // ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: 'Пять. ', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text: 'Все образы пропадают, а чувство остается',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: 'Четыре. ', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              'Оно начинает тянуть тебя за собой, назад, вниз, вглубь в более ранние ситуации, связанные с данным чувством. ',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: 'Три. ', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              'В бессознательном всплывают все ситуации, связанные с данным чувством. ',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: 'Два. ', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              'Еще ниже и глубже. Настолько глубоко, что когда я хлопну в ладоши и скажу «причина», ты окажешься в самой ранней ситуации, связанной с данным чувством, в том моменте, когда оно появилось в первый раз.',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: 'Один. ', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              '«Причина» (хлопаем в ладоши). Ты там. Как выглядишь, где находишься? Внутри или снаружи?',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormFieldWidget(
                focusNode: _situationYudrofocus,
                currentFocus: _situationYudrofocus,
                nextFocus: _situationYudrofocus,
                textChild: ('место'),
                Controller: situationYudroController,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(10, 50)),
                  ),
                  onPressed: () {
                    controller.changeFalse(); //если ядра нет, то ставим фолс
                    yudro.changeSY(situationYudroController.text);
                    print(yudro.situationY.toString());
                    print(controller.controller.toString());
                    Navigator.pushNamed(context, '/M23');
                  },
                  child: Text(
                      'Если не нашли ядро, прорабатывем психотравму(ядро). Тут тогда ситуация клиента будет пустая')),
              SizedBox(
                height: 80,
              ),
            ]),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          yudro.changeSY(situationYudroController.text);
          print(yudro.situationY.toString());
          controller.changeTrue(); // Ядро есть
          print(controller.controller.toString());
          Navigator.pushNamed(context, '/M12');
        },
        tooltip: 'Дальше',
        label: Text('Если нашли Ядро'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
