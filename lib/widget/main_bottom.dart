import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/text_style.dart';

class MainButtom extends StatelessWidget {
  const MainButtom({super.key, this.fun_onPressed, required this.text});

  final Function()? fun_onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 20,
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.15,
        child: ElevatedButton(
          onPressed: () => fun_onPressed!(),
          child: Text(
            text,
            style: TextStyleG.h2blackboldTextStyle,
          ),
        ),
      ),
    ]);
  }
}
