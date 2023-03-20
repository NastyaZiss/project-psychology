import 'dart:collection';

import 'package:flutter/cupertino.dart';

// class Belief extends ChangeNotifier {
//   List<String> _belief = [];
//   String _percentTwo = '';

//   List<String> get belief => _belief;
//   String get percentTwo => _percentTwo;

//   String addBelief(String value) {
//     // _belief = _belief.add(value);

//     notifyListeners();
//     return _belief.toString();
//   }

//   void changepPT(String value) {
//     _percentTwo = value;
//     notifyListeners();
//   }

//   set percentOne(String value) {
//     // _percentOne = value;
//     notifyListeners();
//   }

//   set percentTwo(String value) {
//     _percentTwo = value;
//     notifyListeners();
//   }
// }

class Belief<E> extends ListBase<E> with ChangeNotifier {
  List innerList = [];

  int get length => innerList.length;

  void set length(int length) {
    innerList.length = length;
  }

  void operator []=(int index, E value) {
    innerList[index] = value;
  }

  E operator [](int index) => innerList[index];

  // Though not strictly necessary, for performance reasons
  // you should implement add and addAll.

  void add(E value) => innerList.add(value);

  void addAll(Iterable<E> all) => innerList.addAll(all);
  // void del(_) => innerList.clear();
}
