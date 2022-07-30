import 'package:flutter/material.dart';
import 'package:flutter_biolerplate/app/l10n/l10n.dart';
import 'package:flutter_biolerplate/presentations/login/view/login_page.dart';
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
      themeMode: ThemeMode.light,
      localizationsDelegates: const [
        AppLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const LoginPage(),
    );
  }
}
