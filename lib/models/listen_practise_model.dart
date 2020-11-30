import 'package:flutter/foundation.dart';

class ListenModel extends ChangeNotifier {
  String value = '';

  void changeValue(String newval) {
    value = newval;
    notifyListeners();
  }
}
