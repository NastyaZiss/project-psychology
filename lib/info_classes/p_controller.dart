import 'dart:ffi';

import 'package:flutter/cupertino.dart';

class ControllerYudro extends ChangeNotifier {
  bool controller = true;

  void changeTrue() {
    controller = true;
    notifyListeners();
  }

  void changeFalse() {
    controller = false;
    notifyListeners();
  }

  set controllerSet(String value) {
    controller = controller;
    notifyListeners();
  }
}
