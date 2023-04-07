import 'package:flutter/material.dart';
import 'package:music/api/data_store.dart';
import 'package:music/api/http_service.dart';
import 'package:music/entity/user_item.dart';
import 'package:music/pages/common/base_content_view_model.dart';
import 'package:oktoast/oktoast.dart';

class SendMessageViewModel extends BaseContentViewModel<List<UserItem>> {
  final TextEditingController controller = TextEditingController();

  @override
  Future<List<UserItem>?> getContent() async {
    final entity = await HttpService.instance
        .getUserFollows(DataStore.instance.getUserId()!, 1);

    return entity?.follow?.map((e) => e.toUserItem()).toList();
  }

  void toggleChecked(UserItem item) {
    item.checked = !item.checked;
    notifyListeners();
  }

  void commit() {
    final userIdList = optional?.data
            ?.where((element) => element.checked)
            .map((e) => e.id)
            .toList() ??
        [];
    HttpService.instance.sendPrivateMessage(userIdList, controller.text);

    _clear();
    showToast('发送成功');
  }

  void _clear() {
    controller.text = '';
    optional?.data?.forEach((e) => e.checked = false);
    notifyListeners();
  }

  SendMessageViewModel() {
    loadContent();
    controller.addListener(() {
      notifyListeners();
    });
  }
}
