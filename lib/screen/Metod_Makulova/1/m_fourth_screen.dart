import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/info_classes/m_info.dart';

import '../../../utils/text_style.dart';
import '../../../widget/text_input.dart';

class MFourthScreen extends StatefulWidget {
  const MFourthScreen({super.key});

  @override
  State<MFourthScreen> createState() => _MFourthScreenState();
}

class _MFourthScreenState extends State<MFourthScreen> {
  final _placefocus = FocusNode();
  final _aboutnegativfocus = FocusNode();
  final _placeTwofocus = FocusNode();

  final placeController = TextEditingController();
  final aboutnegativController = TextEditingController();
  final placeTwoController = TextEditingController();

  @override
  void dispose() {
    placeController.dispose();
    aboutnegativController.dispose();
    placeTwoController.dispose();
    _placeTwofocus.dispose();
    _aboutnegativfocus.dispose();
    _placefocus.dispose();
    super.dispose();
  }

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
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: '1.	', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              'Закрой глаза. Мысленно окажитесь в этой ситуации ? ',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: '2.	', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              'Где у вас в теле возникает дискомфортное чувство? В груди, в животе, в горле? ',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
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
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: '3.	', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              'Спросите себя: что конкретно могло бы произойти, чтобы это чувство усилилось? Что бы вам могли сказать или сделать в этой ситуации?',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),

              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: '4.	', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              'Далее, представьте, что это произошло, скажите, каким вы себя почувствуете, если с вами это произойдет. ',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 15,
              ),
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
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: '5.	', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              'Где у вас в теле возникает дискомфортное чувство? В груди, в животе, в горле? ',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldWidget(
                focusNode: _placefocus,
                currentFocus: _placefocus,
                nextFocus: _aboutnegativfocus,
                textChild: ('Место'),
                Controller: placeController,
              ),
              SizedBox(
                height: 15,
              ),
              // Text(
              //   'Итого: негативное самоопределение feeling} в животе. С ним и будем работать.',
              //   style: TextStyleG.h4akTextStyle,
              // ),
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
          Navigator.pushNamed(context, '/M5');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
