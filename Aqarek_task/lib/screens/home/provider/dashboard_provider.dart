import 'package:flutter/material.dart';

class BottomNavigationBarProvider extends ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  // bottom navigation bar index
  void setIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
