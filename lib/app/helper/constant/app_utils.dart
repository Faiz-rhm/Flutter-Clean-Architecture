import 'package:flutter/material.dart';

@immutable
class AppUtils {
  const AppUtils._();

  /// A utility method to convert 0/1 to false/true
  static bool boolFromInt(int i) => i == 1;

}
