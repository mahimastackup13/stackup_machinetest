import 'package:flutter/material.dart';
import 'counter_provider.dart';

class Counter extends ChangeNotifier {
  int _counter = 0;
  int get count => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void decrementCounter() {
    if (_counter > 0) {
      _counter--;
      notifyListeners();
    }
  }
}
