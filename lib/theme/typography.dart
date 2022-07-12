// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:flutter_biolerplate/theme/theme_shadows.dart';


// Gist: The way to do Typography and TextTheme is to keep the
//       MD3 defaults and assign custom fonts but use specialized
//       Text Spans to custom App Design Typography tweaks.
//
//       Note that we have _MD3Typography class but not a MD3Typography
//       factory constructor so we have to do all 5 variations including
//       black and white
//
//       For Typography in Flutter Themes we set two specific function types;
//       both Typography and Text Theme.  Since I use the Flutter Beta SDK
//       channel I am moving to  using varibale fonts:
//
//       1. First Phase:
//            -Picked a Serif font that supports optical sizing, Fraunces
//            -Picked a matching Sans variable font, Libre Franklin
//
//       Font Weights via: https://en.wikipedia.org/wiki/Font
//         Thin(Hairline)                 100
//         Ultra-light(Extra Light)       200
//         Light                          300
//         Normal(regular)                400
//         Medium                         500
//         Semi-bold(Demi Bold)           600
//         Bold                           700
//         Extra-Bold(Ultra Bold)         800
//         Heavy(Black)                   900
//         Extra Black(Ultra Black)       950
//
//      Variable Font https://en.wikipedia.org/wiki/Variable_font
//      Open Soruce Google Fonts https://fonts.google.com/
//      Google Fonts Plugin  https://pub.dev/packages/google_fonts
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
//   From the _M#Typography class from https://github.com/flutter/flutter/blob/master/packages/flutter/lib/src/material/typography.dart
//          englishLike
//             displayLarge inherit false fontSize 57.0 fontWeight w400 letterSpacing -0.25 height 1.12 textbaseline alplhabetic leadingDistrivution even
//             displayMedium inherit false fontSize 45.0 fontWeight w400 letterSpacing 0.0 height 1.16 textbaseline alphavetic leadingDistribution even
//             displaySmall inherit false fontSize  36.0 fontWeight w400 letterSapcing 0.0 height 1.22 textBaseline aplhabetic leadingDistribution even
//             headlineLarge inherit false fontSize 32.0 fontWeight w400 letterSpeacing 0.0 height 1.25 textbaseline alphabetic leadingDistribution even
//             headlineMedium inherit false fontSize 28.0 fontWeight w400 letterSpacing 0.0 hieght 1.29 textBaseline alphabetic leadingDistribution even
//             headlineSmall inherit false fontSize 24.0 fontWeight w400 lettingSpacing 0.0 height 1.33 textbaseline alphabetic leadingDistributioneven
//             titlelarge inherit false fontSize 22.0 fontWeight w400 letterSpacing 0.0 height 1.27 textBaseline alphabetic leadingDistribution even
//             titleMedium inherit false fontSize 16.0 fontWeight w500 letterSpacing 0.15 height 1.50 textbaseline alphabetic leadingDistribution even
//             titleSmall inherit false fontSize  14.0 fontWiegth w500 letterSpacing 0.1 height 1.43 textbaseline alphabetic leadingDistribution even
//             labelLarge inherit false fontSize 14.0 fontWeight w500 letterSpacing 0.1 height 1.43 textBaseline alphabetic leadingDistrubtion even
//             labelMedium inherit false fontSize 12.0 fontWeight w500 letterSpacing 0.5 height 1.33 textbasline alphabetic leadingDistrubtion even
//             labelSmall inherit false fontSize 11.0 fontWeight w500 letterSpacing 0.5 height 1.45 textBaseline alphabetic leadingDistribution even
//             bodyLarge inherit false fontSzie 16.0 fontWeight w400 letterSpacing 0.5 height 1.50 textBaseline alphabetic leadingDistrubiton even
//             bodyMedium inherit false fontSize 14.0 fontWeigth w400 letterSpaceing 0.25 height 1.43 textBaseline alphabetic leadingDistrubiton even
//             bodySmall inherit false fontSzie 12.0 fontWeigth w400 letterSpaacing 0.4 height 1.33 textbaseline alphabetic leadingDistribution even
//
//          dense
//             displayLarge inherit false fontSzie 57.0 fontWeigth w400  letterSpaceing -0.25 height 1.12 textbaseline ideographic leadingDistrubiton even
//             displayMedium inherit falze fontSize 45.0 fontWeigth w400 letterSpacing 0.0 height1.16 textbaseline ideogrpahic leadingDistrubiton even
//             displaySmall inherit false fontSize 36.0 fontWeigth w400 letterSpacing 0.0 height1.22 textbaselinbe idoegrpahic leadingDistrubiton even
//             healineLarge inherit false fontSize 32.0 fontWeigth w400 letterSapcing 0.0 height 1.25 textbaseline idoegrpahic leadingtDistrubtion even
//             headlineMedium inherit false fontSize 28.0 fontWeigth w400 letterSpacing 0.0 height 1.29 textbaslien ideogrpahic leadingDistrubtion even
//             headlineSmall inherit false fontSize 24.0 fontWEigth w400 letterSpacing 0.0 height 1.33 textbaseline ideogrpahic leadingDistrubtion even
//             titleLarge inherit false fontSize 22.0 fontWeigth w400 letterSpacing 0.0 height 1.27 textbaseline ideogrpahic leadingDistrubiton even
//             titleMedium inherit false fontSize 16.0 fontWeight w500 letterSpacing 0.15 height 1.50 testbaseline ideogrpahic leadingDistribution even
//             titleSmall inherit false fontSize 14.0 fontWeight w500 ltterSpacing 0.1 height 1.43 textbaseline ideogrpahic leadingDistrubtion even
//             labelLarge inherit false fontSize 14.0 fontWeight  w500 letterSpacing 0.1 height 1.43 textbaseline ideographic leadingDistrubtion even
//             labelMedium inherit false fontSize 12.0 fontWeigth w500 letterSpacing 0.5 hieght 1.33 textbaseline ideographic leadingDistriubtion even
//             lableSmall inherit false fontSzie 11 fontWeigth w500 letterSpacing 0.5 height 1.45 textbaselien ideogrpahic leadingDisrubtion even
//             bodyLarge inherit false fontSize 16.0 fontWeigth w400 letterSpacing 0.5 height 1.50 textbaseline ideogrpahic leadingdistriubtion even
//             bodyMedium inherit false fontSize 14.0 fontWeight w400 letterSpacing 0.25 height .143 textbaseline ideogrpahic leadingdisrubiton even
//             bodySmall inherit false fontSize 12.0 fontWeight w400 letterSpacing 0.4 height 1.33 textbaseline ideogrpahic leadingdistriubtion even
//
//         tall
//            displayLarge inherit false fontSize 57.0 fontWeight w400 letterSpacing -0.25 height 1.12 textbaseline alphabetci leadingdistrubiton even
//            displayMedium inherit false fontSize 45.0 fontWeight w400 letterSpacing 0.0 height 1.16 textbaseline alphabetic leadingDistirubiton even
//            displaySmall  inherit false fontSize 36.0 fontWeight w400 letterSpacing 0.0 height 1.22 textbasline alphabetic leadingdistribution even
//            headlineLarge inherit false fontSize 32.0 fontWeight w400 letterSpacing 0.0 height 1.25 textbasline alphabetic leadingdistribution even
//            headlineMeidum inherit false fontSize 28.0 fontWEight w400 letterSpacing 0.0 height 1.29 textbasline alphabetic leadingdistribution even
//            headlienSmall inherit false fontSize 24.0 fontWEgith w400 letterSpacing 0.0 height 1.33 textbasline alphabetic leadingdistribution even
//            titlelarge inherit false fontSize 22.0 fontWEight w400 letterSpacing 0.0 height 1.27 textbasline alphabetic leadingdistribution even
//            titleMedium inherit false fontSize 16.0 fontEight w500 letterSpacing 0.0 height 1.50 textbasline alphabetic leadingdistribution even
//            titleSmall inherit false fontSize 14.0 fontWeight w500 letterSpacing 0.15 height 1.43 textbasline alphabetic leadingdistribution even
//            labelLarge inherit false fontSize 14.0 fontWeight w500 letterSpacing 0.1 height 1.43 textbasline alphabetic leadingdistribution even
//            labelMedium inherit false fontSize 12.0 fontWeight w500 letterSpacing 0.1 height 1.33 textbasline alphabetic leadingdistribution even
//            labelSmall inherit false fontSize 11.0 fontWEight w500 letterSpacing 0.5 height 1.45 textbasline alphabetic leadingdistribution even
//            bodylarge inherit false fontSize 16.0 fontWeight w400 letterSpacing 0.5 height 1.50 textbasline alphabetic leadingdistribution even
//            bodyMedium inherit false fontSize 14.0 fontWeight w400 letterSpacing 0.25 height 1.43 textbasline alphabetic leadingdistribution even
//            bodySmall inherit false  fontSize 12.0 fontWeight w400 letterSpacing 0.4 height 1.33 textbasline alphabetic leadingdistribution even

