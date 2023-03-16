import 'package:flutter/cupertino.dart';

class InferenceClass extends ChangeNotifier {
  //вывод
  String _aboutWorld = '';
  String _aboutOthers = '';
  String _aboutYoutself = '';

  String _decidedBehaves = '';
  String _conclusion = '';
  String _decisiontoAct = '';

  String get aboutWorldling => _aboutWorld;
  String get aboutOthers => _aboutOthers;
  String get aboutYoutself => _aboutYoutself;

  String get decidedBehaves => _decidedBehaves;
  String get conclusion => _conclusion;
  String get decisiontoAct => _decisiontoAct;

  void changeAW(String value) {
    _aboutWorld = value;
    notifyListeners();
  }

  void changeAO(String value) {
    _aboutOthers = value;
    notifyListeners();
  }

  void changeAYSF(String value) {
    _aboutYoutself = value;
    notifyListeners();
  }

  void changeDB(String value) {
    _decidedBehaves = value;
    notifyListeners();
  }

  void changeC(String value) {
    _conclusion = value;
    notifyListeners();
  }

  void changeDA(String value) {
    _decisiontoAct = value;
    notifyListeners();
  }

  set decisiontoAct(String value) {
    _decisiontoAct = value;
    notifyListeners();
  }

  set aboutWorld(String value) {
    _aboutWorld = value;
    notifyListeners();
  }

  set conclusion(String value) {
    _conclusion = value;
    notifyListeners();
  }

  set decidedBehaves(String value) {
    _decidedBehaves = value;
    notifyListeners();
  }

  set aboutYoutself(String value) {
    _aboutYoutself = value;
    notifyListeners();
  }

  set aboutOthers(String value) {
    _aboutOthers = value;
    notifyListeners();
  }
}

class InferenceY extends ChangeNotifier {
  //вывод
  String _aboutWorldY = '';
  String _aboutOthersY = '';
  String _aboutYoutselfY = '';
  String _decidedBehavesY = '';
  // String _conclusionY = '';
  String _decisiontoActY = '';

  String get aboutWorldY => _aboutWorldY;
  String get aboutOthersY => _aboutOthersY;
  String get aboutYoutselfY => _aboutYoutselfY;
  String get decidedBehavesY => _decidedBehavesY;
  // String get conclusionY => _conclusionY;
  String get decisiontoActY => _decisiontoActY;

  void changeAW(String value) {
    _aboutWorldY = value;
    notifyListeners();
  }

  void changeAO(String value) {
    _aboutOthersY = value;
    notifyListeners();
  }

  void changeAYSF(String value) {
    _aboutYoutselfY = value;
    notifyListeners();
  }

  void changeDBY(String value) {
    _decidedBehavesY = value;
    notifyListeners();
  }

  // void changeC(String value) {
  //   _conclusionY = value;
  //   notifyListeners();
  // }

  void changeDA(String value) {
    _decisiontoActY = value;
    notifyListeners();
  }

  set decisiontoAct(String value) {
    _decisiontoActY = value;
    notifyListeners();
  }

  set aboutWorld(String value) {
    _aboutWorldY = value;
    notifyListeners();
  }

  // set conclusion(String value) {
  //   _conclusionY = value;
  //   notifyListeners();
  // }

  set decidedBehaves(String value) {
    _decidedBehavesY = value;
    notifyListeners();
  }

  set _boutYoutself(String value) {
    _aboutYoutselfY = value;
    notifyListeners();
  }

  set aboutOthers(String value) {
    _aboutOthersY = value;
    notifyListeners();
  }
}
