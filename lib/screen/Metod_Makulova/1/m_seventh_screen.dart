import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/screen/Metod_Makulova/3/m_twelfteenth_screen.dart';
import 'package:skripts/widget/app_bar.dart';

import '../../../info_classes/m_info.dart';
import '../../../utils/text_style.dart';
import '../../../widget/text_input.dart';

class MSeventhScreen extends StatelessWidget {
  MSeventhScreen({super.key});

  final _oldRfocus = FocusNode();
  final _otherpeoplefocus = FocusNode();
  final _placeRsfocus = FocusNode();
  final _situationRfocus = FocusNode();
  final oldRController = TextEditingController();
  final otherpeopleRController = TextEditingController();
  final placesRController = TextEditingController();
  final situationRController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final regresion = Provider.of<Regresion>(context);
    return Scaffold(
      appBar: AppBarG(
        text: '7 ВМЕСТО РЕГРЕССИ',
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextNum(
                  mainText:
                      'Хорошо, спроси у себя, « В каком я был возрасте, когда ты решило мне помогать таким образом?»',
                  numText: '3.	'),
              TextFormFieldWidget(
                focusNode: _oldRfocus,
                currentFocus: _oldRfocus,
                nextFocus: _placeRsfocus,
                Texthelper: 'Например: 3 года, 5 лет, 3 месяца',
                textChild: ('Возраст'),
                Controller: oldRController,
              ),
              SizedBox(
                height: 15,
              ),
              TextNum(
                  mainText:
                      'Хорошо. Смотри, как выглядишь, где находишься, в помещении или на улице? ',
                  numText: '4.	'),
              TextFormFieldWidget(
                focusNode: _placeRsfocus,
                currentFocus: _placeRsfocus,
                nextFocus: _otherpeoplefocus,
                textChild: ('Место'),
                Controller: placesRController,
              ),
              SizedBox(
                height: 15,
              ),
              TextNum(mainText: 'Один или с кем-то?', numText: '5.	'),
              TextFormFieldWidget(
                focusNode: _otherpeoplefocus,
                currentFocus: _otherpeoplefocus,
                nextFocus: _situationRfocus,
                textChild: ('Один или с кем-то'),
                Controller: otherpeopleRController,
              ),
              SizedBox(
                height: 15,
              ),
              TextNum(
                  mainText: 'Что там происходит, что возникает это чувство?',
                  numText: '6.	'),
              TextFormFieldWidget(
                focusNode: _situationRfocus,
                currentFocus: _situationRfocus,
                nextFocus: _placeRsfocus,
                textChild: ('Ситуация'),
                Texthelper: 'Например: мама ругает тебя',
                Controller: situationRController,
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          regresion.changeOR(oldRController.text);
          regresion.changeOPR(otherpeopleRController.text);
          regresion.changeP(placesRController.text);
          regresion.changeSR(situationRController.text);
          print(regresion.oldR.toString());
          print(regresion.situationR.toString());
          print(regresion.placeR.toString());
          print(regresion.otherpeople.toString());
          Navigator.pushNamed(context, '/M8');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