final Typography appTypography = Typography(
  black: appBlackTheme,
  white: appWhiteTheme,
  englishLike: appEnglishLikeTextTheme,
  dense: appDenseTextTheme,
  tall: appTallTextTheme,
);

final TextTheme appBlackTheme = TextTheme(
  displayLarge: TextStyle(
    debugLabel: 'Black Fraunces displayLarge',
    // fontFamily: GoogleFonts.fraunces().fontFamily,
    color: Colors.black54,
    decoration: TextDecoration.none,
    shadows: textLightShadows,
  ),
  displayMedium: TextStyle(
    debugLabel: 'Black Fraunces displayMedium',
    // fontFamily: GoogleFonts.fraunces().fontFamily,
    color: Colors.black54,
    decoration: TextDecoration.none,
    shadows: textLightShadows,
  ),
  displaySmall: TextStyle(
    debugLabel: 'Black Fraunces displaySmall',
    // fontFamily: GoogleFonts.fraunces().fontFamily,
    color: Colors.black54,
    decoration: TextDecoration.none,
    shadows: textLightShadows,
  ),
  headlineLarge: TextStyle(
    debugLabel: 'Black Fraunces headlineLarge',
    // fontFamily: GoogleFonts.fraunces().fontFamily,
    color: Colors.black54,
    decoration: TextDecoration.none,
    shadows: textLightShadows,
  ),
  headlineMedium: TextStyle(
    debugLabel: 'Black Fraunces headlineMedium',
    // fontFamily: GoogleFonts.fraunces().fontFamily,
    color: Colors.black54,
    decoration: TextDecoration.none,
    shadows: textLightShadows,
  ),
  headlineSmall: TextStyle(
    debugLabel: 'Black Fraunces headlineSmall',
    // fontFamily: GoogleFonts.fraunces().fontFamily,
    color: Colors.black87,
    decoration: TextDecoration.none,
    shadows: textLightShadows,
  ),
  titleLarge: TextStyle(
    debugLabel: 'Black Fraunces titleLarge',
    // fontFamily: GoogleFonts.fraunces().fontFamily,
    color: Colors.black87,
    decoration: TextDecoration.none,
    shadows: textLightShadows,
  ),
  titleMedium: TextStyle(
    debugLabel: 'Black Fraunces titleMedium',
    // fontFamily: GoogleFonts.fraunces().fontFamily,
    color: Colors.black87,
    decoration: TextDecoration.none,
    shadows: textLightShadows,
  ),
  titleSmall: TextStyle(
    debugLabel: 'Black Fraunces titleSmall',
    // fontFamily: GoogleFonts.fraunces().fontFamily,
    color: Colors.black,
    decoration: TextDecoration.none,
    shadows: textLightShadows,
  ),
  bodyLarge: TextStyle(
    debugLabel: 'Black LibreFranklin bodyLarge',
    // fontFamily: GoogleFonts.libreFranklin().fontFamily,
    color: Colors.black87,
    decoration: TextDecoration.none,
    shadows: textLightShadows,
  ),
  bodyMedium: TextStyle(
    debugLabel: 'Black LibreFranklin bodyMedium',
    // fontFamily: GoogleFonts.libreFranklin().fontFamily,
    color: Colors.black87,
    decoration: TextDecoration.none,
    shadows: textLightShadows,
  ),
  bodySmall: TextStyle(
    debugLabel: 'Black LibreFranklin bodySmall',
    // fontFamily: GoogleFonts.libreFranklin().fontFamily,
    color: Colors.black54,
    decoration: TextDecoration.none,
    shadows: textLightShadows,
  ),
  labelLarge: TextStyle(
    debugLabel: 'Black Fraunces labelLarge',
    // fontFamily: GoogleFonts.fraunces().fontFamily,
    color: Colors.black87,
    decoration: TextDecoration.none,
    shadows: textLightShadows,
  ),
  labelMedium: TextStyle(
    debugLabel: 'Black Fraunces labelMedium',
    // fontFamily: GoogleFonts.fraunces().fontFamily,
    color: Colors.black,
    decoration: TextDecoration.none,
    shadows: textLightShadows,
  ),
  labelSmall: TextStyle(
    debugLabel: 'Black Fraunces labelSmall',
    // fontFamily: GoogleFonts.fraunces().fontFamily,
    color: Colors.black,
    decoration: TextDecoration.none,
    shadows: textLightShadows,
  ),
);

