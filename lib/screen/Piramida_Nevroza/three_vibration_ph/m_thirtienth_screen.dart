import 'package:flutter/material.dart';

import '../../../utils/text_style.dart';

class MThirtiethScreen extends StatelessWidget {
  const MThirtiethScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Работа с инстинктом. Вибрация',
            style: TextStyleG.AppBarTextStyle,
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Column(children: [])))));
  }
}
