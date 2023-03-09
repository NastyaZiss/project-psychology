import 'package:flutter/material.dart';
import 'package:skripts/utils/text_style.dart';

class PiramidaNevrozaScreen extends StatefulWidget {
  const PiramidaNevrozaScreen({super.key});

  @override
  State<PiramidaNevrozaScreen> createState() => _PiramidaNevrozaScreenState();
}

class _PiramidaNevrozaScreenState extends State<PiramidaNevrozaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Пирамида Невроза',
          style: TextStyleG.AppBarTextStyle,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        children: [
          RichText(
            selectionRegistrar: SelectionContainer.maybeOf(context),
            selectionColor: const Color(0xAF6694e8),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
                text:
                    '_Здравствуйте. Итак, хочу напомнить, что ваше присутствие на консультации и дальнейшая проработка означает то, что вы не состоите, и не состояли на учете у психиатра .(Также Клиент выспался, не пил алкоголя 4-7 дней до консультации и прочие психотропные вещ-ва не употреблял). Никаких травм головы и прочих частей тел нету, у вас сейчас ничего не болит( ушиб руки, ноги, зуб и т.д. чтобы не мешало идти по чувству)'),
          ),
        ],
      )),
    );
  }
}
