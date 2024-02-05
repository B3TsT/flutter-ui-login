import 'package:flutter/material.dart';
import 'dart:math' as math;

class Responsive {
  late double _width, _height, _diagonal;
  Responsive(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    _width = size.width;
    _height = size.height;
    _diagonal = math.sqrt(math.pow(_width, 2) + math.pow(_height, 2));
  }

  double get width => _width;
  double get height => _height;
  double get diagonal => _diagonal;

  static Responsive of(BuildContext context) => Responsive(context);

  double w(double percent) => _width * percent / 100;
  double h(double percent) => _height * percent / 100;
  double d(double percent) => _diagonal * percent / 100;
}
