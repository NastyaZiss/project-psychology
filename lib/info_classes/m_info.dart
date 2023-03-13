import 'package:flutter/material.dart';

class Name extends ChangeNotifier {
  String _name = 'имя';

  String get name => _name;

  void change(String value) {
    _name = value;
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
    _data = value;
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
    _problem = value;
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
    _situation = value;
    notifyListeners();
  }

  set situation(String value) {
    _situation = value;
    notifyListeners();
  }
}

class Cangefelling extends ChangeNotifier {
  String _cangefelling = '';
  String _purpose = '';

  String get cangefelling => _cangefelling;
  String get purpose => _purpose;

  void change(String value) {
    _cangefelling = value;
    notifyListeners();
  }

  void changePurpose(String value) {
    _purpose = value;
    notifyListeners();
  }

  set cangefelling(String value) {
    _cangefelling = value;
    notifyListeners();
  }

  set purpose(String value) {
    _purpose = value;
    notifyListeners();
  }
}

class Diagnostic extends ChangeNotifier {
  String _placebody = '';
  String _aboutnegativ = '';

  String get placebody => _placebody;
  String get aboutnegativ => _aboutnegativ;

  void changeP(String value) {
    _placebody = value;
    notifyListeners();
  }

  void changeAN(String value) {
    _aboutnegativ = value;
    notifyListeners();
  }

  set placebody(String value) {
    _placebody = value;
    notifyListeners();
  }

  set aboutnegativ(String value) {
    _aboutnegativ = value;
    notifyListeners();
  }
}

class Regresion extends ChangeNotifier {
  String _oldR = '';
  String _placeR = '';
  String _situationR = '';
  String _otherpeople = '';

  String get oldR => _oldR;
  String get placeR => _placeR;
  String get situationR => _situationR;
  String get otherpeople => _otherpeople;

  void changeOR(String value) {
    _oldR = value;
    notifyListeners();
  }

  void changeP(String value) {
    _placeR = value;
    notifyListeners();
  }

  void changeSR(String value) {
    _situationR = value;
    notifyListeners();
  }

  void changeOPR(String value) {
    _otherpeople = value;
    notifyListeners();
  }

  set oldR(String value) {
    _oldR = value;
    notifyListeners();
  }

  set placeR(String value) {
    _placeR = value;
    notifyListeners();
  }

  set situationR(String value) {
    _situationR = value;
    notifyListeners();
  }

  set otherpeople(String value) {
    _otherpeople = value;
    notifyListeners();
  }
}

class Instinct extends ChangeNotifier {
  String _placebody = '';
  String _instinct = '';
  String _decision = '';

  String get placebody => _placebody;
  String get instinct => _instinct;
  String get decision => _decision;

  void changeP(String value) {
    _placebody = value;
    notifyListeners();
  }

  void changeI(String value) {
    _instinct = value;
    notifyListeners();
  }

  void changeD(String value) {
    _decision = value;
    notifyListeners();
  }

  set placebody(String value) {
    _placebody = value;
    notifyListeners();
  }

  set instinct(String value) {
    _instinct = value;
    notifyListeners();
  }

  set decision(String value) {
    _decision = value;
    notifyListeners();
  }
}


