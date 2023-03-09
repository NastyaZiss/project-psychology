import 'package:flutter/material.dart';

import '../../utils/text_style.dart';
import '../../widget/text_input.dart';

class MFourthScreen extends StatefulWidget {
  const MFourthScreen({super.key});

  @override
  State<MFourthScreen> createState() => _MFourthScreenState();
}

class _MFourthScreenState extends State<MFourthScreen> {
  final _problemfocus = FocusNode();
  final _placefocus = FocusNode();

  final problemController = TextEditingController();
  final placeController = TextEditingController();

  @override
  void dispose() {
    _problemfocus.dispose();
    placeController.dispose();

    problemController.dispose();
    placeController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                              'Далее, представьте, что это произошло, скажите, каким вы себя почувствуете, если с вами это произойдет – начальник вас уволит. ',
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
                // userInfomy: newUser.name,
                // userInfo: 'С чем конкретно вы хотите поработать?',
                focusNode: _placefocus,
                // currentFocus: _situationfocus,
                // nextFocus: _levfocus,
                textChild: ('Место'),
                Controller: placeController,
                // maskCustom: MaskTextInputFormatter(),
                // vallid_fun: (dynamic value) {
                //   final _nameExp = RegExp(r'^[А-Яа-я]+$');
                //   if (value.isEmpty) {
                //     return 'Введите имя';
                //   } else if (!_nameExp.hasMatch(value)) {
                //     return 'Это не Имя';
                //   } else {
                //     return null;
                //   }
                // },
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Итого: негативное самоопределение feeling} в животе. С ним и будем работать.',
                style: TextStyleG.h4akTextStyle,
              ),
              // Container(
              //   color: Colors.red,
              //   width: 20,
              //   height: 160,
              // )
            ],
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/M5');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
