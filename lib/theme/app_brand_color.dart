import 'package:flutter/material.dart';
import 'package:flutter_biolerplate/theme/app_colors.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

// Calling this is:
//  theme: ThemeData.light().copyWith(
//        extensions: <ThemeExtension<dynamic>>[
//          const MyColors(
//            brandColor: Color(0xFF1E88E5),
//            danger: Color(0xFFE53935),
//          ),
//        ],
//      ),
//
//  And then in a UI widget per screen:
//
//  final MyColors myColors = Theme.of(context).extension<MyColors>()!;
//  which will give acccess to myColors.brandColor

@immutable
class AppBrandColors extends ThemeExtension<AppBrandColors> {

  const AppBrandColors(
      {this.brandOneLight,
      this.brandOneDark,
      this.brandTwoLight,
      this.brandTwoDark,
      this.brandThreeLight,
      this.brandThreeDark,});
  final Color? brandOneLight;
  final Color? brandOneDark;
  final Color? brandTwoLight;
  final Color? brandTwoDark;
  final Color? brandThreeLight;
  final Color? brandThreeDark;

  @override
  ThemeExtension<AppBrandColors> copyWith({
    Color? brandOneLight,
    Color? brandOneDark,
    Color? brandTwoLight,
    Color? brandTwoDark,
    Color? brandThreeLight,
    Color? brandThreeDark,
  }) {
    return AppBrandColors(
      brandOneLight: brandOneLight ?? this.brandOneLight,
      brandOneDark: brandOneDark ?? this.brandOneDark,
      brandTwoLight: brandTwoLight ?? this.brandTwoLight,
      brandTwoDark: brandTwoDark ?? this.brandTwoDark,
      brandThreeLight: brandThreeLight ?? this.brandThreeLight,
      brandThreeDark: brandThreeDark ?? this.brandThreeDark,
    );
  }

  @override
  ThemeExtension<AppBrandColors> lerp(
    ThemeExtension<AppBrandColors>? other,
    double t,
  ) {
    if (other is! AppBrandColors) {
      return this;
    }

    return AppBrandColors(
      brandOneLight: Color.lerp(brandOneLight, other.brandOneLight, t),
      brandOneDark: Color.lerp(brandOneDark, other.brandOneDark, t),
      brandTwoLight: Color.lerp(brandTwoLight, other.brandTwoLight, t),
      brandTwoDark: Color.lerp(brandTwoDark, other.brandTwoDark, t),
      brandThreeLight: Color.lerp(brandThreeLight, other.brandThreeLight, t),
      brandThreeDark: Color.lerp(brandThreeDark, other.brandThreeDark, t),
    );
  }

  //I did not need the stringto so its optional
}

// The 2nd part of this is to have light and dart versions of brand colors
// to include in the extension slot of ThemeData. In the web and non android
// cases its the two brand colors not used as the themedata seed.

CorePalette brandTwoCorePalette = CorePalette.of(brandColorTwo.value);

CorePalette brandThreeCorePalette = CorePalette.of(brandColorThree.value);

CorePalette brandOneCorePalette = CorePalette.of(brandColorOne.value);

Color brandOneLightPrimary = Color(brandOneCorePalette.primary.get(40));
Color brandOneDarkPrimary = Color(brandOneCorePalette.primary.get(80));

Color brandTwoLightPrimary = Color(brandTwoCorePalette.primary.get(40));
Color brandTwoDarkPrimary = Color(brandTwoCorePalette.primary.get(80));

Color brandThreeLightPrimary = Color(brandThreeCorePalette.primary.get(40));
Color brandThreeDarkPrimary = Color(brandThreeCorePalette.primary.get(80));
