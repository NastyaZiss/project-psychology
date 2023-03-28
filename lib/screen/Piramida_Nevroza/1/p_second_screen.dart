import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/screen/Metod_Makulova/3/m_twelfteenth_screen.dart';

import '../../../info_classes/m_info.dart';
import '../../../utils/text_style.dart';
import '../../../widget/app_bar.dart';

class PSecondScreen extends StatelessWidget {
  PSecondScreen({super.key});

  final _purposefocus = FocusNode();

  final purposeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final problem = Provider.of<Problem>(context).problem;
    final purpose = Provider.of<Cangefelling>(context);

    purposeController.text = Provider.of<Cangefelling>(context).purpose;
    return Scaffold(
      appBar: AppBarG(
        text: 'Ролевая позиция',
      ),
      body: SafeArea(
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
              children: [
                TextNum(
                    mainText: 'Как вы пытались решить эту проблему до этого? ',
                    numText: '4. '),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                TextNum(
                  mainText: 'И все это не сработало, поэтому вы здесь, верно? ',
                  numText: '5. ',
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            )),
            SizedBox(
              height: 15,
            ),
            TextNum(
              mainText:
                  'То, что мы будем с вами делать, будет отличаться от того, что вы делали до этого. Поэтому чтобы достичь результата, вам нужно следовать за мной сразу, полностью, автоматически, не обдумывая. Потому что до этого вы уже обдумывали, анализировали, но это не сработало. Верно? ',
              numText: '5. ',
            ),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/P3');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
