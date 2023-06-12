import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skripts/utils/color.dart';

class AccScreen extends StatelessWidget {
  const AccScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.person_crop_circle,
                  size: 150,
                  color: ColorG.main,
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
