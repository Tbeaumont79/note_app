import 'package:flutter/material.dart';

class NoteProvider with ChangeNotifier {
  int currentIndex;

  set setCurrentIndex(int value) {
    currentIndex = value;
    notifyListeners();
  }

  get getCurrentIndex => currentIndex;
}
