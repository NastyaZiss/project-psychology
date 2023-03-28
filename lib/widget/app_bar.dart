import 'package:flutter/material.dart';

import '../utils/text_style.dart';

class AppBarG extends StatelessWidget implements PreferredSizeWidget {
  AppBarG({super.key, this.text});
  final text;

  final Size preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
          ),
        ),
      ],
      title: Text(
        text,
        style: TextStyleG.AppBarTextStyle,
      ),
    );
  }
}
