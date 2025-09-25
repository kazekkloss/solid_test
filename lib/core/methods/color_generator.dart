import 'dart:math';
import 'package:flutter/material.dart';

class ColorGenerator {
  final Random _random = Random();

  Color getRandomColor() {
    return Color.fromARGB(
      255,
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
    );
  }
}
