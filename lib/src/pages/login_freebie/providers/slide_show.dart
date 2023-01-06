import 'package:flutter/foundation.dart';

class SlideShow extends ChangeNotifier {
  int _currentPage = 0;

  int get currentPage => _currentPage;

  set currentPage(int pagePosition) {
    if (pagePosition != _currentPage) {
      _currentPage = pagePosition;
      notifyListeners();
    }
  }
}
