import 'package:flutter/material.dart';

class CustomTheme {
  CustomTheme._();

  static ThemeData theme = ThemeData(
    textTheme: TextTheme(
      headlineMedium: const TextStyle().copyWith(
        fontSize: 30.0, 
        fontWeight: FontWeight.bold, 
        color: Colors.black,
      ),
      bodySmall: const TextStyle().copyWith(
        fontSize: 12.0, 
        fontWeight: FontWeight.normal, 
        color: Colors.black54,
      ),
    ),
  );
}
