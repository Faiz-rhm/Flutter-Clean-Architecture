import 'package:flutter/material.dart';
import 'package:flutter_biolerplate/theme/app_colors.dart';
import 'package:flutter_biolerplate/theme/theme_shadows.dart';

final IconThemeData appMaterialLightIconThemeData = IconThemeData(
  color: appLightColorScheme.onSurface,
  size: 24,
  shadows: iconLightShadows,
);

final IconThemeData appMaterialDarkIconThemeData = IconThemeData(
  color: appDarkColorScheme.onSurface,
  size: 24,
  shadows: iconDarkShadows,
);
