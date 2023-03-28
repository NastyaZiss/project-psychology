import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/info_classes/m_info.dart';
import 'package:skripts/widget/app_bar.dart';

import '../../../utils/text_style.dart';
import 'm_twelfteenth_screen.dart';

class MTwentySecondScreen extends StatelessWidget {
  const MTwentySecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final situationR = Provider.of<Regresion>(context).situationR;
    final oldR = Provider.of<Regresion>(context).oldR;
    return Scaffold(
      appBar: AppBarG(
        text: '22 ПРОГРЕССИЯ ДО ПСИХОТРАВМЫ',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              children: [
                TextNum(
                    mainText:
                        'Со всеми изменениями начинай расти до «$oldR и $situationR».',
                    numText: '1. '),
                Text(
                  'Далее в психотравме делаете работу с инстинктом (вибрация, обратный процесс и РЛС), решением и выводом.',
                  style: TextStyleG
                      .h3baseakTextStyle, // Как там сейчас реагируешь?
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/M23');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