final TextTheme appWhiteTheme = TextTheme(
  displayLarge: TextStyle(
    debugLabel: 'White Fraunces displayLarge',
    // fontFamily: GoogleFonts.fraunces().fontFamily,
    color: Colors.white54,
    decoration: TextDecoration.none,
    shadows: textDarkShadows,
  ),
  displayMedium: TextStyle(
    debugLabel: 'White Fraunces displayMedium',
    // fontFamily: GoogleFonts.fraunces().fontFamily,
    color: Colors.white54,
    decoration: TextDecoration.none,
    shadows: textDarkShadows,
  ),
  displaySmall: TextStyle(
    debugLabel: 'White Fraunces displaySmall',
    // fontFamily: GoogleFonts.fraunces().fontFamily,
    color: Colors.white54,
    decoration: TextDecoration.none,
    shadows: textDarkShadows,
  ),
  headlineLarge: TextStyle(
    debugLabel: 'White Fraunces headlineLarge',
    // fontFamily: GoogleFonts.fraunces().fontFamily,
    color: Colors.white54,
    decoration: TextDecoration.none,
    shadows: textDarkShadows,
  ),
  headlineMedium: TextStyle(
    debugLabel: 'White fraunces headlineMedium',
    // fontFamily: GoogleFonts.fraunces().fontFamily,
    color: Colors.white54,
    decoration: TextDecoration.none,
    shadows: textDarkShadows,
  ),
  headlineSmall: TextStyle(
    debugLabel: 'White Fraunces headlineSmall',
    // fontFamily: GoogleFonts.fraunces().fontFamily,
    color: Colors.white70,
    decoration: TextDecoration.none,
    shadows: textDarkShadows,
  ),
  titleLarge: TextStyle(
    debugLabel: 'White Fraunces titleLarge',
    // fontFamily: GoogleFonts.fraunces().fontFamily,
    color: Colors.white70,
    decoration: TextDecoration.none,
    shadows: textDarkShadows,
  ),
  titleMedium: TextStyle(
    debugLabel: 'White Fraunces titleMedium',
    // fontFamily: GoogleFonts.fraunces().fontFamily,
    color: Colors.white70,
    decoration: TextDecoration.none,
    shadows: textDarkShadows,
  ),
  titleSmall: TextStyle(
    debugLabel: 'White Fraunces titleSmall',
    // fontFamily: GoogleFonts.fraunces().fontFamily,
    color: Colors.white,
    decoration: TextDecoration.none,
    shadows: textDarkShadows,
  ),
  bodyLarge: TextStyle(
    debugLabel: 'White LibreFrankklin bodyLarge',
    // fontFamily: GoogleFonts.libreFranklin().fontFamily,
    color: Colors.white70,
    decoration: TextDecoration.none,
    shadows: textDarkShadows,
  ),
  bodyMedium: TextStyle(
    debugLabel: 'White LibreFranklin bodyMedium',
    // fontFamily: GoogleFonts.libreFranklin().fontFamily,
    color: Colors.white70,
    decoration: TextDecoration.none,
    shadows: textDarkShadows,
  ),
  bodySmall: TextStyle(
    debugLabel: 'White LibreFranklin bodySmall',
    // fontFamily: GoogleFonts.libreFranklin().fontFamily,
    color: Colors.white54,
    decoration: TextDecoration.none,
    shadows: textDarkShadows,
  ),
  labelLarge: TextStyle(
    debugLabel: 'White Fraunces labelLarge',
    // fontFamily: GoogleFonts.fraunces().fontFamily,
    color: Colors.white70,
    decoration: TextDecoration.none,
    shadows: textDarkShadows,
  ),
  labelMedium: TextStyle(
    debugLabel: 'White Fraunces labelMedium',
    // fontFamily: GoogleFonts.fraunces().fontFamily,
    color: Colors.white,
    decoration: TextDecoration.none,
    shadows: textDarkShadows,
  ),
  labelSmall: TextStyle(
    debugLabel: 'White Fraunces labelSmall',
    // fontFamily: GoogleFonts.fraunces().fontFamily,
    color: Colors.white,
    decoration: TextDecoration.none,
    shadows: textDarkShadows,
  ),
);

