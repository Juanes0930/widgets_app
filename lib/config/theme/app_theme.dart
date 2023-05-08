
import 'package:flutter/material.dart';

const List colorsList = <Color>[
Colors.indigo,
Colors.blue,
Colors.red,
Colors.orange,
Colors.deepPurple,
Colors.pink,
Colors.greenAccent
];


class AppTheme{


final int selectedColor ;
AppTheme({this.selectedColor = 0 }):
assert (
  selectedColor >= 0 , 'Selected color must be greater than 0'),
assert (
  selectedColor < colorsList.length , 'Selected color must be greater than the list the colors'); 
  

  ThemeData getTheme () => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorsList[selectedColor],
    appBarTheme: const AppBarTheme(
      elevation: 0,
       centerTitle: true,
       )

  );
}

