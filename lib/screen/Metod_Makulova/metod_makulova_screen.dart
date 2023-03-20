import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripts/utils/text_style.dart';

import '../../info_classes/m_info.dart';
import '../../info_classes/p_belief.dart';
import '../../main.dart';
import '../../widget/text_input.dart';

class MetodMakulovaScreen extends StatefulWidget {
  MetodMakulovaScreen({super.key});

  // var text = new RichText(
  //   text: new TextSpan(
  //       // // Note: Styles for Text Spans must be explicitly defined.
  //       // Child text spans will inherit styles from parent
  //       style: TextStyle(
  //         fontSize: 14.0,
  //         color: Colors.black,
  //       ),
  //       children: <TextSpan>[
  //         new TextSpan(text: 'Hello'),
  //         new TextSpan(
  //             text: 'World', style: new TextStyle(fontWeight: FontWeight.bold)),
  //       ]),
  // );

  @override
  State<MetodMakulovaScreen> createState() => _MetodMakulovaScreenState();
}

class _MetodMakulovaScreenState extends State<MetodMakulovaScreen> {
  final _namefocus = FocusNode();
  final _datafocus = FocusNode();

  final nameController = TextEditingController();
  final dataController = TextEditingController();

  @override
  void dispose() {
    _namefocus.dispose();
    _datafocus.dispose();
    nameController.dispose();
    dataController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final name = Provider.of<Name>(context);
    final data = Provider.of<DTN>(context);
    final belief = Provider.of<Belief>(context);

    // final problem = Provider.of<Problem>(context).problem;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Метод Макулова',
          style: TextStyleG.AppBarTextStyle,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Примечание',
                    style: TextStyleG.h2TextStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextFormFieldWidget(
                focusNode: _namefocus,
                currentFocus: _namefocus,
                nextFocus: _datafocus,
                textChild: ('Имя Клиента'),
                Controller: nameController,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormFieldWidget(
                focusNode: _datafocus,
                currentFocus: _datafocus,
                nextFocus: _datafocus,
                textChild: ('Дата'),
                Controller: dataController,
              ),
              SizedBox(
                height: 9,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyleG.h3baseTextStyle,
                    children: <TextSpan>[
                      new TextSpan(
                          text:
                              'Здравствуйте. Итак, хочу напомнить, что ваше присутствие на консультации и дальнейшая проработка означает то, '),
                      new TextSpan(
                          text:
                              ' что вы не состоите, и не состояли на учете у психиатра.',
                          style: TextStyleG.h3boldTextStyle),
                    ]),
              ),
              SizedBox(
                height: 20,
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Клиент выспался'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text(
                    'Не пил алкоголя 4-7 дней до консультации и прочие психотропные вещ-ва не употреблял'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Никаких травм головы и прочих частей тел нет'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text(
                    'Сейчас ничего не болит ушиб руки, ноги, зуб и т.д. чтобы не мешало идти по чувству'),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(10, 50)),
                  ),
                  onPressed: () {
                    // yudro.changeSY(situationYudroController.text);
                    // print(yudro.situationY.toString());
                    Navigator.pushNamed(context, '/M31');
                  },
                  child: Text('20')),
            ],
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          belief.clear();
          name.change(nameController.text);
          data.change(dataController.text);

          print(name.name.toString());
          print(data.data.toString());
          Navigator.pushNamed(context, '/M1');
        },
        tooltip: 'Дальше',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}

class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 10.0,
      width: 10.0,
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}
