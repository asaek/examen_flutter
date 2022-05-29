import 'package:examen_asael/models/modelos.dart';
import 'package:flutter/material.dart';

class ConsumiendoApiProvider with ChangeNotifier {
  List<int> _cantidad = cantidadKyary;
  List<int> get cantidad => _cantidad;
  void setcantidad({required int cantidad, required int index}) {
    _cantidad[index] = cantidad;
    notifyListeners();
  }

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

  PageController _pageControllerMain = PageController(initialPage: 0);
  PageController get pageControllerMain => _pageControllerMain;
  void setpageControllerMain(PageController dato) {
    _pageControllerMain = dato;
    // notifyListeners();
  }

  int _seleccionadoBottom = 0;
  int getseleccionadoBottom() => _seleccionadoBottom;
  void setseleccionadoBottom(int dato) {
    _seleccionadoBottom = dato;
    notifyListeners();
    _pageControllerMain.animateToPage(
      dato,
      curve: Curves.easeInOut,
      duration: Duration(milliseconds: 500),
    );
    print(_pageControllerMain.page);
  }
}
