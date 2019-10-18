import 'package:flutter/material.dart';

extension Navigation on Widget {
  /// Push the current widget to a new route
  void push(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context) {
        return this;
      }),
    );
  }

  /// Push and replace  the current widget to a new route
  void pushReplacement(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (BuildContext context) {
        return this;
      }),
    );
  }
}
