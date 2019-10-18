import 'package:flutter/material.dart';

extension Gestures on Widget {
  /// Add on Tap handler to the current widget
  Widget onTap(VoidCallback callback) {
    return GestureDetector(child: this, onTap: callback);
  }

  /// Add on Double Tap handler to the current widget
  Widget onDoubleTap(VoidCallback callback) {
    return GestureDetector(child: this, onDoubleTap: callback);
  }

//  Widget onDrag(BuildContext context, Function(Offset offset) onUpdate,
//      [Function onEnd]) {
//    return GestureDetector(
//      child: this,
//      onPanStart: (DragStartDetails details) {
//        RenderBox box = context.findRenderObject() as RenderBox;
//        Offset local = box.globalToLocal(details.globalPosition);
//        onUpdate(local);
//      },
//      onPanEnd: (DragEndDetails details) {
//        onEnd();
//      },
//      onPanUpdate: (DragUpdateDetails details) {
//        RenderBox box = context.findRenderObject() as RenderBox;
//        Offset local = box.globalToLocal(details.globalPosition);
//        onUpdate(local);
//      },
//    );
//  }
}
