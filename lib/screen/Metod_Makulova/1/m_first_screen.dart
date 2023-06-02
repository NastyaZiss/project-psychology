import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/main.dart';
import 'package:skripts/screen/Metod_Makulova/3/m_twelfteenth_screen.dart';
import 'package:skripts/widget/app_bar.dart';

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
    final name = Provider.of<Name>(context).name;
    final problem = Provider.of<Problem>(context);
    final situation = Provider.of<Situation>(context);
    final cangefelling = Provider.of<Cangefelling>(context);

    return Scaffold(
      appBar: AppBarG(
        text: 'ПОДГОТОВКА',
      ),
      body: SingleChildScrollView(
        child: SafeArea(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextNum(
                    numText: '1. ',
                    mainText: '$name, чем конкретно вы хотите поработать?',
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
                  TextNum(
                    numText: '2. ',
                    mainText: 'В каких ситуациях это составляет проблему?',
                  ),
                  TextFormFieldWidget(
                    focusNode: _situationfocus,
                    currentFocus: _situationfocus,
                    nextFocus: _changefellingfocus,
                    textChild: ('Ситуация клиента $name'),
                    Controller: situationController,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextNum(
                    numText: '3. ',
                    mainText:
                        'Как бы вы хотели себя чувствовать в этих ситуациях вместо этого?',
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
      ),
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
