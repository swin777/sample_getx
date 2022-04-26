import 'package:flutter/material.dart';

class CounControllerWithProvider extends ChangeNotifier {
  int count = 0;
  void increase() {
    count++;
    notifyListeners();
  }
}