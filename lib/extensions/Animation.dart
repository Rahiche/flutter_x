import 'package:flutter/material.dart';
import 'dart:core';

extension AnimateWidget on Widget {
  Widget fade({Duration duration, On fadeOn = On.show}) {
    return WithFade(child: this, duration: duration);
  }

  Widget scale({Duration duration, On scaleOn = On.show}) {
    return WithScale(child: this, duration: duration);
  }

  Widget rotate({Duration duration, On rotateOn = On.show}) {
    return WithRotate(child: this, rotateOn: rotateOn, duration: duration);
  }

  Widget slide({Duration duration, On slideOn = On.show, Slides slides}) {
    return WithSlide(child: this, slides: slides, duration: duration);
  }
}

class WithFade extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final On fadeOn;

  const WithFade({Key key, this.child, this.duration, this.fadeOn})
      : super(key: key);
  @override
  _WithFadeState createState() => _WithFadeState();
}

class _WithFadeState extends State<WithFade>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: widget.duration ?? Duration(seconds: 1),
    );
    if (widget.fadeOn == On.show) animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.fadeOn == On.tap) animationController.forward();
      },
      onDoubleTap: () {
        if (widget.fadeOn == On.double_tab) animationController.forward();
      },
      child: FadeTransition(
        child: widget.child,
        opacity: animationController,
      ),
    );
  }
}

class WithSlide extends StatefulWidget {
  final Widget child;
  final Slides slides;
  final Duration duration;
  final On slideOn;

  const WithSlide(
      {Key key,
      this.child,
      this.slides = Slides.bottom_to_top,
      this.duration,
      this.slideOn})
      : super(key: key);
  @override
  _WithSlideState createState() => _WithSlideState();
}

class _WithSlideState extends State<WithSlide>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: widget.duration ?? Duration(seconds: 1),
    );

    if (widget.slideOn == On.show) animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.slideOn == On.tap) animationController.forward();
      },
      onDoubleTap: () {
        if (widget.slideOn == On.double_tab) animationController.forward();
      },
      child: SlideTransition(
        child: widget.child,
        position: animationController.drive(getTween()),
      ),
    );
  }

  Tween<Offset> getTween() {
    switch (widget.slides) {
      case Slides.top_to_bottom:
        return Tween(begin: Offset(0, -1), end: Offset(0, 0));
      case Slides.bottom_to_top:
        return Tween(begin: Offset(0, 1), end: Offset(0, 0));
      case Slides.left_to_right:
        return Tween(begin: Offset(-1, 0), end: Offset(0, 0));
      case Slides.right_to_left:
        return Tween(begin: Offset(1, 0), end: Offset(0, 0));
    }
    return Tween(begin: Offset(0, -1), end: Offset(0, 0));
  }
}

enum Slides {
  top_to_bottom,
  bottom_to_top,
  left_to_right,
  right_to_left,
}

class WithScale extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final On scaleOn;

  const WithScale({Key key, this.child, this.duration, this.scaleOn})
      : super(key: key);
  @override
  _WithScaleState createState() => _WithScaleState();
}

class _WithScaleState extends State<WithScale>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: widget.duration ?? Duration(seconds: 1),
    );
    if (widget.scaleOn == On.show) animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.scaleOn == On.tap) animationController.forward();
      },
      onDoubleTap: () {
        if (widget.scaleOn == On.double_tab) animationController.forward();
      },
      child: ScaleTransition(
        child: widget.child,
        scale: animationController,
      ),
    );
  }
}

class WithRotate extends StatefulWidget {
  final Widget child;
  final On rotateOn;
  final Duration duration;

  const WithRotate({Key key, this.child, this.rotateOn, this.duration})
      : super(key: key);
  @override
  _WithRotateState createState() => _WithRotateState();
}

class _WithRotateState extends State<WithRotate>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: widget.duration ?? Duration(seconds: 1),
    );
    if (widget.rotateOn == On.show) animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.rotateOn == On.tap) animationController.forward();
      },
      onDoubleTap: () {
        if (widget.rotateOn == On.double_tab) animationController.forward();
      },
      child: RotationTransition(
        turns: animationController,
        child: widget.child,
      ),
    );
  }
}

enum On {
  tap,
  double_tab,
  show,
}
