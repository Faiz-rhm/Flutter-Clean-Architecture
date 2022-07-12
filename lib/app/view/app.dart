// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_biolerplate/app/l10n/l10n.dart';
import 'package:flutter_biolerplate/presentations/home/view/home_view.dart';
import 'package:flutter_biolerplate/theme/theme.dart';

class App extends StatelessWidget {
  const App();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      theme: appLightThemeData,
      darkTheme: appDarkThemeData,
      themeMode: ThemeMode.dark,
      localizationsDelegates: const [
        AppLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const HomeView(),
    );
  }
}
