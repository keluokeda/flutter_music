import 'package:flutter/foundation.dart';

import '../../entity/optional.dart';

abstract class BaseContentViewModel<T> extends ChangeNotifier {
  Optional<T>? _optional = Optional();

  Optional<T>? get optional => _optional;

  ///加载详情
  Future<void> loadContent() async {
    _optional = Optional();
    notifyListeners();
    var result = await getContent();
    if (result == null) {
      _optional = null;
      notifyListeners();
    } else {
      _optional = Optional()..data = result;
      notifyListeners();
    }
  }

  @protected
  Future<T?> getContent();
}
