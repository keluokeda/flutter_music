import 'package:flutter/material.dart';
import 'package:music/api/data_store.dart';
import 'package:music/api/http_service.dart';
import 'package:music/entity/user_detail_entity.dart';

class MineViewModel extends ChangeNotifier {
  UserDetailEntity? _userDetailEntity;

  UserDetailEntity? get userDetailEntity => _userDetailEntity;

  MineViewModel() {
    load();
  }

  Future<void> load() async {

    _userDetailEntity = await HttpService.instance
        .getUserDetail(DataStore.instance.getUserId() ?? 0);
    notifyListeners();
  }
}
