import 'package:flutter/material.dart';
import 'package:skripts/info_classes/m_yudro.dart';
import 'package:skripts/screen/Metod_Makulova/2/vibration_yudro/m_nineteenth_screen.dart';
import 'package:skripts/screen/Metod_Makulova/3/m_twelfteenth_screen.dart';
import 'package:flutter/material.dart';
import 'package:skripts/screen/Metod_Makulova/2/vibration_yudro/m_nineteenth_screen.dart';
import 'package:skripts/screen/Metod_Makulova/3/m_twelfteenth_screen.dart';

import '../../../utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/info_classes/m_info.dart';
import 'package:skripts/screen/Metod_Makulova/2/vibration_yudro/m_nineteenth_screen.dart';
import 'package:skripts/screen/Metod_Makulova/3/m_twelfteenth_screen.dart';

import '../../../utils/text_style.dart';

class MTwentyNinthScreen extends StatelessWidget {
  MTwentyNinthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<DTN>(context).data;
    final placebodyR = Provider.of<Instinct>(context).placebody;
    final instinctR = Provider.of<Instinct>(context).instinct;
    final situationY = Provider.of<Yudro>(context).situationY;
    final oldY = Provider.of<Yudro>(context).oldY;
    final datas = Provider.of<DTN>(context).data;
    final purpose = Provider.of<Cangefelling>(context).purpose;
    final problem = Provider.of<Problem>(context).problem;
    final situation = Provider.of<Situation>(context).situation;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '29 ПОЗИТИВАЦИЯ ПСИХОТРАВМЫ',
          style: TextStyleG.AppBarTextStyle,
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Column(children: [
                    Text(
                      'ЯДРО',
                      style: TextStyleG.h2TextStyle,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextNum(
                        mainText:
                            'Что боялся в этом моменте $situationY сделать? Что запрещал себе там делать, а хотел?',
                        numText: '1.  Возвращаем в ядро и спрашиваем '),
                    TextNum(
                        mainText:
                            'Хорошо. Там и тогда в возрасте «$oldY» ты знаешь, что всё, что мы в себе подавили , внутри – никуда не девается, оно забирается вглубь, начинает гнить, даёт корни и мешает в обычных жизненных ситуациях - где ты реагируешь неадекватно . Поэтому, сейчас мы будем доставать эти корни, чтобы они больше не мешали и жить стало счастливее, радостней и свободнее.',
                        numText: ' 2. '),
                    TextNum(
                        mainText:
                            'И делать , мы это будем очень интересным образом… Сейчас, в этой ситуации , ты начинаешь делать всё самое : Стыдное - Страшное - Запретное. Всё, что ты себе запрещал, всё что ты в себе подавлял.',
                        numText: '3. '),
                    TextNum(
                        mainText:
                            'И делать , мы это будем очень интересным образом… Сейчас, в этой ситуации , ты начинаешь делать всё самое : Стыдное - Страшное - Запретное. Всё, что ты себе запрещал, всё что ты в себе подавлял.',
                        numText: '4. '),
                    TextNum(
                        mainText:
                            'Но делаешь это по-новому:Делаешь – получаешь удовольствие и хвалишь себя за это.  Хвалишь не за то, что сделал, а за то что позволил себе и разрешил.',
                        numText: '5. '),
                    TextNum(
                        mainText:
                            'Для того , чтобы освободившись во внутреннем мире- это перестало волновать во внешнем.',
                        numText: '6. '),
                    TextNum(
                        mainText:
                            'Хорошо, там и тогда находишься начинаешь выражать себя, так как ты себе запрещал. При этом чувствуешь себя «$purpose». Как закончишь, скажешь мне об этом.',
                        numText: '7. '),
                    SizedBox(
                      height: 50,
                    ),
                  ])))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/M30');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
