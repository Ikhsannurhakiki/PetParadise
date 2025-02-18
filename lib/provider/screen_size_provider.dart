import 'package:flutter/material.dart';

class ScreenSizeProvider with ChangeNotifier {
  double _width = 0;
  double _height = 0;

  double get width => _width;
  double get height => _height;

  void updateSize(Size size) {
    _width = size.width;
    _height = size.height;
    notifyListeners();
  }

  bool isMobile() => _width < 600;
  bool isTablet() => _width >= 600 && _width < 1200;
  bool isDesktop() => _width >= 1200;
}
