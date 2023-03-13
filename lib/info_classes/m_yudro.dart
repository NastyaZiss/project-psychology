import 'package:flutter/cupertino.dart';

class Yudro extends ChangeNotifier {
  String _situationY = '';
  String _oldY = '';
  String _placebodyY = '';
  String _placeY = '';
  String _instinctY = '';
  String _decisionY = '';

  String get situationY => _situationY;
  String get oldY => _oldY;
  String get placeY => _placeY;
  String get placebodyY => _placebodyY;
  String get instinctY => _instinctY;
  String get decisionY => _decisionY;

  void changeSY(String value) {
    _situationY = value;
    notifyListeners();
  }

  void changeOY(String value) {
    _oldY = value;
    notifyListeners();
  }

  void changePBY(String value) {
    _placebodyY = value;
    notifyListeners();
  }

  void changePY(String value) {
    _placeY = value;
    notifyListeners();
  }

  void changeIY(String value) {
    _instinctY = value;
    notifyListeners();
  }

  void changeDY(String value) {
    _decisionY = value;
    notifyListeners();
  }

  set situationY(String value) {
    _situationY = value;
    notifyListeners();
  }

  set placebodyY(String value) {
    _placebodyY = value;
    notifyListeners();
  }

  set placeY(String value) {
    _placeY = value;
    notifyListeners();
  }

  set oldY(String value) {
    _oldY = value;
    notifyListeners();
  }

  set instinctY(String value) {
    _instinctY = value;
    notifyListeners();
  }

  set decisionY(String value) {
    _decisionY = value;
    notifyListeners();
  }
}
