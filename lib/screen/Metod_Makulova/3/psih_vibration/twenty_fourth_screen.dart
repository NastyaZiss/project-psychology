import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/info_classes/m_info.dart';

import '../../../../info_classes/percent.dart';
import '../../../../utils/text_style.dart';
import '../../../../widget/text_input.dart';
import '../../2/vibration_yudro/m_seventeenth_screen.dart';
import '../m_twelfteenth_screen.dart';

class MTwentyFourthScreen extends StatelessWidget {
  MTwentyFourthScreen({super.key});

  final _percentTwofocus = FocusNode();
  final percentTwoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final percent = Provider.of<Percent>(context);
    final placebodyR = Provider.of<Instinct>(context).placebody;
    final instinct = Provider.of<Instinct>(context).instinct;
    final otherpeple = Provider.of<Regresion>(context).otherpeople;
    final percentf = Provider.of<Percent>(context).percentOne;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '24ОБРАТНЫЙ ПРОЦЕСС',
          style: TextStyleG.AppBarTextStyle,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17),
            child: Column(children: [
              ReadMore(
                  mainText: 'СПРЯТАТЬСЯ',
                  leadText:
                      'Входи в это чувство и прячься. Зная, что прятаться оказалось не выгодно, переставай прятаться, выходи из укрытия и иди навстречу всему, от чего прятался. И из «$placebodyR» начинай наружу выпускать все, что спряталось. Как почувствуешь, что дальше не выражается, скажешь мне об этом.'),
              SizedBox(
                height: 20,
              ),
              ReadMore(
                  mainText: 'ЗАМЕРЕТЬ',
                  leadText:
                      'Входи в это чувство и замирай. Зная, что замирать оказалось не выгодно, начинай двигаться так, как подсказывает тебе твое тело, возможно, как-то по-детски, оживляя все, что замерло. И из «$placebodyR» начинай наружу выпускать все, что замирало. Как почувствуешь, что дальше не выражается, скажешь мне об этом.'),
              SizedBox(
                height: 20,
              ),
              ReadMore(
                  mainText: 'УБЕЖАТЬ',
                  leadText:
                      'Входи в это чувство и начинай убегать. Можешь физически подвигаться, чтобы выразить это желание убегать. Останавливайся. Разворачивайся. И зная, что убегать оказалось не выгодно, иди навстречу всему, от чего убегал. И из «груди» начинай наружу выпускать все, что убегало. Как почувствуешь, что дальше не выражается, скажешь мне об этом. Если раньше было «пятьдесят процентов» этого «желания убежать», то сколько сейчас остается? '),
              SizedBox(
                height: 20,
              ),
              ReadMore(
                  mainText: 'НАПАСТЬ',
                  leadText:
                      'Входи в это чувство, позволяй этому чувству из «груди» перетекать в руки и начинай нападать (даете ему в руки подушку). Как почувствуешь, что дальше не выражается, скажешь мне об этом. '),
              SizedBox(
                height: 20,
              ),
              ReadMore(
                  mainText: 'СЖАТЬСЯ',
                  leadText:
                      'Входи в это чувство «сжаться», сжимайся. И понимая, что сжиматься оказалось невыгодно – разжимайся и начинай разжимать всё, что было сжато и выражай всё , что было зажато и выражая всё, что не выразил. И из «$placebodyR» выпускай наружу всё, что было зажато'),
              SizedBox(
                height: 20,
              ),
              ReadMore(
                  mainText: 'ДОГНАТЬ',
                  leadText:
                      '(Это инстинкт догнать того, кто нас оставил, чтобы оказаться в безопасности «маму или папу» например) Входи в это чувство « Догнать» и догоняй «$otherpeple» , обнимай её, прижимай к себе, успокаивайся и понимая, что твоя мама всегда с тобой, в твоём  сердце и памяти, даже если она ушла, отпускай «$otherpeple» , при этом продолжая оставаться в безопасности .'),
              SizedBox(
                height: 20,
              ),
              ReadMore(
                  mainText: 'ИСЧЕЗНУТЬ',
                  leadText:
                      'Становись этим чувством «исчезнуть» и понимая,  что ты не исчез, ты жив и достоин жизни – начинай двигаться и проявляться, выражая всё, что не выразил.'),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              TextNum(
                  mainText:
                      'Если раньше было $percentf процентов этого желания $instinct, то сколько процентов осталось теперь?',
                  numText: '1. '),
              TextFormFieldWidget(
                  textChild: 'проценты',
                  Texthelper: 'например: 10, 20, 30',
                  nextFocus: _percentTwofocus,
                  currentFocus: _percentTwofocus,
                  focusNode: _percentTwofocus,
                  Controller: percentTwoController),
              SizedBox(
                height: 100,
              ),
            ]),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          percent.changepPT(percentTwoController.text);
          print(percentf.toString());
          Navigator.pushNamed(context, '/M25');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
