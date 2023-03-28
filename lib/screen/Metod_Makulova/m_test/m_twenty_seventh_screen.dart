import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/info_classes/m_info.dart';
import 'package:skripts/screen/Metod_Makulova/2/vibration_yudro/m_nineteenth_screen.dart';
import 'package:skripts/screen/Metod_Makulova/3/m_twelfteenth_screen.dart';

import '../../../utils/text_style.dart';
import '../../../widget/app_bar.dart';

class MTwentySeventhScreen extends StatelessWidget {
  const MTwentySeventhScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<DTN>(context).data;
    final placebodyR = Provider.of<Instinct>(context).placebody;
    final instinctR = Provider.of<Instinct>(context).instinct;
    final situationR = Provider.of<Regresion>(context).situationR;
    final datas = Provider.of<DTN>(context).data;
    final purpose = Provider.of<Cangefelling>(context).purpose;

    return Scaffold(
      appBar: AppBarG(
        text: '27 ПРОГРЕССИЯ ДО НАСТОЯЩЕГО МОМЕНТА',
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Column(children: [
                    TextNum(
                        mainText:
                            'Начинаешь расти вверх по возрасту, по всем ситуациям, где ты чувствовал тот же «$instinctR $placebodyR», как «$situationR». ',
                        numText: '1. '),
                    TextNum(
                        mainText:
                            'Во всех этих ситуациях ты всех прощаешь, себя прощаешь и позволяешь себе реагировать по-новому, «$purpose» (исходя из цели Клиента).',
                        numText: ' 2. '),
                    TextNum(
                        mainText:
                            'Ситуации не меняешь, меняется лишь твое отношение к ним. ',
                        numText: '3. '),
                    BaseText(
                        number: '4. ',
                        mainText:
                            'Как дорастешь до «$data», скажешь мне об этом. Если не сможешь кого-то простить - скажешь мне об этом ',
                        akText:
                            '(если не может простить, делаете работу с РЕШЕНИЕМ).'),
                    ElevatedButton(
                        style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(const Size(10, 50)),
                        ),
                        onPressed: () {
                          print(purpose);
                          // yudro.changeSY(situationYudroController.text);
                          // print(yudro.situationY.toString());
                          Navigator.pushNamed(context, '/M26');
                        },
                        child: Text('Работа с решением')),
                  ])))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/M28');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
