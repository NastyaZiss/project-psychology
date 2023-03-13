import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../info_classes/m_info.dart';
import '../../../main.dart';
import '../../../utils/text_style.dart';
import '../../../widget/text_input.dart';

class MSecondScreen extends StatefulWidget {
  const MSecondScreen({super.key});

  @override
  State<MSecondScreen> createState() => _MSecondScreenState();
}

class _MSecondScreenState extends State<MSecondScreen> {
  final _purposefocus = FocusNode();

  final purposeController = TextEditingController();

  @override
  void dispose() {
    purposeController.dispose();
    _purposefocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final name = Provider.of<Name>(context).name;
    final problem = Provider.of<Problem>(context).problem;
    final purpose = Provider.of<Cangefelling>(context);
    // final purpose = purpose.purpose;
    // final purposep = Provider.of<Cangefelling>(context).purpose;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ролевая позиция',
          style: TextStyleG.AppBarTextStyle,
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Text(
            //       'Цель',
            //       style: TextStyleG.h2TextStyle,
            //     ),
            //   ],
            // ),
            SizedBox(
              height: 30,
            ),
            Form(
                child: Column(
              children: [
                RichText(
                  text: TextSpan(
                      style: TextStyleG.h3baseTextStyle,
                      children: <TextSpan>[
                        new TextSpan(
                            text: '4. ', style: TextStyleG.h3boldTextStyle),
                        new TextSpan(
                            text:
                                'Как вы пытались решить эту проблему до этого? ',
                            style: TextStyleG.h3baseTextStyle),
                      ]),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                      style: TextStyleG.h3baseTextStyle,
                      children: <TextSpan>[
                        new TextSpan(
                            text: '5. ', style: TextStyleG.h3boldTextStyle),
                        new TextSpan(
                            text:
                                'И все это не сработало, поэтому вы здесь, верно? ',
                            style: TextStyleG.h3baseTextStyle),
                      ]),
                ),
                SizedBox(
                  height: 20,
                ),
                // RichText(
                //   text: TextSpan(
                //       style: TextStyleG.h3baseTextStyle,
                //       children: <TextSpan>[
                //         new TextSpan(
                //             text: '3. ', style: TextStyleG.h3boldTextStyle),
                //         new TextSpan(
                //             text:
                //                 'Как бы вы хотели себя чувствовать в $problem вместо этого?',
                //             style: TextStyleG.h3baseTextStyle),
                //       ]),
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                // TextFormFieldWidget(
                //   focusNode: _purposefocus,
                //   currentFocus: _purposefocus,
                //   nextFocus: _purposefocus,
                //   textChild: ('Цель клиента'),
                //   Controller: purposeController,
                // ),
                SizedBox(
                  height: 10,
                ),
              ],
            )),
            SizedBox(
              height: 15,
            ),
            RichText(
              text: TextSpan(
                  style: TextStyleG.h3baseTextStyle,
                  children: <TextSpan>[
                    new TextSpan(
                        text: '5. ', style: TextStyleG.h3boldTextStyle),
                    new TextSpan(
                      text:
                          ' То, что мы будем с вами делать, будет отличаться от того, что вы делали до этого. Поэтому чтобы достичь результата, вам нужно следовать за мной сразу, полностью, автоматически, не обдумывая. Потому что до этого вы уже обдумывали, анализировали, но это не сработало. Верно? ',
                    ),
                  ]),
            ),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // purpose.changePurpose(purposeController.text);
          // print(purpose.purpose.toString());
          Navigator.pushNamed(context, '/M3');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
