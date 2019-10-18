import 'package:flutter/material.dart';

typedef WidgetBuilder<T> = Widget Function(T data);

extension FutureExtension on Future {
  /// Resolve the current future and show a Widget when data is received
  Widget toWidget(WidgetBuilder builder) {
    return FutureBuilder(
      future: this,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasData)
          return builder(snapshot.data);
        else
          return SizedBox();
      },
    );
  }
}
