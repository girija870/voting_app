import 'package:flutter/material.dart';

extension ContextX on BuildContext {
  ///width and height getter
  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  ///paddings getter
  EdgeInsets get padding => MediaQuery.of(this).padding;

  EdgeInsets get viewPadding => MediaQuery.of(this).viewPadding;

  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;
}
