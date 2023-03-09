import 'package:flutter/material.dart';

import '../../utils/text_style.dart';

class MTenthScreen extends StatefulWidget {
  const MTenthScreen({super.key});

  @override
  State<MTenthScreen> createState() => _MTenthScreenState();
}

class _MTenthScreenState extends State<MTenthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ВЫВОД',
          style: TextStyleG.AppBarTextStyle,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(children: [
              Text(
                  style: TextStyleG.h3baseTextStyle,
                  '- Какой вывод сделал О СЕБЕ? (какой ты, если то все произошло)'),
              SizedBox(
                height: 10,
              ),
              Text(
                  style: TextStyleG.h3baseTextStyle,
                  '- Какой вывод сделал О ДРУГИХ? (какие они , если это всё произошло)'),
              SizedBox(
                height: 10,
              ),
              Text(
                '-Какой вывод сделал О МИРЕ? (какой мир , если всё это произошло)',
                style: TextStyleG.h3baseTextStyle,
              ),
              SizedBox(
                height: 30,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: '1. Какой вывод ты сделал из этой ситуации, ',
                          style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text: ' когда на тебя лаяла собака? ',
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
                          text:
                              '2. Как решил себя вести в подобных ситуациях дальше:',
                          style: TextStyleG.h3boldTextStyle),
                      new TextSpan(
                          text:
                              ' «избегать», «провоцировать», «делать вид, что ничего не происходит»? ',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              Text('* КАК ', style: TextStyleG.h2blackboldTextStyle),
              SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text: '- Решил', style: TextStyleG.h3boldTextStyle),
                      TextSpan(
                          text: ' получать Любовь и Одобрение',
                          style: TextStyleG.h3baseakTextStyle),
                      TextSpan(
                          text: ' (свою полноценность)?',
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
                          text: '- Решил', style: TextStyleG.h3boldTextStyle),
                      TextSpan(
                          text: ', что-то покупать?',
                          style: TextStyleG.h3baseakTextStyle),
                      TextSpan(
                          text: ' (Чтобы почувствовать себя более важным)',
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
                          text: '- Решил', style: TextStyleG.h3boldTextStyle),
                      TextSpan(
                          text: ', достигать чего-то? ',
                          style: TextStyleG.h3baseakTextStyle),
                      TextSpan(
                          text: ' (Чтобы тебя признали)',
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
                          text: '- Решил', style: TextStyleG.h3boldTextStyle),
                      TextSpan(
                          text: ' угождать кому-то?  ',
                          style: TextStyleG.h3baseakTextStyle),
                      TextSpan(
                          text:
                              '(Чтобы кто-то более сильный за тебя заступился)',
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
                          text: '- Решил', style: TextStyleG.h3boldTextStyle),
                      TextSpan(
                          text: ' развлекать?',
                          style: TextStyleG.h3baseakTextStyle),
                      TextSpan(
                          text: ' (Чтобы получать внимание)',
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
                          text: '3. Посмотри от этой ситуации вверх на  ',
                          style: TextStyleG.h3boldTextStyle),
                      TextSpan(
                          text: '{«февраль 2023го»}. ',
                          style: TextStyleG.h3baseakboldTextStyle),
                      TextSpan(
                          text:
                              'Скажи мне, там эти выводы и решения помогают или мешают «взрослому {Василию»?}',
                          style: TextStyleG.h3baseTextStyle),
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        style: TextStyleG.h3baseTextStyle,
                        children: <TextSpan>[
                          new TextSpan(
                              text: '4. ', style: TextStyleG.h3boldTextStyle),
                          new TextSpan(
                              text: 'Хотел бы ты их изменить?',
                              style: TextStyleG.h3baseTextStyle),
                        ]),
                  ),
                ],
              ),
              SizedBox(
                height: 180,
              )
            ]),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/M11');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
