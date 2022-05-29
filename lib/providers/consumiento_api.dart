import 'package:flutter/material.dart';

class ConsumiendoApiProvider with ChangeNotifier {
  PageController _pageController = PageController(initialPage: 0);
  PageController get pageController => _pageController;
  void setPageController(PageController dato) {
    _pageController = dato;
    // notifyListeners();
  }

  int _currentPage = 0;
  int get currentPage => _currentPage;
  void setCurrentPage(int dato) {
    _currentPage = dato;
    print(_currentPage);
    notifyListeners();
  }

  int _seleccionadoBottom = 0;

  final PageController _pageControllerMain = PageController(initialPage: 0);
  PageController get pageControllerMain => _pageControllerMain;

  int getseleccionadoBottom() => _seleccionadoBottom;
  void setseleccionadoBottom(int dato) {
    _seleccionadoBottom = dato;
    notifyListeners();
    _pageControllerMain.animateToPage(
      dato,
      curve: Curves.easeInOut,
      duration: Duration(milliseconds: 500),
    );
  }
}
