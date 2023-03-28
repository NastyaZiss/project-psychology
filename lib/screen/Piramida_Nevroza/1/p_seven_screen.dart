import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/screen/Metod_Makulova/3/m_twelfteenth_screen.dart';
import 'package:skripts/widget/app_bar.dart';

import '../../../info_classes/m_info.dart';
import '../../../info_classes/p_belief.dart';
import '../../../utils/text_style.dart';
import '../../../widget/text_input.dart';
import '../../Metod_Makulova/2/vibration_yudro/m_nineteenth_screen.dart';

class PSeventhScreen extends StatelessWidget {
  PSeventhScreen({super.key});

  final _placefocus = FocusNode();
  final _aboutnegativfocus = FocusNode();

  final placeController = TextEditingController();
  final aboutnegativController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final placeandaboutnegativ = Provider.of<Diagnostic>(context);

    final belief = Provider.of<Belief>(context);
    return Scaffold(
      appBar: AppBarG(
        text: '7 шаг4 РАБОТА С БЛОКОМ',
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Column(children: [
                    BaseText(
                      mainText:
                          'Скажите вы готовы продолжить работать дальше и погрузиться в собственные переживания еще глубже или на этом остановиться? ',
                      akText:
                          '(Если Клиент не готов идти дальше, то переходим к созданию эффективных убеждений, если готов, то продолжаем работу с блоком).',
                      number: '1. ',
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(const Size(10, 50)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/P9');
                        },
                        child: Text('СОЗДАНИЕ ЭФФЕКТИВНЫХ УБЕЖДЕНИЙ')),
                    SizedBox(
                      height: 20,
                    ),
                    TextNum(
                        mainText:
                            'С момента рождения мы сталкиваемся с ситуациями, которые вызывают у нас дискомфорт и переживания. Со временем таких переживаний становиться так много что они мешают жить и психике надо что-то предпринять и как-то он них избавиться. ',
                        numText: '2. Если готов. '),
                    TextNum(
                        mainText:
                            'Поэтому она создает психологический блок, который удерживает под собой все ранее накопленные переживания, а человек начинает себя чувствовать более легко. Это может быть похоже на засор в трубе, который удерживает весь накопившийся мусор и грязь. Только на удержание всего этого эмоционального хлама внутри мы тратим огромное количество жизненной энергии, которую могли бы потратить на что-то более полезное. ',
                        numText: '3. '),
                    TextNum(
                        mainText:
                            'Осознавая, что когда-то в прошлом вы сами создали этот блок чтобы избавиться от боли, страха, стыда, обиды и других чувств и воспоминаний, а сейчас понимаете что все они безопасны, обратитесь внутрь себя. Я вслух, вы про себя: «Сейчас взрослый я в феврале 2022 года готов встретиться с блоком, который сам себе создал в прошлом. И эта встреча будет безопасна для меня». ',
                        numText: '4. '),
                    TextNum(
                        mainText:
                            'И позволяйте этому блоку проявляться в теле. Смотрите, где он возникает. В горле, груди, животе или где-то еще. ',
                        numText: '5. '),
                    TextFormFieldWidget(
                        textChild: 'Место',
                        Texthelper: '',
                        nextFocus: _aboutnegativfocus,
                        currentFocus: _placefocus,
                        focusNode: _placefocus,
                        Controller: placeController),
                    TextNum(
                        mainText:
                            'Если бы этот блок в горле был убеждением, то это было бы о вас, о других, о мире? И как бы оно звучало?',
                        numText: '5. '),
                    TextNum(
                        mainText:
                            'Далее делаем ШАГИ 2 пока не дойдем до «пустотности» и делаем ШАГ 3. Как мы понимаем, что дошли до пустотности? Клиент не может найти следующее дискомфортное чувство. Или может сказать: я вообще уже ничего не чувствую или позитивное чувство.',
                        numText: ''),
                    TextFormFieldWidget(
                      focusNode: _aboutnegativfocus,
                      nextFocus: _placefocus,
                      currentFocus: _aboutnegativfocus,
                      textChild: ('Негативное убеждение '),
                      Controller: aboutnegativController,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(const Size(10, 50)),
                        ),
                        onPressed: () {
                          String placeandbelief = placeController.text +
                              ' ' +
                              aboutnegativController.text;

                          placeandaboutnegativ
                              .changeAN(aboutnegativController.text);
                          placeandaboutnegativ.changeP(placeController.text);
                          print('1');
                          print(placeandaboutnegativ.placebody.toString());
                          print(placeandaboutnegativ.aboutnegativ.toString());
                          // belief.innerList.add(aboutnegativController.text);
                          Navigator.pushNamed(context, '/P5');
                        },
                        child: Text('2 шаг снова, затем 3 шаг')),
                  ])))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // belief.innerList.add(aboutnegativController.text);
          String placeandbelief =
              placeController.text + ' ' + aboutnegativController.text;

          placeandaboutnegativ.changeAN(aboutnegativController.text);
          placeandaboutnegativ.changeP(placeController.text);
          print('1');
          print(placeandaboutnegativ.placebody.toString());
          print(placeandaboutnegativ.aboutnegativ.toString());
          print(belief.innerList.reversed.toSet().toList().toString());
          Navigator.pushNamed(context, '/P8');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
