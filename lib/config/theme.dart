import 'package:flutter/material.dart';

/// Centralized app theme — used from `package:govunity_connect/config/theme.dart`
class AppTheme {
  static ThemeData get theme => ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      );
}
