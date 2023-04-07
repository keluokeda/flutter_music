import 'package:flutter/foundation.dart';
import 'package:music/api/http_service.dart';
import 'package:music/entity/load_list_result.dart';

import '../../entity/private_history_entity.dart';

class MessageHistoryViewModel extends ChangeNotifier {
  final int uid;

  bool _canRefresh = false;

  bool get canRefresh => _canRefresh;

  final List<PrivateHistoryMsgs> _list = [];

  List<PrivateHistoryMsgs> get list => _list;

  MessageHistoryViewModel(this.uid) {
    refresh();
  }

  Future<void> refresh() async {
    final result = await _getList();
    _list.addAll(result.list);
    _canRefresh = result.more;
    notifyListeners();
  }

  Future<LoadListResult<PrivateHistoryMsgs>> _getList() async {
    final entity = await HttpService.instance.getPrivateMessageHistory(uid);

    return LoadListResult(entity?.msgs ?? [], entity?.more ?? false);
  }
}