const TextTheme appEnglishLikeTextTheme = TextTheme(
  displayLarge: TextStyle(
    debugLabel: 'englishLike displayLarge ',
    fontSize: 57,
    fontWeight: FontWeight.w900,
    letterSpacing: -0.25,
    height: 1.12,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  displayMedium: TextStyle(
    debugLabel: 'englishLike displayMedium',
    fontSize: 45,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  displaySmall: TextStyle(
    debugLabel: 'englishLike displaySmall',
    fontSize: 36,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.22,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  headlineLarge: TextStyle(
    debugLabel: 'englishLike headlineLarge',
    fontSize: 32,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.25,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  headlineMedium: TextStyle(
    debugLabel: 'englishLike headlineMedium',
    fontSize: 28,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.29,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  headlineSmall: TextStyle(
    debugLabel: 'englishLike headlineSmall',
    fontSize: 24,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.33,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  titleLarge: TextStyle(
    debugLabel: 'englishLike titleLarge',
    fontSize: 22,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.27,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  titleMedium: TextStyle(
    debugLabel: 'englishLike titleMedium',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    height: 1.50,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  titleSmall: TextStyle(
    debugLabel: 'englishLike titleSmall',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    height: 1.43,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  labelLarge: TextStyle(
    debugLabel: 'englishLike labelLarge',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    height: 1.43,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  labelMedium: TextStyle(
    debugLabel: 'englishLike labelMedium',
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    height: 1.33,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  labelSmall: TextStyle(
    debugLabel: 'englishLike labelSmall',
    fontSize: 11,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    height: 1.45,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  bodyLarge: TextStyle(
    debugLabel: 'englishLike bodyLarge',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  bodyMedium: TextStyle(
    debugLabel: 'englishLike bodyMedium',
    inherit: false,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    height: 1.43,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  bodySmall: TextStyle(
    debugLabel: 'englishLike bodySmall',
    inherit: false,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    height: 1.33,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),

);

const TextTheme appDenseTextTheme = TextTheme(
  displayLarge: TextStyle(
    debugLabel: 'dense displayLarge',
    inherit: false,
    fontSize: 57,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.25,
    height: 1.12,
    textBaseline: TextBaseline.ideographic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  displayMedium: TextStyle(
    debugLabel: 'dense displayMedium',
    inherit: false,
    fontSize: 45,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.16,
    textBaseline: TextBaseline.ideographic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  displaySmall: TextStyle(
    debugLabel: 'dense displaySmall',
    inherit: false,
    fontSize: 36,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.22,
    textBaseline: TextBaseline.ideographic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  headlineLarge: TextStyle(
    debugLabel: 'dense headlineLarge',
    inherit: false,
    fontSize: 32,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.25,
    textBaseline: TextBaseline.ideographic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  headlineMedium: TextStyle(
    debugLabel: 'dense headlineMedium',
    inherit: false,
    fontSize: 28,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.29,
    textBaseline: TextBaseline.ideographic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  headlineSmall: TextStyle(
    debugLabel: 'dense headlineSmall',
    inherit: false,
    fontSize: 24,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.33,
    textBaseline: TextBaseline.ideographic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  titleLarge: TextStyle(
    debugLabel: 'dense titleLarge',
    inherit: false,
    fontSize: 22,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.27,
    textBaseline: TextBaseline.ideographic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  titleMedium: TextStyle(
    debugLabel: 'dense titleMedium',
    inherit: false,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    height: 1.50,
    textBaseline: TextBaseline.ideographic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  titleSmall: TextStyle(
    debugLabel: 'dense titleSmall',
    inherit: false,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    height: 1.43,
    textBaseline: TextBaseline.ideographic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  labelLarge: TextStyle(
    debugLabel: 'dense labelLarge',
    inherit: false,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    height: 1.43,
    textBaseline: TextBaseline.ideographic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  labelMedium: TextStyle(
    debugLabel: 'dense labelMedium',
    inherit: false,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    height: 1.33,
    textBaseline: TextBaseline.ideographic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  labelSmall: TextStyle(
    debugLabel: 'dense labelSmall',
    inherit: false,
    fontSize: 11,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    height: 1.45,
    textBaseline: TextBaseline.ideographic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  bodyLarge: TextStyle(
    debugLabel: 'dense bodyLarge',
    inherit: false,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    height: 1.50,
    textBaseline: TextBaseline.ideographic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  bodyMedium: TextStyle(
    debugLabel: 'dense bodyMedium',
    inherit: false,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    height: 1.43,
    textBaseline: TextBaseline.ideographic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  bodySmall: TextStyle(
    debugLabel: 'dense bodySmall',
    inherit: false,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    height: 1.33,
    textBaseline: TextBaseline.ideographic,
    leadingDistribution: TextLeadingDistribution.even,
  ),

);

const TextTheme appTallTextTheme = TextTheme(
  displayLarge: TextStyle(
    debugLabel: 'tall displayLarge',
    inherit: false,
    fontSize: 57,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.25,
    height: 1.12,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  displayMedium: TextStyle(
    debugLabel: 'tall displayMedium',
    inherit: false,
    fontSize: 45,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.16,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  displaySmall: TextStyle(
    debugLabel: 'tall displaySmall',
    inherit: false,
    fontSize: 36,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.22,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  headlineLarge: TextStyle(
    debugLabel: 'tall headlineLarge',
    inherit: false,
    fontSize: 32,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.25,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  headlineMedium: TextStyle(
    debugLabel: 'tall headlineMedium',
    inherit: false,
    fontSize: 28,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.29,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  headlineSmall: TextStyle(
    debugLabel: 'tall headlineSmall',
    inherit: false,
    fontSize: 24,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.33,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  titleLarge: TextStyle(
    debugLabel: 'tall titleLarge',
    inherit: false,
    fontSize: 22,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.27,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  titleMedium: TextStyle(
    debugLabel: 'tall titleMedium',
    inherit: false,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    height: 1.50,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  titleSmall: TextStyle(
    debugLabel: 'tall titleSmall',
    inherit: false,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    height: 1.43,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  labelLarge: TextStyle(
    debugLabel: 'tall labelLarge',
    inherit: false,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    height: 1.43,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  labelMedium: TextStyle(
    debugLabel: 'tall labelMedium',
    inherit: false,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    height: 1.33,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  labelSmall: TextStyle(
    debugLabel: 'tall labelSmall',
    inherit: false,
    fontSize: 11,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    height: 1.45,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  bodyLarge: TextStyle(
    debugLabel: 'tall bodyLarge',
    inherit: false,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    height: 1.50,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  bodyMedium: TextStyle(
    debugLabel: 'tall bodyMedium',
    inherit: false,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    height: 1.43,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  bodySmall: TextStyle(
    debugLabel: 'tall bodySmall',
    inherit: false,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    height: 1.33,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  ),

);
