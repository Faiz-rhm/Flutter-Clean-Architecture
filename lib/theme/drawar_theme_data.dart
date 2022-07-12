// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Gist: MD3 spec https://m3.material.io/components/navigation-drawer/specs

import 'package:flutter/material.dart';
import 'package:flutter_biolerplate/theme/app_colors.dart';
import 'package:flutter_biolerplate/theme/theme_defaults.dart';

// Gist: Note under MD3 Modals never ever have surfacetins applied. But, we have
//       a situation in adaptive navigation where we can have a standard drawer
//       that is pernament displayed in which we then have to handle doing
//       the correct opacity for background and primary mixed.
//
//       The way to handle standard drawer with surface tint is to override
//       background color at the shared scaffold level and use the
//       material color utilities package, speicifically the Belnd hamronize
//       with the inputs being background color and primary and make sure
//       ot apply opacity to primary input befroe the Belnd.hamronize function.

DrawerThemeData appMaterialLightDrawerThemeData = DrawerThemeData(
  backgroundColor: appLightColorScheme.background,
  // md3 modal has neutralVariant 20
  scrimColor: appLightScrimColor,


  //MD3 360dp
  width: drawerWidth,
);

DrawerThemeData appMaterialDarkDrawerThemeData = DrawerThemeData(
  backgroundColor: appDarkColorScheme.background,
  // md3 modal has neutralVariant 20
  scrimColor: appDarkScrimColor,


  //MD3 360dp
  width: drawerWidth,
);
