import 'package:flutter/material.dart';
import 'package:flutter_biolerplate/theme/app_colors.dart';

// Gist: Note, that CardTheme can also be reference in app screen as
//       CardTheme.of(context)
//       Per MD3 https://m3.material.io/components/cards/specs
//       there are now three types of cards:
//          Elevated
//          Filled
//          Outlined
//
//       Things that vary per different cards are:
//             elevation
//             surface color
//
//       Choosing to impl the 3 card types via widget expresssion at
//       screen level as I know the 2nd-phase of MD3 support in card might
//       be seperating into 3 card widget classes or 3 specialized
//       card constructors.


CardTheme appMaterialLightCardTheme = CardTheme(
  // some of clip settings are performance heavy so
  // we deviate from this setting via individual use
  // cases per app acreen
  clipBehavior: Clip.none,

  shadowColor: appLightColorScheme.shadow,

  surfaceTintColor: appLightColorScheme.surfaceTint,

  // Per MD3 spec as default is 4.0 if no value is set
  margin: const EdgeInsets.only(
    left: 16,
    right: 16,
  ),



);

CardTheme appMaterialDarkCardTheme = CardTheme(
  // some of clip settings are performance heavy so
  // we deviate from this setting via individual use
  // cases per app acreen
  clipBehavior: Clip.none,

  shadowColor: appDarkColorScheme.shadow,

  surfaceTintColor: appDarkColorScheme.surfaceTint,

  // Per MD3 spec as default is 4.0 if no value is set
  margin: const EdgeInsets.only(
    left: 16,
    right: 16,
  ),
);
