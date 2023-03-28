import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/widget/app_bar.dart';

import '../../../../info_classes/m_yudro.dart';
import '../../../../info_classes/percent.dart';
import '../../../../utils/text_style.dart';
import 'package:readmore/readmore.dart';

import '../../../../widget/text_input.dart';
import '../../3/m_twelfteenth_screen.dart';

class MSeventeenthScreen extends StatelessWidget {
  MSeventeenthScreen({super.key});

  final _percentOnefocus = FocusNode();

  final percentOneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final situationY = Provider.of<Yudro>(context).situationY;
    final instinctY = Provider.of<Yudro>(context).instinctY;
    // final instinctY = Provider.of<Yudro>(context).o;
    final percent = Provider.of<Percent>(context);
    final percentf = Provider.of<Percent>(context).percentOne;
    final otherpeople = Provider.of<Yudro>(context).otherpeopleY;
    final placebodyY = Provider.of<Yudro>(context).placebodyY;

    return Scaffold(
      appBar: AppBarG(
        text: '17 ОБРАТНЫЙ ПРОЦЕСС',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17),
            child: Column(children: [
              ReadMore(
                  mainText: 'СПРЯТАТЬСЯ',
                  leadText:
                      'Входи в это чувство и прячься. Зная, что прятаться оказалось не выгодно, переставай прятаться, выходи из укрытия и иди навстречу всему, от чего прятался. И из «$placebodyY» начинай наружу выпускать все, что спряталось.Как почувствуешь, что дальше не выражается, скажешь мне об этом.'),
              SizedBox(
                height: 20,
              ),
              ReadMore(
                  mainText: 'ЗАМЕРЕТЬ',
                  leadText:
                      'Входи в это чувство и замирай. Зная, что замирать оказалось не выгодно, начинай двигаться так, как подсказывает тебе твое тело, возможно, как-то по-детски, оживляя все, что замерло. И из «$placebodyY» начинай наружу выпускать все, что замирало. Как почувствуешь, что дальше не выражается, скажешь мне об этом.'),
              SizedBox(
                height: 20,
              ),
              ReadMore(
                  mainText: 'УБЕЖАТЬ',
                  leadText:
                      'Входи в это чувство и начинай убегать. Можешь физически подвигаться, чтобы выразить это желание убегать.Останавливайся. Разворачивайся. И зная, что убегать оказалось не выгодно, иди навстречу всему, от чего убегал. И из «$placebodyY» начинай наружу выпускать все, что убегало. Как почувствуешь, что дальше не выражается, скажешь мне об этом. '),
              SizedBox(
                height: 20,
              ),
              ReadMore(
                  mainText: 'НАПАСТЬ',
                  leadText:
                      'Входи в это чувство, позволяй этому чувству из «$placebodyY» перетекать в руки и начинай нападать (даете ему в руки подушку). Как почувствуешь, что дальше не выражается, скажешь мне об этом.'),
              SizedBox(
                height: 20,
              ),
              ReadMore(
                  mainText: 'СЖАТЬСЯ',
                  leadText:
                      'Входи в это чувство «сжаться», сжимайся. И понимая, что сжиматься оказалось невыгодно – разжимайся и начинай разжимать всё, что было сжато и выражай всё, что было зажато и выражая всё, что не выразил. И из «$placebodyY» выпускай наружу всё, что было зажато'),
              SizedBox(
                height: 20,
              ),
              ReadMore(
                  mainText: 'ДОГНАТЬ',
                  leadText:
                      '(Это инстинкт догнать того, кто нас оставил, чтобы оказаться в безопасности «маму или папу» например) Входи в это чувство «Догнать» и догоняй «$otherpeople», обнимай её, прижимай к себе, успокаивайся и понимая, что твоя $otherpeople всегда с тобой, в твоём  сердце и памяти, даже если она ушла, отпускай $otherpeople , при этом продолжая оставаться в безопасности .'),
              SizedBox(
                height: 20,
              ),
              ReadMore(
                  mainText: 'ИСЧЕЗНУТЬ',
                  leadText:
                      'Становись этим чувством «исчезнуть» и понимая, что ты не исчез, ты жив и достоин жизни – начинай двигаться и проявляться, выражая всё, что не выразил.'),
              SizedBox(
                height: 30,
              ),
              TextNum(
                  mainText:
                      'Если раньше было $percentf процентов этого желания $instinctY, то сколько процентов осталось теперь?',
                  numText: '1. '),
              TextFormFieldWidget(
                  textChild: 'проценты',
                  Texthelper: 'например: 10, 20, 30',
                  nextFocus: _percentOnefocus,
                  currentFocus: _percentOnefocus,
                  focusNode: _percentOnefocus,
                  Controller: percentOneController),
              SizedBox(
                height: 100,
              ),
            ]),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // percent.changePO(percentOneController.text);
          // // data.change(dataController.text);
          percent.changePO(percentOneController.text);
          // data.change(dataController.text);

          // print(name.name.toString());
          print(percent.percentOne.toString());
          // // print(name.name.toString());
          // print(percent.percentOne.toString());
          Navigator.pushNamed(context, '/M18');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}

class ReadMore extends StatelessWidget {
  ReadMore({super.key, required this.mainText, required this.leadText});
  final String mainText;
  final String leadText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(mainText, style: TextStyleG.h3boldTextStyle),
        ReadMoreText(
          leadText,
          trimLines: 2,
          colorClickableText: Colors.pink,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Далее...',
          trimExpandedText: ' ',
          moreStyle: TextStyleG.h3baseakboldTextStyle,
        ),
      ],
    );
  }
}
