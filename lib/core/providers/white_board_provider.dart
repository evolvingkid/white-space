import 'package:flutter/widgets.dart';

class WhiteBoardProvider with ChangeNotifier {
  String _textData = '';

  String get textData => _textData;

  void onTextEdit(String _val) {
    _textData = _val;
    notifyListeners();
  }
}
