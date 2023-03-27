import 'package:shared_preferences/shared_preferences.dart';

class DataStore {
  late SharedPreferences _sharedPreferences;

  Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static final DataStore instance = DataStore._privateConstructor();

  DataStore._privateConstructor();

  Future<bool> saveUserId(int userId) {
    return _sharedPreferences.setInt('uid', userId);
  }

  int? getUserId() {
    return _sharedPreferences.getInt('uid');
  }
}
