import 'package:flutter/material.dart';
import 'package:flutter_biolerplate/theme/app_colors.dart';

final InputDecorationTheme appMaterialLightInputThemeData = InputDecorationTheme(
  fillColor: appLightColorScheme.surface,
  focusColor: appLightColorScheme.surface,
  hoverColor: appLightColorScheme.surface,
  filled: true,
  contentPadding: const EdgeInsets.all(16),
  labelStyle: TextStyle(
    color: appLightColorScheme.onSurface,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
  hintStyle: TextStyle(
    color: appLightColorScheme.onSurface,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
  errorStyle: TextStyle(
    color: appLightColorScheme.error,
    fontSize: 12,
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: appLightColorScheme.error,),
    borderRadius: const BorderRadius.all(Radius.circular(10)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: appLightColorScheme.primary,),
    borderRadius: const BorderRadius.all(Radius.circular(10)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: appLightColorScheme.primary,),
    borderRadius: const BorderRadius.all(Radius.circular(10)),
  ),
  disabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: appLightColorScheme.primary,),
    borderRadius: const BorderRadius.all(Radius.circular(10)),
  ),
);

final InputDecorationTheme appMaterialDarkInputThemeData = InputDecorationTheme(
  fillColor: appDarkColorScheme.surface,
  focusColor: appDarkColorScheme.surface,
  hoverColor: appDarkColorScheme.surface,
  filled: true,
  contentPadding: const EdgeInsets.all(16),
  labelStyle: TextStyle(
    color: appDarkColorScheme.onSurface,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
  hintStyle: TextStyle(
    color: appDarkColorScheme.onSurface,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
  errorStyle: TextStyle(
    color: appDarkColorScheme.error,
    fontSize: 12,
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: appDarkColorScheme.error,),
    borderRadius: const BorderRadius.all(Radius.circular(10)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: appDarkColorScheme.primary,),
    borderRadius: const BorderRadius.all(Radius.circular(10)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: appDarkColorScheme.primary,),
    borderRadius: const BorderRadius.all(Radius.circular(10)),
  ),
  disabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: appDarkColorScheme.primary,),
    borderRadius: const BorderRadius.all(Radius.circular(10)),
  ),
);
