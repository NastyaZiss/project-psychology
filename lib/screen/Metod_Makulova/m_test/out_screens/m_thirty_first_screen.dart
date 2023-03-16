import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/screen/Metod_Makulova/2/vibration_yudro/m_nineteenth_screen.dart';
import 'package:skripts/screen/Metod_Makulova/3/m_twelfteenth_screen.dart';

import '../../../../info_classes/m_info.dart';
import '../../../../utils/text_style.dart';

class MThirtyFirstScreen extends StatelessWidget {
  MThirtyFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final problem = Provider.of<Problem>(context).problem;
    final data = Provider.of<DTN>(context).data;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '31 НА ГОД ВПЕРЕД',
          style: TextStyleG.AppBarTextStyle,
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Column(children: [
                    TextNum(
                        mainText:
                            'От настоящего момента ты мысленно начинаешь расти на год вперед, реагируя по-новому во всех ситуациях, где ты раньше «$problem». ',
                        numText: '1. '),
                    TextNum(
                        mainText:
                            'Замечая, к каким позитивным изменениям это приводит в личной жизни, на работе и везде, где раньше ты «$problem».',
                        numText: ' 2. '),
                    TextNum(
                        mainText:
                            'С каждой ситуацией реагировать по-новому становится все легче и легче.',
                        numText: '3. '),
                    TextNum(
                        mainText:
                            'Как дорастешь до «$data», скажешь мне об этом.',
                        numText: '4. '),
                    SizedBox(
                      height: 50,
                    ),
                  ])))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/M32');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
