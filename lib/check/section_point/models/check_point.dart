import 'package:flutter/material.dart';

enum CheckPoint {
  red,
  green,
  yellow,
}

extension CheckPointValue on CheckPoint {
  CheckPoint nextValue() {
    switch (this) {
      case CheckPoint.red:
        return CheckPoint.green;
      case CheckPoint.green:
        return CheckPoint.yellow;
      case CheckPoint.yellow:
        return CheckPoint.red;
    }
  }

  String submitValue() => name;

  Color displayColors() {
    switch (this) {
      case CheckPoint.red:
        return Colors.red;
      case CheckPoint.green:
        return Colors.green;
      case CheckPoint.yellow:
        return Colors.yellow;
    }
  }
}
