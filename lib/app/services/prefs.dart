import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  late SharedPreferences _sharedPreferences;
  Future<void> initPrefs() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  SharedPreferences get instance => _sharedPreferences;
}
