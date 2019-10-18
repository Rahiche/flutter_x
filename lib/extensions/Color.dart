import 'package:flutter/material.dart';

extension ColorExtension on Color {
  /// Convert the current Color into a Container Widget with [this] color
  Widget toWidget([double height, double width]) {
    return Container(
      color: this,
      height: height,
      width: width,
    );
  }
}
