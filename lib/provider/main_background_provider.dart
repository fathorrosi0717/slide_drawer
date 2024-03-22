import 'package:flutter/material.dart';

class MainBackgroundProvider extends ChangeNotifier {
  bool _isDrawerOpen = false;

  bool get isDrawerOpen => _isDrawerOpen;

  set isDrawerOpen(bool value) {
    _isDrawerOpen = value;
    notifyListeners();
  }
}
