import 'dart:math';
import 'package:flutter/material.dart';

class ColorGenerator {
  final Random _random = Random();

  static const int _fullOpacity = 255;
  static const int _maxRGB = 256;

  Color getRandomColor() {
    return Color.fromARGB(
      _fullOpacity,
      _random.nextInt(_maxRGB),
      _random.nextInt(_maxRGB),
      _random.nextInt(_maxRGB),
    );
  }
}