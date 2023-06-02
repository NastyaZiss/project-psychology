import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/widget/app_bar.dart';

import '../../../info_classes/m_info.dart';
import '../../../utils/text_style.dart';
import '../../../widget/text_input.dart';

class MEighthScreen extends StatelessWidget {
  MEighthScreen({super.key});

  final _instinctIfocus = FocusNode();
  final _placeIfocus = FocusNode();

  final placeIController = TextEditingController();
  final instinctIController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final oldR = Provider.of<Regresion>(context).oldR;
    final situationR = Provider.of<Regresion>(context).situationR;
    final otherpeople = Provider.of<Regresion>(context).otherpeople;
    final instinct = Provider.of<Instinct>(context);

    return Scaffold(
      appBar: AppBarG(
        text: '8 ИНСТИНКТ',
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                      style: TextStyleG.h3baseTextStyle,
                      children: <TextSpan>[
                        new TextSpan(
                            text: '1. ', style: TextStyleG.h3boldTextStyle),
                        new TextSpan(
                            text:
                                'Становись там собой в $oldR , когда $situationR',
                            style: TextStyleG.h3baseTextStyle),
                      ]),
                ),
                SizedBox(
                  height: 15,
                ),
                RichText(
                  text: TextSpan(
                      style: TextStyleG.h3baseTextStyle,
                      children: <TextSpan>[
                        new TextSpan(
                            text: '2. ', style: TextStyleG.h3boldTextStyle),
                        new TextSpan(
                            text: 'Где там в теле это дискомфортное чувство? ',
                            style: TextStyleG.h3baseTextStyle),
                      ]),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormFieldWidget(
                  focusNode: _placeIfocus,
                  currentFocus: _placeIfocus,
                  nextFocus: _instinctIfocus,
                  textChild: ('Место в теле'),
                  Controller: placeIController,
                ),
                SizedBox(
                  height: 15,
                ),
                RichText(
                  text: TextSpan(
                      style: TextStyleG.h3baseTextStyle,
                      children: <TextSpan>[
                        new TextSpan(
                            text: '3. ', style: TextStyleG.h3boldTextStyle),
                        new TextSpan(
                            text: ' Входи в это чувство, становись им.',
                            style: TextStyleG.h3baseTextStyle),
                      ]),
                ),
                SizedBox(
                  height: 15,
                ),
                RichText(
                  text: TextSpan(
                      style: TextStyleG.h3baseTextStyle,
                      children: <TextSpan>[
                        new TextSpan(
                            text: '4. ', style: TextStyleG.h3boldTextStyle),
                        new TextSpan(
                            text:
                                'Когда ты это чувство, что физически хочется сделать: спрятаться, убежать, замереть, напасть? (Доп-но: Сжаться, Догнать, Исчезнуть)',
                            style: TextStyleG.h3baseTextStyle),
                      ]),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormFieldWidget(
                  focusNode: _instinctIfocus,
                  currentFocus: _instinctIfocus,
                  nextFocus: _placeIfocus,
                  textChild: ('Инстинкт'),
                  Controller: instinctIController,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          instinct.changeI(instinctIController.text);
          instinct.changeP(placeIController.text);
          print(instinct.placebody.toString());
          print(instinct.instinct.toString());

          Navigator.pushNamed(context, '/M9');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
