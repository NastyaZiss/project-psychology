import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/info_classes/m_inference.dart';
import 'package:skripts/info_classes/p_belief.dart';
import 'package:skripts/info_classes/p_belief.dart';

import '../../../info_classes/m_info.dart';
import '../../../info_classes/p_belief.dart';
import '../../../info_classes/p_belief.dart';
import '../../../utils/text_style.dart';
import '../../../widget/app_bar.dart';
import '../../../widget/text_input.dart';
import '../../Metod_Makulova/3/m_twelfteenth_screen.dart';

class PFourthScreen extends StatelessWidget {
  PFourthScreen({super.key});
  final _placefocus = FocusNode();
  final _aboutnegativfocus = FocusNode();
  final _situationfocus = FocusNode();

  final placeController = TextEditingController();
  final aboutnegativController = TextEditingController();
  final situationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final placeandaboutnegativ = Provider.of<Diagnostic>(context);
    final inference = Provider.of<InferenceY>(context);
    final belief = Provider.of<Belief>(context);

    situationController.text = Provider.of<Situation>(context).situation;
    placeController.text = Provider.of<Diagnostic>(context).placebody;
    aboutnegativController.text = Provider.of<Diagnostic>(context).aboutnegativ;

    return Scaffold(
      appBar: AppBarG(
        text: '4 ВЫЯВЛЕНИЕ НЕГАТИВНОГО УБЕЖДЕНИЯ ',
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            children: [
              TextNum(
                  mainText:
                      'Сделайте приятный глубокий вдох и на выдохе закройте глаза. Не открывайте их пока я вас не попрошу. Окажитесь в последней ситуации по поводу которой возникает переживание. Например: «Знакомый не возвращает деньги»',
                  numText: '1.	'),
              TextFormFieldWidget(
                focusNode: _situationfocus,
                nextFocus: _situationfocus,
                currentFocus: _aboutnegativfocus,
                textChild: ('Ситуация'),
                Controller: situationController,
              ),
              SizedBox(
                height: 20,
              ),
              TextNum(
                  mainText: 'Где в теле в этот момент дискомфорт? ',
                  numText: '2.	'),
              TextFormFieldWidget(
                focusNode: _placefocus,
                nextFocus: _aboutnegativfocus,
                currentFocus: _placefocus,
                textChild: ('Место'),
                Controller: placeController,
              ),
              SizedBox(
                height: 20,
              ),
              TextNum(
                  mainText:
                      'Понимая, что вы переживаете не столько по поводу самой ситуации, сколько из-за того что она значит лично для вас, давайте выясним какая негативная мысль/убеждение в этой ситуации у вас возникает? ',
                  numText: '4.	'),
              SizedBox(
                height: 15,
              ),
              TextNum(
                  mainText:
                      'Мы склонны разделять убеждения на три группы: «о нас», «о других» и «о мире». То есть со мной что-то не так, с другим человеком или с миром в целом.  В данном конкретном случае, что для вас значит эта ситуация?',
                  numText: '5.	'),
              TextFormFieldWidget(
                focusNode: _aboutnegativfocus,
                nextFocus: _aboutnegativfocus,
                currentFocus: _aboutnegativfocus,
                textChild: ('Негативное убеждение '),
                Controller: aboutnegativController,
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
          String placeandbelief =
              placeController.text + ' ' + aboutnegativController.text;

          placeandaboutnegativ.changeAN(aboutnegativController.text);
          placeandaboutnegativ.changeP(placeController.text);
          print('1');
          print(placeandaboutnegativ.placebody.toString());
          print(placeandaboutnegativ.aboutnegativ.toString());

          belief.innerList.add(placeandbelief);
          print(belief.innerList.reversed.toSet().toList().toString());
          Navigator.pushNamed(context, '/P5');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
