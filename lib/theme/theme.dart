

import 'package:flutter/material.dart';

import 'package:flutter_biolerplate/theme/app_brand_color.dart' show AppBrandColors, brandOneDarkPrimary, brandOneLightPrimary, brandThreeDarkPrimary, brandThreeLightPrimary, brandTwoDarkPrimary, brandTwoLightPrimary;
import 'package:flutter_biolerplate/theme/app_colors.dart';
import 'package:flutter_biolerplate/theme/theme_defaults.dart';

ThemeData appLightThemeData = ThemeData(
  applyElevationOverlayColor: true,
  extensions: <ThemeExtension<AppBrandColors>>[
    AppBrandColors(
      brandOneLight: brandOneLightPrimary,
      brandOneDark: brandOneDarkPrimary,
      brandTwoLight: brandTwoLightPrimary,
      brandTwoDark: brandTwoDarkPrimary,
      brandThreeLight: brandThreeLightPrimary,
      brandThreeDark: brandThreeDarkPrimary,
    )
  ],
  useMaterial3: true,
  colorScheme: appLightColorScheme,
  brightness: Brightness.light,

  primaryColor: appMaterialLightPrimaryColor,
  focusColor: appMaterialLightFocusColor,
  hoverColor: appMaterialLightHoverColor,
  shadowColor: appMaterialLightShadowColor,
  canvasColor: appMaterialLightCanvasColor,
  scaffoldBackgroundColor: appMaterialLightScaffoldBackgroundColor,
  bottomAppBarColor: appMaterialLightBottomAppBarColor,
  cardColor: appMaterialLightCardColor,
  dividerColor: appMaterialLightDividerColor,
  highlightColor: appMaterialLightHighLightColor,
  splashColor: appMaterialLightSplashColor,
  selectedRowColor: appMaterialLightSelectedRowColor,
  unselectedWidgetColor: appMaterialLightUnselectedWidgetColor,
  disabledColor: appMaterialLightDisabledColor,
  secondaryHeaderColor: appMaterialLightSecondaryHeaderColor,
  backgroundColor: appMaterialLightBackgroundColor,
  dialogBackgroundColor:  appMaterialLightDialogBackgroundColor,
  indicatorColor: appMaterialLightIndicatorColor,
  hintColor: appMaterialLightHintColor,
  errorColor: appMaterialLightErrorColor,
  toggleableActiveColor: appMaterialLightToggleableActiveColor,



);

ThemeData  appDarkThemeData = ThemeData(
  applyElevationOverlayColor: true,
  extensions: <ThemeExtension<AppBrandColors>>[
    AppBrandColors(
      brandOneLight: brandOneLightPrimary,
      brandOneDark: brandOneDarkPrimary,
      brandTwoLight: brandTwoLightPrimary,
      brandTwoDark: brandTwoDarkPrimary,
      brandThreeLight: brandThreeLightPrimary,
      brandThreeDark: brandThreeDarkPrimary,
    )
  ],
  useMaterial3: true,
  colorScheme: appDarkColorScheme,
  brightness: Brightness.dark,
  primaryColor: appMaterialDarkPrimaryColor,
  focusColor: appMaterialDarkFocusColor,
  hoverColor: appMaterialDarkHoverColor,
  shadowColor: appMaterialDarkShadowColor,
  canvasColor: appMaterialDarkCanvasColor,
  scaffoldBackgroundColor: appMaterialDarkScaffoldBackgroundColor,
  bottomAppBarColor: appMaterialDarkBottomAppBarColor,
  cardColor: appMaterialDarkCardColor,
  dividerColor: appMaterialDarkDividerColor,
  highlightColor: appMaterialDarkHighLightColor,
  splashColor: appMaterialDarkSplashColor,
  selectedRowColor: appMaterialDarkSelectedRowColor,
  unselectedWidgetColor: appMaterialDarkUnselectedWidgetColor,
  disabledColor: appMaterialDarkDisabledColor,
  secondaryHeaderColor: appMaterialDarkSecondaryHeaderColor,
  backgroundColor: appMaterialDarkBackgroundColor,
  dialogBackgroundColor:  appMaterialDarkDialogBackgroundColor,
  indicatorColor: appMaterialDarkIndicatorColor,
  hintColor: appMaterialDarkHintColor,
  errorColor: appMaterialDarkErrorColor,
  toggleableActiveColor: appMaterialDarkToggleableActiveColor,



);
