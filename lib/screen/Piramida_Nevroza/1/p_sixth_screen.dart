import 'package:flutter/material.dart';

import '../../../utils/text_style.dart';

class PSixthScreen extends StatelessWidget {
  const PSixthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '4 РАБОТА С НЕГАТИВНЫМ УБЕЖДЕНИЕМ',
          style: TextStyleG.AppBarTextStyle,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(children: []),
          ),
        ),
      ),
    );
  }
}
