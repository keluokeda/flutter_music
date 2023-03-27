import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:music/entity/load_list_result.dart';

abstract class BaseRefreshAndLoadMoreViewModel<T> extends ChangeNotifier {
  final EasyRefreshController easyRefreshController = EasyRefreshController(
      controlFinishLoad: true, controlFinishRefresh: true);

  BaseRefreshAndLoadMoreViewModel() {
    onInit();
  }

  void callRefresh() {
    easyRefreshController.callRefresh();
  }

  void onInit() async {
    await Future.delayed(const Duration(milliseconds: 200));
    easyRefreshController.callRefresh();
  }

  int _index = 1;

  bool _over = false;

  final List<T> _list = [];

  List<T> get list => _list;

  Future<void> refresh() async {
    _index = 1;
    var l = await getList(_index);
    _list.clear();
    _list.addAll(l.list);
    if (l.more == false) {
      _over = true;
    }
    easyRefreshController.finishRefresh();
    notifyListeners();
  }

  Future<bool> loadMore() async {
    if (_over) {
      easyRefreshController.finishLoad(IndicatorResult.noMore);
      return false;
    }

    _index++;
    var result = await getList(_index);

    // _list.clear();
    _list.addAll(result.list);
    if (result.more) {
      easyRefreshController.finishLoad();
    } else {
      easyRefreshController.finishLoad(IndicatorResult.noMore);
    }
    // if (l.isEmpty) {
    //   refreshController.loadNoData();
    // } else {
    //   refreshController.loadComplete();
    // }
    // easyRefreshController.finishLoad();
    notifyListeners();

    return result.more;
  }

  ///更新元素
  void update(int index, T newValue) {
    _list[index] = newValue;
    notifyListeners();
  }

  ///移除元素
  void remove(T value) {
    _list.remove(value);
    notifyListeners();
  }

  Future<LoadListResult<T>> getList(int index);
}
