import 'package:flutter/cupertino.dart';

class MySchedule with ChangeNotifier {
  String _viewName = "Intro";
  bool _darkTheme = false;

  String get viewName => _viewName;

  set viewName(String value) {
    _viewName = value;
    notifyListeners();
  }

  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    notifyListeners();
  }
}