import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_biolerplate/theme/app_colors.dart';
import 'package:flutter_biolerplate/theme/primary_icon_theme.dart';
import 'package:flutter_biolerplate/theme/theme_defaults.dart';


// Gist: We keep component themes to MD3 specs and do the design tweaks and twists at
//       themedata or at widget levels.
//
//       Note that we actually have Large, Medium, and Small Appbar according to Titles used
//       even though there is no speical named constrcutors for those. So we leave setting
//       of AppBar Title size at the widget or in the case of a shared scaffold at the
//       shared scaffold.


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
  centerTitle: false,
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