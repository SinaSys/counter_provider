import 'package:flutter/material.dart';

class CounterModel with ChangeNotifier {
  int _counter = 0;

  int get currentCount => _counter;

  void increment() {
     _counter = _counter>=0 ? ++_counter : 0;
    notifyListeners();
  }

  void decrement() {
    _counter = _counter>0 ? --_counter : 0;
    notifyListeners();
  }
}
