import 'package:flutter/material.dart';

import '../../utils/text_style.dart';
import '../../widget/text_input.dart';

class MEleventhScreen extends StatefulWidget {
  const MEleventhScreen({super.key});

  @override
  State<MEleventhScreen> createState() => _MEleventhScreenState();
}

class _MEleventhScreenState extends State<MEleventhScreen> {
  final _placestwofocus = FocusNode();
  final _oldtwofocus = FocusNode();
  final _focus = FocusNode();

  final problemController = TextEditingController();
  final situationController = TextEditingController();
  final placestwoController = TextEditingController();

  @override
  void dispose() {
    _oldtwofocus.dispose();
    _placestwofocus.dispose();
    _oldtwofocus.dispose();
    problemController.dispose();
    situationController.dispose();
    placestwoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'РЕГРЕССИЯ_К_ЯДРУ',
          style: TextStyleG.AppBarTextStyle,
        ),
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
                              'Там и тогда в пять лет, когда лает собака, сконцентрируйся на этом чувстве в груди. ',
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
                              'Находясь там и тогда в возрасте «пяти лет» (возраст психотравмы), ты уже знаешь, что часто чувства не растут на пустом месте. Возможно, до этого было что-то, что послужило почвой для острой реакции на «лай собаки» (описание травмы). Поэтому там и тогда сконцентрируйся на этом чувстве «в груди»',
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
                          text: '1. ', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              'Там и тогда в пять лет, когда лает собака, сконцентрируйся на этом чувстве в груди. ',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
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
                              'Еще ниже и глубже. Настолько глубоко, что когда я хлопну в ладоши и скажу «причина», ты окажешься в самой ранней ситуации, связанной с данным чувством, том моменте, когда оно появилось в первый раз. ',
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
              TextFormFieldWidget(
                focusNode: _placestwofocus,
                currentFocus: _placestwofocus,
                nextFocus: _oldtwofocus,
                textChild: ('Ситуация клиента'),
                Controller: placestwoController,
              ),
            ]),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/M12');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
