import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

const Color brandColorOne = Color(0xfff77f7f);

const Color brandColorTwo = Color(0xffdd7e51);

const Color brandColorThree = Color(0xffddcfcf);

const Color darkSeed = Color(0xfff77f7f);

final CorePalette darkCorePalette = CorePalette.of(darkSeed.value);

const Color lightSeed = Color(0xfff77f7f);

final CorePalette lightCorePalette = CorePalette.of(lightSeed.value);

final CorePalette darkModeFixCorePaletter = CorePalette.of(0xffddcfcf);

// MD3 Modal need neutral variqnt 20
Color appLightScrimColor = Color(lightCorePalette.neutralVariant.get(20)).withOpacity(0.40);

Color appDarkScrimColor = Color(darkCorePalette.neutralVariant.get(20)).withOpacity(0.40);

final ColorScheme appLightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(lightCorePalette.primary.get(40)),
  onPrimary: Color(lightCorePalette.primary.get(100)),
  secondary: Color(lightCorePalette.secondary.get(40)),
  onSecondary: Color(lightCorePalette.secondary.get(40)),
  error: Color(lightCorePalette.error.get(40)),
  onError: Color(lightCorePalette.error.get(100)),
  background: Color(lightCorePalette.neutral.get(99)),
  onBackground: Color(lightCorePalette.neutral.get(10)),
  surface: Color(lightCorePalette.neutral.get(99)),
  onSurface: Color(lightCorePalette.neutral.get(10)),
  // no need to opacity this as its applied by computing elevation in order
  // to cover the overlay thus the higher the elevation the more opacity
  surfaceTint: Color(lightCorePalette.primary.get(40)),
  surfaceVariant: Color(lightCorePalette.neutralVariant.get(90)),
  secondaryContainer: Color(lightCorePalette.secondary.get(90)),
  shadow: Color(lightCorePalette.neutral.get(0)),
  onSurfaceVariant: Color(lightCorePalette.neutralVariant.get(30)),
  onSecondaryContainer: Color(lightCorePalette.secondary.get(10)),

  primaryContainer: Color(lightCorePalette.primary.get(90)),
  onPrimaryContainer: Color(lightCorePalette.primary.get(10)),

  tertiary: Color(lightCorePalette.tertiary.get(40)),
  onTertiary: Color(lightCorePalette.tertiary.get(100)),
  tertiaryContainer: Color(lightCorePalette.tertiary.get(90)),
  onTertiaryContainer: Color(lightCorePalette.tertiary.get(10)),

  errorContainer: Color(lightCorePalette.error.get(90)),
  onErrorContainer: Color(lightCorePalette.error.get(10)),

  inversePrimary: Color(lightCorePalette.primary.get(80)),
  inverseSurface: Color(lightCorePalette.neutral.get(20)),
  onInverseSurface: Color(lightCorePalette.neutral.get(95)),
  outline: Color(lightCorePalette.neutralVariant.get(50)),
);

final ColorScheme appDarkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(darkCorePalette.primary.get(80)),
  onPrimary: Color(darkCorePalette.primary.get(20)),
  secondary: Color(darkCorePalette.secondary.get(80)),
  onSecondary: Color(darkCorePalette.secondary.get(20)),
  error: Color(darkCorePalette.error.get(80)),
  onError: Color(darkCorePalette.error.get(20)),
  background: Color(darkCorePalette.neutral.get(10)),
  onBackground: Color(darkCorePalette.neutral.get(90)),
  surface: Color(darkCorePalette.neutral.get(10)),
  onSurface: Color(darkModeFixCorePaletter.primary.get(90)),
  surfaceTint: Color(darkCorePalette.primary.get(80)),
  surfaceVariant: Color(darkCorePalette.neutralVariant.get(30)),
  secondaryContainer: Color(darkCorePalette.secondary.get(30)),
  shadow: Color(darkCorePalette.neutral.get(0)),
  onSecondaryContainer: Color(darkCorePalette.secondary.get(90)),
  onSurfaceVariant: Color(darkCorePalette.neutralVariant.get(80)),
  primaryContainer: Color(darkCorePalette.primary.get(30)),
  onPrimaryContainer: Color(darkCorePalette.primary.get(90)),
  tertiary: Color(darkCorePalette.tertiary.get(80)),
  onTertiary: Color(darkCorePalette.tertiary.get(20)),
  tertiaryContainer: Color(darkCorePalette.tertiary.get(30)),
  onTertiaryContainer: Color(darkCorePalette.tertiary.get(90)),
  errorContainer: Color(darkCorePalette.error.get(30)),
  onErrorContainer: Color(darkCorePalette.error.get(80)),
  inversePrimary: Color(darkCorePalette.primary.get(40)),
  inverseSurface: Color(darkCorePalette.neutral.get(90)),
  onInverseSurface: Color(darkCorePalette.neutral.get(20)),
  outline: Color(darkCorePalette.neutralVariant.get(60)),
);
