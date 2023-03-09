import 'package:flutter/material.dart';

import '../../utils/text_style.dart';
import '../../widget/text_input.dart';

class MSeventhScreen extends StatefulWidget {
  MSeventhScreen({super.key});

  @override
  State<MSeventhScreen> createState() => _MSeventhScreenState();
}

class _MSeventhScreenState extends State<MSeventhScreen> {
  final _oldfocus = FocusNode();
  final _peoplefocus = FocusNode();
  final _placesfocus = FocusNode();
  final _sitshfocus = FocusNode();

  final oldController = TextEditingController();
  final peopleController = TextEditingController();
  final placesController = TextEditingController();
  final sitshController = TextEditingController();

  @override
  void dispose() {
    // _problemfocus.dispose();
    // _situationfocus.dispose();
    // _levfocus.dispose();
    // problemController.dispose();
    // situationController.dispose();
    // levController.dispose();
    // super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ВМЕСТО РЕГРЕССИ',
          style: TextStyleG.AppBarTextStyle,
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                  style: TextStyleG.h3baseTextStyle,
                  children: <TextSpan>[
                    new TextSpan(
                        text: '3.	', style: TextStyleG.h3boldTextStyle),
                    new TextSpan(
                        text:
                            'Хорошо, спроси у себя, « В каком я был возрасте, когда ты решило мне помогать таким образом?»',
                        style: TextStyleG.h3baseTextStyle),
                  ]),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormFieldWidget(
              focusNode: _oldfocus,
              currentFocus: _oldfocus,
              nextFocus: _placesfocus,
              textChild: ('Возраст'),
              Controller: oldController,
            ),
            SizedBox(
              height: 15,
            ),
            RichText(
              text: TextSpan(
                  style: TextStyleG.h3baseTextStyle,
                  children: <TextSpan>[
                    new TextSpan(
                        text: '4.	', style: TextStyleG.h3boldTextStyle),
                    new TextSpan(
                        text:
                            'Хорошо. Смотри, как выглядишь, где находишься, в помещении или на улице? ',
                        style: TextStyleG.h3baseTextStyle),
                  ]),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormFieldWidget(
              focusNode: _placesfocus,
              currentFocus: _placesfocus,
              nextFocus: _peoplefocus,
              textChild: ('Место'),
              Controller: placesController,
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
                        text: 'Один или с кем-то?',
                        style: TextStyleG.h3baseTextStyle),
                  ]),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormFieldWidget(
              focusNode: _peoplefocus,
              currentFocus: _peoplefocus,
              nextFocus: _sitshfocus,
              textChild: ('Один или с кем-то'),
              Controller: oldController,
            ),
            SizedBox(
              height: 15,
            ),
            RichText(
              text: TextSpan(
                  style: TextStyleG.h3baseTextStyle,
                  children: <TextSpan>[
                    new TextSpan(
                        text: '6.	', style: TextStyleG.h3boldTextStyle),
                    new TextSpan(
                        text: 'Что там происходит, что возникает это чувство?',
                        style: TextStyleG.h3baseTextStyle),
                  ]),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormFieldWidget(
              focusNode: _sitshfocus,
              currentFocus: _sitshfocus,
              nextFocus: _placesfocus,
              textChild: ('Ситуация'),
              Controller: sitshController,
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/M8');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
