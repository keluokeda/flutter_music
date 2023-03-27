import 'package:flutter/material.dart';
import 'package:music/api/http_service.dart';
import 'package:oktoast/oktoast.dart';

class PlaylistNewViewModel extends ChangeNotifier {
  TextEditingController textEditingController = TextEditingController();

  bool _checked = false;

  bool get checked => _checked;

  ///创建
  Future<bool> create() async {
    if (textEditingController.text.isEmpty) {
      showToast('请输入歌单标题');
      return false;
    }

    return HttpService.instance
        .createPlaylist(textEditingController.text, checked);
  }

  void setChecked(bool checked) {
    _checked = checked;
    notifyListeners();
  }
}
