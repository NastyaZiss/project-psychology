import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/info_classes/percent.dart';
import 'package:skripts/screen/Metod_Makulova/3/m_twelfteenth_screen.dart';
import 'package:skripts/widget/app_bar.dart';

import '../../../../info_classes/m_inference.dart';
import '../../../../info_classes/m_info.dart';
import '../../../../info_classes/m_yudro.dart';
import '../../../../utils/text_style.dart';
import '../../../../widget/text_input.dart';

class MSixteenthScreen extends StatelessWidget {
  MSixteenthScreen({super.key});

  final _percentOnefocus = FocusNode();

  final percentOneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final inferenceY = Provider.of<InferenceY>(context);
    final instinctY = Provider.of<Yudro>(context).instinctY;
    final placebodyY = Provider.of<Yudro>(context).placebodyY;
    final situationY = Provider.of<Yudro>(context).situationY;
    final oldY = Provider.of<Yudro>(context).oldY;
    final data = Provider.of<DTN>(context).data;
    final name = Provider.of<Name>(context).name;
    final percent = Provider.of<Percent>(context);

    return Scaffold(
      appBar: AppBarG(
        text: '16 Работа с инстинктом. Вибрация',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                      style: TextStyleG.h3baseTextStyle,
                      children: <TextSpan>[
                        new TextSpan(
                            text: '1. ', style: TextStyleG.h3boldTextStyle),
                        new TextSpan(
                            text:
                                '1. Там и тогда, в $oldY, когда «$situationY», сконцентрируйся на чувстве «$instinctY» «$placebodyY».',
                            style: TextStyleG.h3baseTextStyle),
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                      style: TextStyleG.h3baseTextStyle,
                      children: <TextSpan>[
                        new TextSpan(
                            text: '2.', style: TextStyleG.h3boldTextStyle),
                        new TextSpan(
                            text: ' Входи в него, становись этим чувством. ',
                            style: TextStyleG.h3baseTextStyle),
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                      style: TextStyleG.h3baseTextStyle,
                      children: <TextSpan>[
                        new TextSpan(
                            text: '3. ', style: TextStyleG.h3boldTextStyle),
                        new TextSpan(
                            text:
                                'Обрати внимание, как вибрация, пульсация этого чувства отличается от вибрации всего остального тела. Принимай его вибрацию и вместе с ним начинай там вибрировать, пульсировать выражая все, что не выразил. И оно начнет либо расплываться до размера всего тела, исчезать или смыкаться в точке, исчезать. ',
                            style: TextStyleG.h3baseTextStyle),
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                      style: TextStyleG.h3baseTextStyle,
                      children: <TextSpan>[
                        new TextSpan(
                            text: '4. ', style: TextStyleG.h3boldTextStyle),
                        new TextSpan(
                            text:
                                'Как почувствуешь, что больше не выражается, скажешь мне об этом (Клиент говорит: «Больше не выражается»).',
                            style: TextStyleG.h3baseTextStyle),
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                      style: TextStyleG.h3baseTextStyle,
                      children: <TextSpan>[
                        new TextSpan(
                            text: '5. ', style: TextStyleG.h3boldTextStyle),
                        new TextSpan(
                            text:
                                'Если раньше было сто процентов этого «желания $instinctY $placebodyY», то сколько сейчас остается? ',
                            style: TextStyleG.h3baseTextStyle),
                      ]),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormFieldWidget(
                    textChild: 'проценты',
                    Texthelper: 'например: 10, 20, 30',
                    nextFocus: _percentOnefocus,
                    currentFocus: _percentOnefocus,
                    focusNode: _percentOnefocus,
                    Controller: percentOneController),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          percent.changePO(percentOneController.text);
          // data.change(dataController.text);

          // print(name.name.toString());
          print(percent.percentOne.toString());
          Navigator.pushNamed(context, '/M17');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
