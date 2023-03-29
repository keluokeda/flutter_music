import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataStore {
  late SharedPreferences _sharedPreferences;

  Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    final dir = await getApplicationSupportDirectory();
    _downloadPath = "${dir.path}/download/";
  }

  String _downloadPath = '';

  ///文件保存路径
  String get downloadPath => _downloadPath;
  static final DataStore instance = DataStore._privateConstructor();

  DataStore._privateConstructor();

  Future<bool> saveUserId(int userId) {
    return _sharedPreferences.setInt('uid', userId);
  }

  int? getUserId() {
    return _sharedPreferences.getInt('uid');
  }
}
