import 'package:flutter/material.dart';
import 'package:flutter_biolerplate/theme/app_colors.dart';

// Gist: This is the first level where we can apply Design Twist and Tweaks to
//       Material Design 3 spec of Typography expressed in the Typography class.
//       Keep in mind that this is the first phase of switching to
//      variable fonts where we still load things the non-variable font way but
//      use a variable serif font that has optical scaling as part of our
//      font pairing.
//
//      My Font Pairing Is
//      Variable Serif with Optical Sizing is Fraunces
//
//      Fraucnes(Soft Serif)
//         Black      900
//         Extra Bold 800
//         Bold       700
//         Semi Bold  600
//         Medium     500
//         Regular    400
//         Light      300
//         ExtraLight 200
//         Thin       100
//
//     Libre Franklin(Sans)
//         Black        900
//         Extra Bold   800
//         Bold         700
//         Semi Bold    600
//         Medium       500
//         Regular      400
//         Light        300
//         Exra Light   200
//         Thin         100
//
//        Material Design 3 Original Settings For Text
//              displaylarge fontWeight w400
//              displayMedium fontWeight w400
//              displaySmall fontWeight w400
//              headlineLarge fontweight w400
//              haedlineMedium fontWeight w400
//              headlineSmall fontWeight w400
//              titleLarge fontWeight w400
//              titleMedium fontWeight w500
//              titleSmall fontWeight w500
//              labelLarge fontWeight w500
//              labelMedium fontWeight w500
//              labelSmall fontWeigth w500
//              bodyLarge fontWeight w400
//              bodyMedium fontWeight w400
//              bodySmall fontWeight w400
//
//    Right now going with having the MD3 deviations at the textSpan and individual widgetlevel

const TextTheme appMateriaLightTextTheme = TextTheme(
  displayLarge: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
  ),
  displayMedium: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
  ),
  displaySmall: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  ),
  headlineLarge: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
  ),
  headlineMedium: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
  ),
  headlineSmall: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  ),
  titleLarge: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    ),
  titleMedium: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    ),
  titleSmall: TextStyle(fontStyle: FontStyle.normal),
  labelLarge: TextStyle(fontStyle: FontStyle.normal),
  labelMedium: TextStyle(fontStyle: FontStyle.normal),
  labelSmall: TextStyle(fontStyle: FontStyle.normal),
  bodyLarge: TextStyle(fontStyle: FontStyle.normal),
  bodyMedium: TextStyle(fontStyle: FontStyle.normal),
  bodySmall: TextStyle(fontStyle: FontStyle.normal),


);

// ignore: prefer-correct-identifier-length
final TextTheme appMaterialLightPrimaryTextTheme = TextTheme(
  displayLarge: TextStyle(color: appLightColorScheme.primary),
  displayMedium: TextStyle(color: appLightColorScheme.primary),
  displaySmall: TextStyle(color: appLightColorScheme.primary),
  headlineLarge: TextStyle(
    color: appLightColorScheme.primary,
  ),
  headlineMedium: TextStyle(color: appLightColorScheme.primary),
  headlineSmall: TextStyle(color: appLightColorScheme.primary),
  titleLarge: TextStyle(color: appLightColorScheme.primary),
  titleMedium: TextStyle(color: appLightColorScheme.primary),
  titleSmall: TextStyle(color: appLightColorScheme.primary),
  labelLarge: TextStyle(color: appLightColorScheme.primary),
  labelMedium: TextStyle(color: appLightColorScheme.primary),
  labelSmall: TextStyle(color: appLightColorScheme.primary),
  bodyLarge: TextStyle(color: appLightColorScheme.primary),
  bodyMedium: TextStyle(color: appLightColorScheme.primary),
  bodySmall: TextStyle(color: appLightColorScheme.primary),


);

const TextTheme appMaterialDarkTextTheme = TextTheme(
  displayLarge: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
  ),
  displayMedium: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
  ),
  displaySmall: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  ),
  headlineLarge: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
  ),
  headlineMedium: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
  ),
  headlineSmall: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  ),
  titleLarge: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    ),
  titleMedium: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    ),
  titleSmall: TextStyle(fontStyle: FontStyle.normal),
  labelLarge: TextStyle(fontStyle: FontStyle.normal),
  labelMedium: TextStyle(fontStyle: FontStyle.normal),
  labelSmall: TextStyle(fontStyle: FontStyle.normal),
  bodyLarge: TextStyle(
    fontStyle: FontStyle.normal,
  ),
  bodyMedium: TextStyle(fontStyle: FontStyle.normal),
  bodySmall: TextStyle(fontStyle: FontStyle.normal),


);

// ignore: prefer-correct-identifier-length
final TextTheme appMaterialDarkPrimaryTextTheme = TextTheme(
  displayLarge: TextStyle(color: appDarkColorScheme.primary),
  displayMedium: TextStyle(color: appDarkColorScheme.primary),
  displaySmall: TextStyle(color: appDarkColorScheme.primary),
  headlineLarge: TextStyle(
    color: appDarkColorScheme.primary,
  ),
  headlineMedium: TextStyle(color: appDarkColorScheme.primary),
  headlineSmall: TextStyle(color: appDarkColorScheme.primary),
  titleLarge: TextStyle(color: appDarkColorScheme.primary),
  titleMedium: TextStyle(color: appDarkColorScheme.primary),
  titleSmall: TextStyle(color: appDarkColorScheme.primary),
  labelLarge: TextStyle(color: appDarkColorScheme.primary),
  labelMedium: TextStyle(color: appDarkColorScheme.primary),
  labelSmall: TextStyle(color: appDarkColorScheme.primary),
  bodyLarge: TextStyle(color: appDarkColorScheme.primary),
  bodyMedium: TextStyle(color: appDarkColorScheme.primary),
  bodySmall: TextStyle(color: appDarkColorScheme.primary),

);
