import 'package:flutter/material.dart';
import 'package:flutter_biolerplate/theme/app_colors.dart';
import 'package:flutter_biolerplate/theme/theme_shadows.dart';

final IconThemeData appMaterialLightPrimaryIconTheme = IconThemeData(
  color: appLightColorScheme.primary,
  size: 24,
  shadows: iconLightShadows,
);

// ignore: prefer-correct-identifier-length
final IconThemeData appMaterialDarkPrimaryIconTheme = IconThemeData(
  color: appDarkColorScheme.primary,
  size: 24,
  shadows: iconDarkShadows,
);
