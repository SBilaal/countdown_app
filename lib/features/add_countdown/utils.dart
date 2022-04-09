import 'package:flutter/material.dart';

Color getColorFromIndex(int index) {
  switch (index) {
    case 0: case 1: case 2: case 3: case 4: case 5: case 6: case 7: case 8: case 9: case 10: default:
      return kColors[index];
  }
}

List<Color> kColors = [
  Colors.purple.shade100,
  Colors.black,
  Colors.red,
  Colors.blue,
  Colors.brown,
  Colors.orangeAccent,
  Colors.lightGreen,
  Colors.pink,
  Colors.purple,
  Colors.yellow,
  Colors.lightBlue
];
