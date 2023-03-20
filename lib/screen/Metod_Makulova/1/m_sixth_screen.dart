import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../info_classes/m_info.dart';
import '../../../utils/text_style.dart';

class MSixthScreen extends StatefulWidget {
  const MSixthScreen({super.key});

  @override
  State<MSixthScreen> createState() => _MSixthScreenState();
}

class _MSixthScreenState extends State<MSixthScreen> {
  @override
  Widget build(BuildContext context) {
    final problem = Provider.of<Problem>(context).problem;
    final aboutnegativ = Provider.of<Diagnostic>(context).aboutnegativ;
    final place = Provider.of<Diagnostic>(context).placebody;
    final name = Provider.of<Name>(context).name;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '6 ВМЕСТО РЕГРЕССИ',
          style: TextStyleG.AppBarTextStyle,
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(17.0),
        child: SingleChildScrollView(
            child: Column(
          children: [
            RichText(
              text: TextSpan(
                  style: TextStyleG.h3baseTextStyle,
                  children: <TextSpan>[
                    new TextSpan(
                        text: '1.	', style: TextStyleG.h3boldTextStyle),
                    new TextSpan(
                        text:
                            'Ну, хорошо, закрой глаза сконцентрируйся на этом чувстве. Скажи мне, что с ним хотелось сделать? Вырвать, подавить, отрицать(еще что-то своё)',
                        style: TextStyleG.h3baseTextStyle),
                  ]),
            ),
            SizedBox(
              height: 15,
            ),
            RichText(
              text: TextSpan(
                  style: TextStyleG.h3baseTextStyle,
                  children: <TextSpan>[
                    new TextSpan(
                        text: '2.	', style: TextStyleG.h3boldTextStyle),
                    new TextSpan(
                        text:
                            'Хорошо. Сейчас ты начинаешь понимать, что все чувства нам для чего-то нужны, они выполняют какую-то  работу, защищают, оберегают, от чего-то помогают .Также это «$aboutnegativ», в «$place», тебе зачем-то нужно. Оно тебе в чем-то помогало, защищало, оберегало, НО – то что помогало маленьк(-ому)(-ой) «$name» там и тогда, взросл(-ому)(-oй) «$name» здесь и сейчас может мешать. Но это чувство по-прежнему выполняет ту работу, которую оно решило выполнять в детстве, там и тогда когда оно у тебя возникло впервые. Поэтому ты начинаешь понимать, что это чувство твой друг, твой союзник. Что ты часть него, оно часть тебя, вы две части единого целого, поэтому понимая, что это чувство твой союзник, обратись к нему и спроси его: «Зачем ты вызываешь у меня этот дискомфорт когда "$problem"?',
                        style: TextStyleG.h3baseTextStyle),
                  ]),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              '( Он говорит например – чтобы защитить )',
              style: TextStyleG.h4akTextStyle,
            ),
            SizedBox(
              height: 70,
            ),
            // Container(
            //   height: 180,
            // ),
          ],
        )),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/M7');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
