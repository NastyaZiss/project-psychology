import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/screen/Metod_Makulova/3/m_twelfteenth_screen.dart';

import '../../../info_classes/m_info.dart';
import '../../../main.dart';
import '../../../utils/text_style.dart';
import '../../../widget/app_bar.dart';
import '../../../widget/text_input.dart';

class MSecondScreen extends StatelessWidget {
  MSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final problem = Provider.of<Problem>(context).problem;
    final purpose = Provider.of<Cangefelling>(context);
    return Scaffold(
      appBar: AppBarG(
        text: 'Ролевая позиция',
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextNum(
                    numText: '4. ',
                    mainText: 'Как вы пытались решить эту проблему до этого? ',
                  ),
                  TextNum(
                    numText: '5. ',
                    mainText:
                        'И все это не сработало, поэтому вы здесь, верно? ',
                  ),
                  TextNum(
                      mainText:
                          'То, что мы будем с вами делать, будет отличаться от того, что вы делали до этого. Поэтому чтобы достичь результата, вам нужно следовать за мной сразу, полностью, автоматически, не обдумывая. Потому что до этого вы уже обдумывали, анализировали, но это не сработало. Верно? ',
                      numText: '5. ')
                ],
              )),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/M3');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
