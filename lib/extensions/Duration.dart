import 'package:flutter/material.dart';

extension DurationExtension on Duration {
  ///  Show this [child] after the current duration is passed
  Widget show(Widget child) {
    return ShowAfter(duration: this, child: child);
  }
}

class ShowAfter extends StatefulWidget {
  final Duration duration;
  final Widget child;

  const ShowAfter({Key key, this.duration, this.child}) : super(key: key);
  @override
  _ShowAfterState createState() => _ShowAfterState();
}

class _ShowAfterState extends State<ShowAfter> {
  bool visible = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(widget.duration).then((_) {
      setState(() => visible = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (visible)
      return widget.child;
    else
      return SizedBox.shrink();
  }
}
