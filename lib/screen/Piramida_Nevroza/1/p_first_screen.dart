import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../info_classes/m_info.dart';
import '../../../utils/text_style.dart';
import '../../../widget/app_bar.dart';
import '../../../widget/text_input.dart';

class PFirstScreen extends StatelessWidget {
  PFirstScreen({super.key});

  final _problemfocus = FocusNode();
  final _situationfocus = FocusNode();
  final _changefellingfocus = FocusNode();

  final problemController = TextEditingController();
  final situationController = TextEditingController();
  final changefellingController = TextEditingController();

  // @override
  // void dispose() {
  //   _problemfocus.dispose();
  //   _situationfocus.dispose();
  //   _changefellingfocus.dispose();
  //   problemController.dispose();
  //   situationController.dispose();
  //   changefellingController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final name = Provider.of<Name>(context).name;
    final namep = Provider.of<Name>(context);

    final problem = Provider.of<Problem>(context);
    final situation = Provider.of<Situation>(context);
    final cangefelling = Provider.of<Cangefelling>(context);

    situationController.text = Provider.of<Situation>(context).situation;
    problemController.text = Provider.of<Problem>(context).problem;
    changefellingController.text =
        Provider.of<Cangefelling>(context).cangefelling;

    return Scaffold(
      appBar: AppBarG(
        text: 'ПОДГОТОВКА',
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Цель',
                  style: TextStyleG.h2TextStyle,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Form(
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                        style: TextStyleG.h3baseTextStyle,
                        children: <TextSpan>[
                          new TextSpan(
                              text: '1. ', style: TextStyleG.h3boldTextStyle),
                          new TextSpan(
                              text:
                                  '$name, чем конкретно вы хотите поработать?',
                              style: TextStyleG.h3baseTextStyle),
                        ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormFieldWidget(
                    focusNode: _problemfocus,
                    currentFocus: _problemfocus,
                    nextFocus: _situationfocus,
                    textChild: ('Ответ клиента - его проблема'),
                    Controller: problemController,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                        style: TextStyleG.h3baseTextStyle,
                        children: <TextSpan>[
                          new TextSpan(
                              text: '2. ', style: TextStyleG.h3boldTextStyle),
                          new TextSpan(
                              text:
                                  'В каких ситуациях это составляет проблему?',
                              style: TextStyleG.h3baseTextStyle),
                        ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormFieldWidget(
                    focusNode: _situationfocus,
                    currentFocus: _situationfocus,
                    nextFocus: _changefellingfocus,
                    textChild: ('Ситуации клиента $name'),
                    Controller: situationController,
                    // initialvalue: situation.situation.toString(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                        style: TextStyleG.h3baseTextStyle,
                        children: <TextSpan>[
                          new TextSpan(
                              text: '3. ', style: TextStyleG.h3boldTextStyle),
                          new TextSpan(
                              text:
                                  'Как бы вы хотели себя чувствовать в этих ситуациях вместо этого?',
                              style: TextStyleG.h3baseTextStyle),
                        ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormFieldWidget(
                    focusNode: _changefellingfocus,
                    currentFocus: _changefellingfocus,
                    nextFocus: _situationfocus,
                    textChild: ('Цель клиента'),
                    Controller: changefellingController,
                    Texthelper: 'ситуация + чувство на замену.',

                    //     '(Измерима / достижима / позитивна сформулирована)'
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                          style: TextStyleG.h3baseTextStyle,
                          children: <TextSpan>[
                            new TextSpan(
                                text: 'Цель Измерима / достижима / позитивна ',
                                style: TextStyleG.h4akTextStyle),
                            new TextSpan(
                                text: 'сформулирована',
                                style: TextStyleG.h4akboldTextStyle),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          problem.change(problemController.text);
          situation.change(situationController.text);
          cangefelling.change(changefellingController.text);
          print(problem.problem);
          print(situation.situation);
          print(cangefelling.cangefelling);

          Navigator.pushNamed(context, '/P2');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
