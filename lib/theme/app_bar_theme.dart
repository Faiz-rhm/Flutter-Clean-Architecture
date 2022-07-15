import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_biolerplate/theme/app_colors.dart';
import 'package:flutter_biolerplate/theme/primary_icon_theme.dart';
import 'package:flutter_biolerplate/theme/theme_defaults.dart';

final AppBarTheme appMaterialLightAppBarTheme = AppBarTheme(
  backgroundColor: appLightColorScheme.surface,
  foregroundColor: appLightColorScheme.onSurface,
  elevation: appBarElevation,
  shadowColor: Colors.transparent,
  centerTitle: true,
  iconTheme: appMaterialLightPrimaryIconTheme,
  actionsIconTheme: appMaterialLightPrimaryIconTheme,
  titleSpacing: 2,
  toolbarHeight: 56,
  systemOverlayStyle: SystemUiOverlayStyle.light,
  titleTextStyle: appBarLightTitleStyle,
  toolbarTextStyle: appBarLightToolbarStyle,
  surfaceTintColor: appMaterialLightPrimaryColor,
);



TextStyle appBarLightTitleStyle = TextStyle(
  color: appLightColorScheme.primary,

);

TextStyle appBarLightToolbarStyle = TextStyle(
  color: appLightColorScheme.primary,
);

final AppBarTheme appMaterialDarkAppBarTheme = AppBarTheme(
  backgroundColor: appDarkColorScheme.surface,
  foregroundColor: appDarkColorScheme.onSurface,
  elevation: appBarElevation,
  shadowColor: Colors.transparent,
  centerTitle: true,
  iconTheme: appMaterialDarkPrimaryIconTheme,
  actionsIconTheme: appMaterialDarkPrimaryIconTheme,
  titleSpacing: 2,
  toolbarHeight: 56,
  systemOverlayStyle: SystemUiOverlayStyle.dark,
  titleTextStyle: appBarDarkTitleStyle,
  toolbarTextStyle: appBarDarkToolbarStyle,
  surfaceTintColor: appMaterialDarkPrimaryColor,
);



TextStyle appBarDarkTitleStyle = TextStyle(
  color: appDarkColorScheme.primary,

);

TextStyle appBarDarkToolbarStyle = TextStyle(
  color: appDarkColorScheme.primary,
);
