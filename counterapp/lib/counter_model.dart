import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  int _count = 1000;
  int get count => _count;

  void decrement() {
    _count--;
    notifyListeners();
  }
}
