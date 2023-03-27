import 'package:flutter/foundation.dart';

class ThemeViewModel extends ChangeNotifier {
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  void toggleTheme() {
    _darkTheme = !_darkTheme;
    if (kDebugMode) {
      print('我改变了主题 $_darkTheme');
    }
    notifyListeners();
  }
}
