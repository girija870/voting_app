// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';

extension NumX on num {

  Duration get milliSeconds => Duration(milliseconds: toInt());

  Radius get circular => Radius.circular(toDouble());
  BorderRadiusGeometry get rounded => BorderRadius.circular(toDouble());


}
