import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../info_classes/m_yudro.dart';
import '../../../utils/text_style.dart';
import '../../../widget/text_input.dart';

class MThirteenthfScreen extends StatefulWidget {
  const MThirteenthfScreen({super.key});

  @override
  State<MThirteenthfScreen> createState() => _MThirteenthfScreenState();
}

class _MThirteenthfScreenState extends State<MThirteenthfScreen> {
  final _placebodyYfocus = FocusNode();
  final _instinctYfocus = FocusNode();
  // final _sfocus = FocusNode();

  // final situationYudroController = TextEditingController();
  final placebodyYController = TextEditingController();
  final instinctYController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final yudro = Provider.of<Yudro>(context);
    final oldY = Provider.of<Yudro>(context).oldY;
    final situationY = Provider.of<Yudro>(context).situationY;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ' 30 ИНСТИНКТ ЯДРО',
          style: TextStyleG.AppBarTextStyle,
        ),
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
                                'Становись там собой в $oldY, когда $situationY. Где там в теле это дискомфортное чувство? ',
                            style: TextStyleG.h3baseTextStyle),
                      ]),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormFieldWidget(
                  focusNode: _placebodyYfocus,
                  currentFocus: _placebodyYfocus,
                  nextFocus: _instinctYfocus,
                  textChild: ('Место в теле'),
                  Controller: placebodyYController,
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
                  focusNode: _instinctYfocus,
                  currentFocus: _instinctYfocus,
                  nextFocus: _placebodyYfocus,
                  textChild: ('Инстинкт'),
                  Controller: instinctYController,
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
          yudro.changePBY(placebodyYController.text);
          yudro.changeIY(instinctYController.text);
          print(yudro.instinctY.toString());
          print(yudro.placebodyY.toString());
          Navigator.pushNamed(context, '/M14');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
