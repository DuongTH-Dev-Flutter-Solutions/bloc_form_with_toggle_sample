import 'package:flutter/material.dart';

extension TextTypography on TextStyle {
  static TextStyle title() => const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none);

  static TextStyle subtitle() => const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none);
}
