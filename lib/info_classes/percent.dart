import 'package:flutter/cupertino.dart';

class Percent extends ChangeNotifier {
  String _percentOne = '';
  String _percentTwo = '';

  String get percentOne => _percentOne;
  String get percentTwo => _percentTwo;

  void changePO(String value) {
    _percentOne = value;
    notifyListeners();
  }

  void changepPT(String value) {
    _percentTwo = value;
    notifyListeners();
  }

  set percentOne(String value) {
    _percentOne = value;
    notifyListeners();
  }

  set percentTwo(String value) {
    _percentTwo = value;
    notifyListeners();
  }
}
