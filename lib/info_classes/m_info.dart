import 'package:flutter/material.dart';

class Name extends ChangeNotifier {
  String _name = 'имя';

  String get name => _name;

  void change(String value) {
    name = value;
    notifyListeners();
  }

  set name(String value) {
    _name = value;
    notifyListeners();
  }
}

class DTN extends ChangeNotifier {
  String _data = 'дата';

  String get data => _data;

  void change(String value) {
    data = value;
    notifyListeners();
  }

  set data(String value) {
    _data = value;
    notifyListeners();
  }
}

class Problem extends ChangeNotifier {
  String _problem = '';

  String get problem => _problem;

  void change(String value) {
    problem = value;
    notifyListeners();
  }

  set problem(String value) {
    _problem = value;
    notifyListeners();
  }
}

class Situation extends ChangeNotifier {
  String _situation = '';

  String get situation => _situation;

  void change(String value) {
    situation = value;
    notifyListeners();
  }

  set situation(String value) {
    situation = value;
    notifyListeners();
  }
}

class Cangefelling extends ChangeNotifier {
  String _cangefelling = '';

  String get cangefelling => _cangefelling;

  void change(String value) {
    cangefelling = value;
    notifyListeners();
  }

  set cangefelling(String value) {
    cangefelling = value;
    notifyListeners();
  }
}
