import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/screen/Metod_Makulova/3/m_twelfteenth_screen.dart';

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
  final _otherpeopleYfocus = FocusNode();

  final otherpeopleYController = TextEditingController();
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextNum(mainText: 'В каком ты возрасте?', numText: '1. '),

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
                  height: 20,
                ),
                TextNum(
                    mainText:
                        'Что на тебя воздействует, что возникает это чувство?',
                    numText: '4. '),
                SizedBox(
                  height: 5,
                ),
                TextFormFieldWidget(
                  focusNode: _situationYfocus,
                  currentFocus: _situationYfocus,
                  nextFocus: _oldYfocus,
                  textChild: ('Что происходит'),
                  Controller: situationYController,
                ),
                SizedBox(
                  height: 30,
                ),
                TextNum(mainText: 'Один или с кем-то?', numText: '5. '),
                // SizedBox(
                //   height: 10,
                // ),
                TextFormFieldWidget(
                  focusNode: _otherpeopleYfocus,
                  currentFocus: _otherpeopleYfocus,
                  nextFocus: _otherpeopleYfocus,
                  textChild: ('Другой человек'),
                  Controller: otherpeopleYController,
                  Texthelper: 'в Им.п',
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
          yudro.changeOPRY(otherpeopleYController.text);
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
