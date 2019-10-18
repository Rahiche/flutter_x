import 'package:flutter/material.dart';

extension ListExtension on List<String> {
  /// Map the current String list into a Row Widget
  Row toRow() {
    return Row(children: this.map((value) => Text(value)).toList());
  }

  /// Map the current String list into a Column Widget
  Column toColumn() {
    return Column(children: this.map((value) => Text(value)).toList());
  }
}
