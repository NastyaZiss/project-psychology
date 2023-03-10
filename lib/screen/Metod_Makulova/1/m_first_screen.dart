import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/main.dart';

import '../../../info_classes/m_info.dart';
import '../../../utils/text_style.dart';
import '../../../widget/text_input.dart';

class MFirstScreen extends StatefulWidget {
  MFirstScreen({super.key});

  @override
  State<MFirstScreen> createState() => _MFirstScreenState();
}

class _MFirstScreenState extends State<MFirstScreen> {
  final _problemfocus = FocusNode();
  final _situationfocus = FocusNode();
  final _changefellingfocus = FocusNode();

  final problemController = TextEditingController();
  final situationController = TextEditingController();
  final changefellingController = TextEditingController();

  @override
  void dispose() {
    _problemfocus.dispose();
    _situationfocus.dispose();
    _changefellingfocus.dispose();
    problemController.dispose();
    situationController.dispose();
    changefellingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final name = Provider.of<Name>(context);
    final problem = Provider.of<Problem>(context);
    final situation = Provider.of<Situation>(context);
    final cangefelling = Provider.of<Cangefelling>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ПОДГОТОВКА',
          style: TextStyleG.AppBarTextStyle,
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
                                '${Provider.of<Name>(context, listen: true).name}, чем конкретно вы хотите поработать?',
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
                            text: 'В каких ситуациях это составляет проблему?',
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
                  textChild:
                      ('Ситуация клиента ${Provider.of<Name>(context, listen: true).name}'),
                  Controller: situationController,
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
                Consumer<Name>(
                  builder: (context, name, _) => TextFormFieldWidget(
                    focusNode: _changefellingfocus,
                    currentFocus: _changefellingfocus,
                    nextFocus: _situationfocus,
                    textChild: ('Чувство на замену'),
                    Controller: changefellingController,
                    // Texthelper:
                    //     '(Измерима / достижима / позитивна сформулирована)'
                  ),
                ),
              ],
            )),
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
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          problem.change(problemController.text);
          situation.change(situationController.text);
          cangefelling.change(changefellingController.text);
          print(problem.problem);
          print(situation.situation);
          print(cangefelling.cangefelling);

          Navigator.pushNamed(context, '/M2');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
