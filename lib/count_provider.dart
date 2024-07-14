import 'package:flutter/material.dart';

class CountProvider with ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  void setIncrement() {
    _counter++;
    notifyListeners();
  }
}
