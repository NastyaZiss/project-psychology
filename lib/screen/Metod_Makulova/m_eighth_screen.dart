import 'package:flutter/material.dart';

import '../../utils/text_style.dart';

class MEighthScreen extends StatefulWidget {
  const MEighthScreen({super.key});

  @override
  State<MEighthScreen> createState() => _MEighthScreenState();
}

class _MEighthScreenState extends State<MEighthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ИНСТИНКТ',
          style: TextStyleG.AppBarTextStyle,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            children: [
              RichText(
                text: TextSpan(style: TextStyleG.h3baseTextStyle, children: <
                    TextSpan>[
                  new TextSpan(text: '1. ', style: TextStyleG.h3boldTextStyle),
                  new TextSpan(
                      text: 'Становись там собой в пять лет, когда лает собака',
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
                height: 15,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: '3. ', style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text: '3. Входи в это чувство, становись им. ',
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
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/M9');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
