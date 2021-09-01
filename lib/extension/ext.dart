


import 'package:flutter/cupertino.dart';

extension ScreenInfo on BuildContext {
  double width() => MediaQuery.of(this).size.width;
  double halfWidth() => MediaQuery.of(this).size.width / 2;
  double height() => MediaQuery.of(this).size.height;
  double halfHeight() => MediaQuery.of(this).size.height / 2;
}

extension StringExt on String {
  String orEmpty(String empty) => this.isEmpty ? empty : this;
}