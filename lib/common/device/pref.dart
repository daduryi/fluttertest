import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class MyPref {
  static SharedPreferences _prefs;

  get pref {
    return _prefs;
  }

  init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  setData(String key, Map<String, dynamic> data) async {
    return await _prefs.setString(key, jsonEncode(json));
  }

  getData(String key) async {
    var s = _prefs.getString(key);
    return jsonDecode(s);
  }

  save(String key, value) async {
    return await _prefs.setString(key, value);
  }

  get(String key) {
    return _prefs.get(key);
  }

  remove(String key) async {
    return await _prefs.remove(key);
  }
}
