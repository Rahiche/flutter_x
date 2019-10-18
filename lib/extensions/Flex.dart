import 'package:flutter/material.dart';

extension FlexExtensions on Flex {
  /// Wrap the current Column/Row with a SingleChildScrollView
  SingleChildScrollView toScrollable() {
    return SingleChildScrollView(
      child: this,
      scrollDirection: (this is Row) ? Axis.horizontal : Axis.vertical,
    );
  }
}
