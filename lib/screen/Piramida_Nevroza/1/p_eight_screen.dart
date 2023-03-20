import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/info_classes/m_info.dart';
import 'package:skripts/info_classes/percent.dart';
import 'package:skripts/screen/Metod_Makulova/2/vibration_yudro/m_nineteenth_screen.dart';
import 'package:skripts/widget/text_input.dart';

import '../../../info_classes/p_belief.dart';
import '../../../utils/text_style.dart';
import '../../Metod_Makulova/3/m_twelfteenth_screen.dart';

class PEightScreen extends StatelessWidget {
  PEightScreen({super.key});

  final _placefocus = FocusNode();

  final placeController = TextEditingController();

  final _percentOnefocus = FocusNode();

  final percentOneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final inner = Provider.of<Belief>(context).innerList;
    final innerS = inner..reversed.toSet().toList();
    final percentOne = Provider.of<Percent>(context).percentOne;
    final percent = Provider.of<Percent>(context);
    final situation = Provider.of<Situation>(context).situation;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '8 СОЗДАНИЕ ЭФФЕКТИВНЫХ УБЕЖДЕНИЙ',
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
                        'В процессе работы вы отпустили негативные убеждения, которые вам мешали жить и сейчас давайте создадим вместо них эффективные убеждения, которые будут вам помогать чувствовать себя по-новому. ',
                    numText: '1. '),
                TextNum(
                    mainText:
                        'Начинаем создавать убеждения снизу вверх от последнего которое проработали (убеждения из пустотностей не меняем). ',
                    numText: '2. '),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: innerS.length,
                  itemBuilder: (context, index) {
                    return Text(innerS[index]);
                  },
                ),
                TextNum(
                    mainText:
                        'Хорошо, представьте это убеждение в виде надписи перед собой. Сделайте ее объемной. Представьте, что она обладает приятными цветом, вкусом, запахом, теплом, энергией, приятна на ощупь. Мысленно поместите эту надпись в «живот» вместо убеждения «я ничтожный», которое мы отпустили. Обратите внимание как новое убеждение встраивается в тело и начинает функционировать, принося вам пользу. ',
                    numText: '3. '),
                TextNum(
                    mainText:
                        'Далее меняем и встраиваем все негативные убеждения снизу вверх по очереди. ',
                    numText: '4. '),
                TextNum(
                    mainText:
                        'В конце добавляем: Позвольте всем новым убеждениям объединиться внутри вас в систему, которая работаем вам на пользу.',
                    numText: '5. '),
                TextNum(
                    mainText: 'А теперь возращайся «$situation».',
                    numText: '6. '),
                TextNum(
                    mainText:
                        '«Если раньше было $percentOne % дискомфорта в груди то сколько сейчас остается?» Мешает ли он вам? (Если остаток будет мешать реагировать по-новому, то повторяем ШАГ2 и ШАГ5)',
                    numText: '7. '),
                TextFormFieldWidget(
                    textChild: 'проценты',
                    Texthelper: 'например: 10, 20, 30',
                    nextFocus: _percentOnefocus,
                    currentFocus: _percentOnefocus,
                    focusNode: _percentOnefocus,
                    Controller: percentOneController),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(10, 50)),
                    ),
                    onPressed: () {
                      percent.changePO(percentOneController.text);
                      Navigator.pushNamed(context, '/P5');
                    },
                    child: Text('шаг 2')),
                SizedBox(
                  height: 70,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          percent.changePO(percentOneController.text);
          Navigator.pushNamed(context, '/P10');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
