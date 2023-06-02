import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/screen/Metod_Makulova/2/vibration_yudro/m_nineteenth_screen.dart';
import 'package:skripts/screen/Metod_Makulova/3/m_twelfteenth_screen.dart';
import 'package:skripts/widget/app_bar.dart';

import '../../../info_classes/m_inference.dart';
import '../../../info_classes/m_info.dart';
import '../../../utils/text_style.dart';
import '../../../widget/text_input.dart';

class PSixthScreen extends StatelessWidget {
  final _insctinctfocus = FocusNode();

  final instinctController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final placebody = Provider.of<Diagnostic>(context).placebody;
    final aboutnegativ = Provider.of<Diagnostic>(context).aboutnegativ;
    final inference = Provider.of<InferenceY>(context);
    final data = Provider.of<DTN>(context).data;

    return Scaffold(
      appBar: AppBarG(
        text: '6 шаг3 РАБОТА С ПУСТОТНОСТЬЮ',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(children: [
              BaseText(
                mainText:
                    'Если бы вы могли дать определение этому чувству, то на что оно похоже? На тишину, на пустоту, на спокойствие, на легкость, на свободу, на любовь, на благодарность, на что-то еще?',
                akText: 'Клиент: Похоже на легкость',
                number: '1. ',
              ),
              SizedBox(
                height: 20,
              ),
              TextNum(
                  mainText:
                      'Где центр этой легкости (это чувство) в теле? Откуда она исходит? Из груди, горла, живота, откуда-то еще?',
                  numText: '2. '),
              TextNum(
                  mainText:
                      'Хорошо. Если бы эта легкост ь(это чувство) в груди (место в теле) была каким-то убеждением, то это было бы о вас, о других или о мире? И как бы оно звучало.  ',
                  numText: '3. '),
              TextNum(
                  mainText:
                      'Хорошо. Сдайтесь этой «легкости (это чувство) в груди (место в теле) », погрузитесь в нее и начните ее перепроживать, позволяя происходить всей трансформации. Как закончится трансформация или просто надоест скажите мне об этом.',
                  numText: '4. '),
            ]),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/P7');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
