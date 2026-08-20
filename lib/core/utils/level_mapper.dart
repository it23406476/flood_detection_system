import 'package:flutter/material.dart';

String levelText(int level) {
  switch (level) {
    case 1:
      return 'WATCH';
    case 2:
      return 'WARNING';
    case 3:
      return 'FLOOD';
    default:
      return 'NORMAL';
  }
}

Color levelColor(int level) {
  switch (level) {
    case 1:
      return Colors.amber;
    case 2:
      return Colors.orange;
    case 3:
      return Colors.red;
    default:
      return Colors.green;
  }
}