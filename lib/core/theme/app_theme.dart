import 'package:flutter/material.dart';

class AppTheme {

  static final ThemeData theme = ThemeData(
    textTheme: TextTheme(
      headlineMedium: const TextStyle().copyWith(
        fontSize: 30, 
        fontWeight: FontWeight.bold, 
        color: Colors.black,
      ),
      bodySmall: const TextStyle().copyWith(
        fontSize: 12, 
        fontWeight: FontWeight.normal, 
        color: Colors.black54,
      ),
    ),
  );

  AppTheme._();
}
