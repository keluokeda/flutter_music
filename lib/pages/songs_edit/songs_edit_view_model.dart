import 'package:flutter/foundation.dart';

import '../../entity/checkable_song.dart';
import '../../entity/song_item.dart';

class SongsEditViewModel extends ChangeNotifier {
  late List<CheckableSong> _songs;
  final bool isUser;

  bool _loading = false;

  bool get loading => _loading;

  List<CheckableSong> get songs => _songs;

  SongsEditViewModel(List<SongItem> list, this.isUser) {
    _songs = list.map((e) => CheckableSong(e)).toList();
    notifyListeners();
  }

  ///切换选中状态
  void toggleChecked(CheckableSong item) {
    item.checked = !item.checked;
    notifyListeners();
  }

  void setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  void checkAll() {
    for (var element in _songs) {
      element.checked = true;
    }
    notifyListeners();
  }

  void onReorder(int oldIndex, int newIndex) {
    if (kDebugMode) {
      print('onReorder $oldIndex $newIndex');
    }
    final tmp = _songs[oldIndex];
    _songs[oldIndex] = _songs[newIndex];
    _songs[newIndex] = tmp;
    notifyListeners();
  }
}
