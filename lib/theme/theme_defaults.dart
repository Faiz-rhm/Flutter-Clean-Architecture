import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:flutter_biolerplate/theme/app_colors.dart';

final Brightness appBrightness =
    SchedulerBinding.instance.window.platformBrightness;

const double widgetRadius = 28;

const double hoverStateOpacity = 0.08;
const double focusStateOpacity = 0.12;
const double pressedStateOpacity = 0.12;
const double draggedStateOpacity = 0.16;

const double appBarElevation = 0;
const double sliverAppBarOnScrollElevation = 3;
const double bannerElevation = 0;
const double bottomNavigationBarElevation = 3;
const double bottomSheetElevation = 12;
const double railNavigationElevation = 0;
const double buttonElevatedEnabledElevation = 1;
const double buttonElevatedDisabledElevation = 0;
const double buttonElevatedHoveredElevation = 3;
const double buttonElevatedFocusedElevation = 1;
const double buttonElevatedPressedElevation = 1;
const double buttonFilledEnabled = 0;
const double buttonFilledDisabled = 0;
const double buttonfilledHovered = 1;
const double buttonFilledFocused = 0;
const double buttonFilledPressed = 0;
const double buttonFilledTonalEnabled = 0;
const double buttonFilledTonalDisabled = 0;
const double buttonFilledTonalHovered = 1;
const double buttonFilledTonalFocused = 0;
const double buttonFilledTonalPressed = 0;
const double buttonOutlinedEnabled = 0;
const double buttonOutlinedDisabled = 0;
const double buttonOutlinedHovered = 0;
const double buttonOutlinedFocused = 0;
const double buttonOutlinedPressed = 0;
const double buttonTextEnabled = 0;
const double buttonTextDisabled = 0;
const double buttonTextHovered = 0;
const double buttonTextFocused = 0;
const double buttonTextPressed = 0;

const double dropmenuElevation = 3;

const double drawerModalElevation = 1;
const double drawerStandardElevation = 0;
const double drawerWidth = 360;

// Note: ListTile Properties:
//            selectedColor is the color when tile selected of
//                  -icons
//                  -text
//
//         Thus only need to worry about in drawers icons, text, and selected color

Color drawerHeaderTextColorLight = appLightColorScheme.onSurfaceVariant;
Color drawerHeaderTextColorDark = appDarkColorScheme.onSurfaceVariant;

Color drawerListTileIconColorLight = appLightColorScheme.onSurfaceVariant;
Color drawerListTileIconColorDark = appDarkColorScheme.onSurfaceVariant;
Color drawerListTileTextColorLight = appLightColorScheme.onSurfaceVariant;
Color drawerListTileTextColorDark = appDarkColorScheme.onSurfaceVariant;

Color drawerListTileSelectedIconTextColorLight =
    appLightColorScheme.secondaryContainer;
Color drawerListTileSelectedIconTextColorDark =
    appDarkColorScheme.secondaryContainer;

Color drawerListTileColorLight = appLightColorScheme.onSecondary;
Color drawerListTileColorDark = appDarkColorScheme.onSecondary;

Color drawerListTileSelectedColorLight = appLightColorScheme.secondaryContainer;
Color drawerListTileSelectedColorDark = appDarkColorScheme.secondaryContainer;

const double elevatedCardElevation = 1;

const double chipElevatedEnabled = 1;
const double chipElevatedDisabled = 0;
const double chipElevatedHovered = 3;
const double chipElevatedFocused = 1;
const double chipElevatedPressed = 1;
const double chipElvattedDragged = 8;
// MD3 MD2 splash colors too dark on dark so going route of
// secondary with opacity
const Color appMaterialLightHighLightColor = Color(0x29000000);
final Color appMaterialLightSplashColor =
    appLightColorScheme.secondary.withOpacity(0.75);
const Color appMaterialDarkHighLightColor = Color(0x29ffffff);
final Color appMaterialDarkSplashColor = appDarkColorScheme.secondary.withOpacity(0.75);

// ignore: prefer-correct-identifier-length
final Color appMaterialLightPrimarySurfaceColor = appLightColorScheme.primary;
// ignore: prefer-correct-identifier-length
final Color appMaterialLightOnPrimarySurfaceColor =
    appLightColorScheme.onPrimary;
