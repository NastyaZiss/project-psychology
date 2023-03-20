import 'package:flutter/material.dart';
import 'package:skripts/info_classes/percent.dart';
import 'package:skripts/screen/Metod_Makulova/2/vibration_yudro/m_nineteenth_screen.dart';
import 'package:skripts/screen/Metod_Makulova/3/m_twelfteenth_screen.dart';

import '../../../utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/info_classes/m_info.dart';
import 'package:skripts/screen/Metod_Makulova/2/vibration_yudro/m_nineteenth_screen.dart';
import 'package:skripts/screen/Metod_Makulova/3/m_twelfteenth_screen.dart';

import '../../../utils/text_style.dart';

class MTwentyEightScreen extends StatelessWidget {
  const MTwentyEightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<DTN>(context).data;
    final placebodyR = Provider.of<Instinct>(context).placebody;
    final instinctR = Provider.of<Instinct>(context).instinct;
    final situationR = Provider.of<Regresion>(context).situationR;
    final datas = Provider.of<DTN>(context).data;
    final purpose = Provider.of<Cangefelling>(context).purpose;
    final problem = Provider.of<Problem>(context).problem;
    final situation = Provider.of<Situation>(context).situation;
    final precent = Provider.of<Percent>(context).percentTwo;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '28 ТЕСТ В НАСТОЯЩЕМ ВРЕМЕНИ',
          style: TextStyleG.AppBarTextStyle,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              children: [
                TextNum(
                    mainText:
                        'Возвращайся в последнюю ситуацию, где ты «$problem». Начинай «$situation», если раньше было «$precent % этого страха в груди», то сколько сейчас остается? ',
                    numText: '1. '),
                TextNum(
                    mainText: 'Мешает ли эти $precent % тебе в "$situation" ',
                    numText: '2. '),
                TextNum(
                    mainText:
                        'Сконцентрируйся на этом чувстве и делаем один раз соматическую регрессии. Найденную ситуацию прописываем по ИРВ и прорабатываем через вибрацию, обратный процесс, прощение и новый вывод, далее теств в этой ситуации. Найденную ситуацию прописываем по ИРВ и прорабатываем через вибрацию, обратный процесс, прощение и новый вывод, далее теств в этой ситуации.Возвращаемся в последнюю ситуацию и еще раз спрашиваем сколько дискомфорта остается. Если остается значимая часть, то опять регрессию и проработку и опять тест. ',
                    numText: 'Если ДА. '),
                TextNum(mainText: 'Идем дальше', numText: 'Если НЕТ. '),
                ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(10, 50)),
                  ),
                  onPressed: () {
                    // yudro.changeSY(situationYudroController.text);
                    // print(yudro.situationY.toString());
                    Navigator.pushNamed(context, '/M26');
                  },
                  child: Text('Если мешает'),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/M29');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
