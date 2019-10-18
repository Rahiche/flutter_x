import 'package:flutter/material.dart';

extension SizeWidget on num {
  /// Map the current value into a vertical spacer
  SizedBox height() {
    return SizedBox(height: this.toDouble());
  }

  /// Map the current value into a horizontal spacer
  SizedBox width() {
    return SizedBox(width: this.toDouble());
  }

  /// Map the current value into a horizontal list the same widget
  Row hWidgets(Widget child) {
    return Row(
      children: <Widget>[
        for (int i = 0; i < this.toInt(); i++) child,
      ],
    );
  }

  /// Map the current value into a vertical list the same widget
  Column vWidgets(Widget child) {
    return Column(
      children: <Widget>[
        for (int i = 0; i < this.toInt(); i++) child,
      ],
    );
  }
}