// ignore: prefer-correct-identifier-length
final Color appMaterialDarkPrimarySurfaceColor = appLightColorScheme.surface;
// ignore: prefer-correct-identifier-length
final Color appMaterialDarkOnPrimarySurfaceColor = appDarkColorScheme.onSurface;
final Color appMaterialLightPrimaryColor = appLightColorScheme.primary;
final Color appMaterialDarkPrimaryColor = appDarkColorScheme.primary;

final Color appMaterialLightCanvasColor = appLightColorScheme.background;
final Color appMaterialDarkCanvasColor = appDarkColorScheme.background;

// ignore: prefer-correct-identifier-length
final Color appMaterialLightScaffoldBackgroundColor =
    appLightColorScheme.background;
// ignore: prefer-correct-identifier-length
final Color appMaterialDarkScaffoldBackgroundColor =
    appDarkColorScheme.background;

// ignore: prefer-correct-identifier-length
final Color appMaterialLightBottomAppBarColor = appLightColorScheme.surface;
// ignore: prefer-correct-identifier-length
final Color appMaterialDarkBottomAppBarColor = appDarkColorScheme.surface;

final Color appMaterialLightCardColor = appLightColorScheme.surface;
final Color appMaterialDarkCardColor = appDarkColorScheme.surface;

final Color appMaterialLightDividerColor = appLightColorScheme.outline;
final Color appMaterialDarkDividerColor = appDarkColorScheme.outline;

// ignore: prefer-correct-identifier-length
final Color appMaterialLightBackgroundColor = appLightColorScheme.background;
final Color appMaterialDarkBackgroundColor = appDarkColorScheme.background;

// ignore: prefer-correct-identifier-length
final Color appMaterialLightDialogBackgroundColor =
    appLightColorScheme.background;
// ignore: prefer-correct-identifier-length
final Color appMaterialDarkDialogBackgroundColor =
    appDarkColorScheme.background;

final Color appMaterialLightIndicatorColor =
    appMaterialLightOnPrimarySurfaceColor;
final Color appMaterialDarkIndicatorColor =
    appMaterialDarkOnPrimarySurfaceColor;

final Color appMaterialLightErrorColor = appLightColorScheme.error;
final Color appMaterialDarkErrorColor = appDarkColorScheme.error;

final Color appMaterialLightFocusColor = Colors.white.withOpacity(0.12);
final Color appMaterialDarkFocusColor = Colors.black.withOpacity(0.12);

final Color appMaterialLightHoverColor = Colors.white.withOpacity(0.04);
final Color appMaterialDarkHoverColor = Colors.black.withOpacity(0.04);

// Note, I set nav bar shadows separately to match MD3
const Color appMaterialLightShadowColor = Colors.black;
const Color appMaterialDarkShadowColor = Colors.black;

// ignore: prefer-correct-identifier-length
final Color appMaterialLightSelectedRowColor =
    appLightColorScheme.primaryContainer;
// ignore: prefer-correct-identifier-length
final Color appMaterialDarkSelectedRowColor =
    appDarkColorScheme.primaryContainer;

// ignore: prefer-correct-identifier-length
final Color appMaterialLightUnselectedWidgetColor =
    appLightColorScheme.secondaryContainer;
// ignore: prefer-correct-identifier-length
final Color appMaterialDarkUnselectedWidgetColor =
    appDarkColorScheme.secondaryContainer;

// ignore: prefer-correct-identifier-length
final Color appMaterialLightSecondaryHeaderColor =
    appLightColorScheme.secondary;

// ignore: prefer-correct-identifier-length
final Color appMaterialDarkSecondaryHeaderColor = appDarkColorScheme.secondary;

final Color appMaterialLightHintColor = appLightColorScheme.inversePrimary;
final Color appMaterialDarkHintColor = appDarkColorScheme.inversePrimary;

final Color appMaterialLightDisabledColor =
    appLightColorScheme.tertiaryContainer;
final Color appMaterialDarkDisabledColor = appDarkColorScheme.tertiaryContainer;

// ignore: prefer-correct-identifier-length
final Color appMaterialLightToggleableActiveColor =
    appLightColorScheme.primaryContainer;
// ignore: prefer-correct-identifier-length
final Color appMaterialDarkToggleableActiveColor =
    appDarkColorScheme.primaryContainer;
