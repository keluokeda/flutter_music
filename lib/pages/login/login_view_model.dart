import 'package:music/api/http_service.dart';
import 'package:music/pages/common/base_content_view_model.dart';

class LoginViewModel extends BaseContentViewModel<String> {
  String _key = '';

  bool _inLogin = false;

  ///是否处于登录中
  bool get inLogin => _inLogin;

  @override
  Future<String?> getContent() async {
    final key = await HttpService.instance.createKey();
    if (key == null) {
      return null;
    }
    _key = key;

    return await HttpService.instance.createLoginUrl(key);
  }

  ///检查登录结果
  Future<bool> checkLoginResult() async {
    _inLogin = true;
    notifyListeners();

    final result = await HttpService.instance.checkLoginResult(_key);
    _inLogin = false;
    notifyListeners();

    return result;
  }

  LoginViewModel() {
    loadContent();
  }
}
