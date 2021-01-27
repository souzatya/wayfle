import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static SharedPreferences _sharedPrefs;
  init() async {
    if (_sharedPrefs == null) {
      _sharedPrefs = await SharedPreferences.getInstance();
    }
  }

  bool get darkmode => _sharedPrefs.getBool(key_darkmode) ?? false;
  set darkmode(bool value) => _sharedPrefs.setBool(key_darkmode, value);
}

final sharedPrefs = SharedPrefs();
const key_darkmode = "darkmode";
