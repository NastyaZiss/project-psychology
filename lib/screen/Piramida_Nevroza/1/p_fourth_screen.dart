import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../info_classes/m_info.dart';
import '../../../utils/text_style.dart';
import '../../../widget/text_input.dart';
import '../../Metod_Makulova/3/m_twelfteenth_screen.dart';

class PFourthScreen extends StatelessWidget {
  PFourthScreen({super.key});
  final _placefocus = FocusNode();
  final _aboutnegativfocus = FocusNode();
  final _placeTwofocus = FocusNode();

  final placeController = TextEditingController();
  final aboutnegativController = TextEditingController();
  final placeTwoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final placeandaboutnegativ = Provider.of<Diagnostic>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '1-ДИАГНОСТИКА',
          style: TextStyleG.AppBarTextStyle,
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            children: [
              TextNum(
                  mainText:
                      'Закрой глаза. Мысленно окажитесь в этой ситуации ? ',
                  numText: '1.	'),
              TextNum(
                  mainText:
                      'Где у вас в теле возникает дискомфортное чувство? В груди, в животе, в горле? ',
                  numText: '2.	'),
              TextFormFieldWidget(
                focusNode: _placeTwofocus,
                nextFocus: _aboutnegativfocus,
                currentFocus: _placeTwofocus,
                textChild: ('Место'),
                Controller: placeTwoController,
              ),
              SizedBox(
                height: 20,
              ),
              TextNum(
                  mainText:
                      'Спросите себя: что конкретно могло бы произойти, чтобы это чувство усилилось? Что бы вам могли сказать или сделать в этой ситуации?',
                  numText: '3.	'),
              TextNum(
                  mainText:
                      'Далее, представьте, что это произошло, скажите, каким вы себя почувствуете, если с вами это произойдет.',
                  numText: '4.	'),
              TextFormFieldWidget(
                focusNode: _aboutnegativfocus,
                nextFocus: _placefocus,
                currentFocus: _aboutnegativfocus,
                textChild: ('Негативное самоопределение'),
                Controller: aboutnegativController,
              ),
              SizedBox(
                height: 15,
              ),
              TextNum(
                  mainText:
                      'Где у вас в теле возникает дискомфортное чувство? В груди, в животе, в горле?',
                  numText: '5.	'),
              TextFormFieldWidget(
                focusNode: _placefocus,
                currentFocus: _placefocus,
                nextFocus: _aboutnegativfocus,
                textChild: ('Место'),
                Controller: placeController,
              ),
              SizedBox(
                height: 130,
              )
            ],
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          placeandaboutnegativ.changeP(placeController.text);
          print(placeandaboutnegativ.placebody.toString());

          placeandaboutnegativ.changeAN(aboutnegativController.text);
          print(placeandaboutnegativ.aboutnegativ.toString());
          Navigator.pushNamed(context, '/P5');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
