import 'package:flutter/material.dart';

const Color _customColor =
    Color.fromARGB(255, 104, 205, 245); // 0X y 8 digitos.

const List<Color> _colorThemes = [
  Colors.blue,
  Colors.yellow,
  Colors.brown,
  Colors.orange,
  Colors.teal
];

const Color customColor = Color(0xFFFFFF);

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Colors Must be betwen 0 y ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, 
        colorSchemeSeed: _colorThemes[selectedColor]);
        //brightness: Brightness.dark);
  }
}
