import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/info_classes/p_belief.dart';
import 'package:skripts/screen/Metod_Makulova/3/m_twelfteenth_screen.dart';

import '../../../info_classes/m_inference.dart';
import '../../../info_classes/m_info.dart';
import '../../../utils/text_style.dart';
import '../../../widget/text_input.dart';

class PFifthScreen extends StatelessWidget {
  PFifthScreen({super.key});
  final _placefocus = FocusNode();
  final _aboutnegativfocus = FocusNode();
  final _aboutWorldfocus = FocusNode();

  final placeController = TextEditingController();
  final aboutnegativController = TextEditingController();
  final aboutWorldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final placebody = Provider.of<Diagnostic>(context).placebody;

    final negativ = Provider.of<Diagnostic>(context).aboutnegativ;

    final inference = Provider.of<InferenceY>(context);
    final data = Provider.of<DTN>(context).data;
    final placeandaboutnegativ = Provider.of<Diagnostic>(context);
    final belief = Provider.of<Belief>(context);
    // final inference = Provider.of<InferenceY>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '5 шаг 2 РАБОТА С НЕГАТИВНЫМ УБЕЖДЕНИЕМ',
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
                TextNum(
                    mainText:
                        'Сконцентрируйтесь на этой части «$placebody» и осознайте, что это чувство хоть и дискомфортное но абсолютно безопасно для взрослого вас, оно не может ни свести с ума ни убить вас. Возможно  в прошлом вы подавляли, отрицали и избегали это чувство «$placebody», а сейчас понимая что оно для вас безопасно, сдайтесь этому чувству, позвольте ему взять над вами верх, представьте как погружаетесь в это чувство и начните его перепроживать, как бы высвобождая всю энергию подавленную и накопленную в этом чувстве. ',
                    numText: '1. '),
                TextNum(
                    mainText:
                        'Это может быть похоже на то как автомобиль тратит бензин чтобы ехать и бензина становиться все меньше. Также и это чувство сейчас начнет уменьшаться, потому что отдает вам свою энергию. Позволяйте ему уменьшаться, но это не значит, что оно должно исчезнуть полностью. Как оно закончит уменьшаться скажите мне об этом.',
                    numText: '2. '),
                TextNum(
                    mainText:
                        'Сконцентрируйтесь на этой части «$placebody» и обращаясь внутрь, вглубь это чувства, я вслух, а вы про себя: «Сейчас взрослый я в $data осознаю что когда-то в моем прошлом когда ты часть «$placebody» создала это убеждение «$negativ» оно мне для чего-то было нужно, как-то помогало, оберегало и поддерживало мою безопасность. А сейчас в феврале 2022 года взрослому мне оно мешает». ',
                    numText: '3. '),
                TextNum(
                    mainText:
                        ' то зачем с этим вообще работать если оно не мешает? Объясните Клиенту, что убеждение создает дискомфортное чувство, с которым он обратился. ',
                    numText: 'Клиент: НЕТ'),
                TextNum(
                    mainText:
                        ' «Осознавая, что в прошлом ты часть создавала его с позитивной целью, я тебя прощаю за то что ты его создала. И обращаясь внутрь этой части «$placebody»: Я тебя прощаю за то, что ты создала мне это убеждение «$negativ». Прощаете, позволяете происходить всей трансформации, как простите скажите мне об этом. ',
                    numText: 'Клиент: ДА '),
                // TextNum(
                //     mainText:
                //         ' «Осознавая, что в прошлом ты часть создавала его с позитивной целью, я тебя прощаю за то что ты его создала. И обращаясь внутрь этой части «в груди»: Я тебя прощаю за то, что ты создала мне это убеждение «Меня ни во что не ставят». Прощаете, позволяете происходить всей трансформации, как простите скажите мне об этом. ',
                //     numText: '5. '),
                TextNum(
                    mainText:
                        'Сконцентрируйтесь на этой части «$placebody» и обращаясь вглубь нее, я вслух вы про себя: «Сейчас взрослый я в $data года готов встретиться с последствиями от которых ты меня защищаешь. И эти последствия будут безопасны для меня». Осознайте, что то что казалось опасным вам в прошлом, когда вы были ребенком для взрослого вас не представляет никакой угрозы. Это всего лишь какое-то чувство, мысль или воспоминание. Вы сейчас в полной безопасности и готовы встретится с этим. ',
                    numText: '6. '),
                TextNum(
                    mainText:
                        'Представьте как вы вцепились в это чувство «$placebody» руками и удерживаете его, потому что в детстве вам казалось что оно вас от чего-то защищает. А сейчас взрослый вы разжимаете руки и отпускаете его позволяте ему удаляться так как оно уже выполнило свою миссию. А откуда-то изнутри начинает всплывать и проявляться в теле то, от чего вас эта часть защищала и это теперь безопасно для вас. Где это проявляется в теле? В животе, груди, горле, где-то еще? ',
                    numText: '7. '),
                TextFormFieldWidget(
                  focusNode: _placefocus,
                  nextFocus: _placefocus,
                  currentFocus: _placefocus,
                  textChild: ('Место'),
                  Controller: placeController,
                ),
                SizedBox(
                  height: 20,
                ),
                TextNum(
                    mainText:
                        'Если бы это чувство $placebody было убеждением, то это было бы о вас, о других, о мире? И как бы оно звучало?',
                    numText: '8. '),
                TextFormFieldWidget(
                  focusNode: _aboutnegativfocus,
                  nextFocus: _aboutnegativfocus,
                  currentFocus: _aboutnegativfocus,
                  textChild: ('Негативное убеждение '),
                  Controller: aboutnegativController,
                ),
                SizedBox(
                  height: 20,
                ),
                TextNum(
                    mainText:
                        'Далее делаем ШАГ 2 пока не дойдем до «пустотности». ',
                    numText: '9. '),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(const Size(10, 50)),
                        ),
                        onPressed: () {
                          belief.add(aboutnegativController.text);
                          print(belief.innerList.reversed
                              .toSet()
                              .toList()
                              .toString());
                          Navigator.pushNamed(context, '/P8'); // 5 шаг
                        },
                        child: Text('шаг 5')),
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

                          // placeandaboutnegativ.changeP(placeController.text);
                          Navigator.pushNamed(context, '/P5');
                          // belief.add(aboutnegativController.text);
                          print(belief.innerList.reversed
                              .toSet()
                              .toList()
                              .toString());
                        },
                        child: Text('2 шаг снова')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String placeandbelief =
              placeController.text + ' ' + aboutnegativController.text;

          placeandaboutnegativ.changeAN(aboutnegativController.text);
          placeandaboutnegativ.changeP(placeController.text);
          print('1');
          print(placeandaboutnegativ.placebody.toString());
          print(placeandaboutnegativ.aboutnegativ.toString());

          // dia.changeP(placeController.text);
          // belief.add(aboutnegativController.text);
          Navigator.pushNamed(context, '/P6');

          print(belief.innerList.reversed.toSet().toList().toString());
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
