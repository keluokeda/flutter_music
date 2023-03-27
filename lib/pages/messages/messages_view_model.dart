import 'package:flutter/foundation.dart';
import 'package:music/api/http_service.dart';

import '../../entity/message_list_entity.dart';

class MessagesViewModel extends ChangeNotifier {
  List<MessageListMsgs>? _list;

  List<MessageListMsgs>? get list => _list;

  Future<void> loadMessageList() async {
    final response = await HttpService.instance.getMessageList();
    _list = response?.msgs;
    notifyListeners();
  }

  MessagesViewModel() {
    loadMessageList();
  }
}
