import 'package:flutter/material.dart';

class CommonProvider extends ChangeNotifier {
  int _taskFilterIndex = 0;
  int get taskFilterIndex => _taskFilterIndex;

  void switchTaskFilter(int index) {
    _taskFilterIndex = index;
    notifyListeners();
  }
}
