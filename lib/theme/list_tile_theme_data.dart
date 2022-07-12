import 'package:flutter/material.dart';
import 'package:flutter_biolerplate/theme/app_colors.dart';

final ListTileThemeData appMaterialLightListTileThemeData = ListTileThemeData(
  dense: true,
  selectedColor: appLightColorScheme.secondary,
  iconColor: appLightColorScheme.primary,
  textColor: appLightColorScheme.onSurface,
  contentPadding: const EdgeInsets.all(4),
  tileColor: appLightColorScheme.secondaryContainer,
  selectedTileColor: appLightColorScheme.secondary,
  horizontalTitleGap: 4,
  minVerticalPadding: 4,
  minLeadingWidth: 4,
  enableFeedback: true,
  style: ListTileStyle.list,
  // md3 spec
  shape: RoundedRectangleBorder(
    borderRadius: const BorderRadius.all(Radius.circular(10)),
    side: BorderSide(color: appLightColorScheme.primaryContainer),
  ),
);

final ListTileThemeData appMaterialDarkListTileThemeData = ListTileThemeData(
  dense: true,
  selectedColor: appDarkColorScheme.secondary,
  iconColor: appDarkColorScheme.primary,
  textColor: appDarkColorScheme.onSurface,
  contentPadding: const EdgeInsets.all(4),
  tileColor: appDarkColorScheme.secondaryContainer,
  selectedTileColor: appDarkColorScheme.secondary,
  horizontalTitleGap: 4,
  minVerticalPadding: 4,
  minLeadingWidth: 4,
  enableFeedback: true,
  style: ListTileStyle.list,
  // md3 spec
  shape: RoundedRectangleBorder(
    borderRadius: const BorderRadius.all(Radius.circular(10)),
    side: BorderSide(color: appDarkColorScheme.primaryContainer),
  ),
);
