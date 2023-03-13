import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../info_classes/m_yudro.dart';
import '../../../utils/text_style.dart';
import '../../../widget/text_input.dart';

class MTwelfScreen extends StatefulWidget {
  const MTwelfScreen({super.key});

  @override
  State<MTwelfScreen> createState() => _MTwelfScreenState();
}

class _MTwelfScreenState extends State<MTwelfScreen> {
  final _situationYfocus = FocusNode();
  final _oldYfocus = FocusNode();
  // final _sfocus = FocusNode();

  // final situationYudroController = TextEditingController();
  final oldYController = TextEditingController();
  final situationYController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final yudro = Provider.of<Yudro>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ЯДРО',
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
                            text: '1. ', style: TextStyleG.h3boldTextStyle),
                        new TextSpan(
                            text: 'В каком ты возрасте? ',
                            style: TextStyleG.h3baseTextStyle),
                      ]),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormFieldWidget(
                  focusNode: _oldYfocus,
                  currentFocus: _oldYfocus,
                  nextFocus: _situationYfocus,
                  Texthelper: 'Например: 3 года, 5 лет, 3 месяца',
                  textChild: ('Возраст'),
                  Controller: oldYController,
                ),
                SizedBox(
                  height: 15,
                ),
                RichText(
                  text: TextSpan(
                      style: TextStyleG.h3baseTextStyle,
                      children: <TextSpan>[
                        new TextSpan(
                            text: '4.	', style: TextStyleG.h3boldTextStyle),
                        new TextSpan(
                            text:
                                'Что на тебя воздействует, что возникает это чувство?',
                            style: TextStyleG.h3baseTextStyle),
                      ]),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormFieldWidget(
                  focusNode: _situationYfocus,
                  currentFocus: _situationYfocus,
                  nextFocus: _oldYfocus,
                  textChild: ('Что происходит'),
                  Controller: situationYController,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // instinct.changeD(decisionController.text);
          // print(instinct.decision.toString());
          yudro.changeOY(oldYController.text);
          yudro.changeSY(situationYController.text);
          print(yudro.oldY.toString());
          print(yudro.situationY.toString());
          Navigator.pushNamed(context, '/M13');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
