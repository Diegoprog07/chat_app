import 'package:flutter/material.dart';

const Color _customColor = Color(0xff49149f);

const List<Color> _colorThemes= [

  _customColor,
  Colors.blue,
  Colors.yellow,
  Colors.red,
  Colors.green,
  Colors.orange,
  Colors.pink
];

class AppTheme {

  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    :assert(selectedColor >=0 && selectedColor <= _colorThemes.length -1,'el Color debe estar entre 0  ${_colorThemes.length}');

    ThemeData theme(){
      return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colorThemes[selectedColor],
        //brightness: Brightness.dark modooscuro
      );
    }






}