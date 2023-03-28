import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../info_classes/m_inference.dart';
import '../../../../info_classes/m_info.dart';
import '../../../../info_classes/m_yudro.dart';
import '../../../../info_classes/percent.dart';
import '../../../../utils/text_style.dart';
import '../../../../widget/app_bar.dart';
import '../../../../widget/text_input.dart';

class MTwentyThreeScreen extends StatelessWidget {
  MTwentyThreeScreen({super.key});

  final _percentTwofocus = FocusNode();

  final percentTwoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // final inference = Provider.of<Inference>(context);
    final data = Provider.of<DTN>(context).data;
    final name = Provider.of<Name>(context).name;
    final percent = Provider.of<Percent>(context);

    final placebodyR = Provider.of<Instinct>(context).placebody;
    final instinct = Provider.of<Instinct>(context).instinct;
    final situationR = Provider.of<Regresion>(context).situationR;
    final oldR = Provider.of<Regresion>(context).oldR;

    return Scaffold(
      appBar: AppBarG(
        text: 'Работа с инстинктом. Вибрация',
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
                            text:
                                '1. Там и тогда, в $oldR, когда «$situationR», сконцентрируйся на чувстве « $instinct $placebodyR».',
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
                                'Если раньше было сто процентов этого «желания спрятаться», то сколько сейчас остается? ',
                            style: TextStyleG.h3baseTextStyle),
                      ]),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormFieldWidget(
                    textChild: 'проценты',
                    Texthelper: 'например: 10, 20, 30',
                    nextFocus: _percentTwofocus,
                    currentFocus: _percentTwofocus,
                    focusNode: _percentTwofocus,
                    Controller: percentTwoController),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          percent.changePO(percentTwoController.text);
          Navigator.pushNamed(context, '/M24');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
