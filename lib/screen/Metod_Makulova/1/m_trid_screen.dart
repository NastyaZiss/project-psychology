import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/info_classes/m_info.dart';
import 'package:skripts/widget/app_bar.dart';

import '../../../utils/text_style.dart';

class MTridScreen extends StatefulWidget {
  const MTridScreen({super.key});

  @override
  State<MTridScreen> createState() => _MTridScreenState();
}

class _MTridScreenState extends State<MTridScreen> {
  // final _problemfocus = FocusNode();
  // final _situationfocus = FocusNode();
  // final _levfocus = FocusNode();

  // final problemController = TextEditingController();
  // final situationController = TextEditingController();
  // final levController = TextEditingController();

  // @override
  // void dispose() {
  //   _problemfocus.dispose();
  //   _situationfocus.dispose();
  //   _levfocus.dispose();
  //   problemController.dispose();
  //   situationController.dispose();
  //   levController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final problem = Provider.of<Problem>(context).problem;
    return Scaffold(
      appBar: AppBarG(
        text: 'Контекст. Страхи и мифы',
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                                text: '7. Контекст. ',
                                style: TextStyleG.h3boldTextStyle),
                            new TextSpan(
                                text:
                                    'Итак, у вас есть $problem, но другие люди могут чувствовать в этих ситуациях себя «спокойно». Значит в какой-то момент вы научились «$problem». И то что мы будем с вами делать, это просто переобучаться. И для этого нам не потребуется ни дополнительное оборудование ни медикаменты. ',
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
                                text: 'Страхи и мифы. ',
                                style: TextStyleG.h3boldTextStyle),
                            new TextSpan(
                                text:
                                    'Возможно, у вас есть какие-то вопросы, сомнения или вам что-то не понятно по проведению консультации. И это абсолютно нормально, не стесняйтесь их задать.',
                                style: TextStyleG.h3baseTextStyle),
                          ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Хорошо. Хочу обратить ваше внимание, что во время консультации ваши руки и ноги не скрещены, расслабленно лежат прямо.',
                      style: TextStyleG.h4akTextStyle,
                    )
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/M4');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
