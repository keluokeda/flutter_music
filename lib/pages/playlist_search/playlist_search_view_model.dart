import 'package:flutter/material.dart';
import 'package:music/entity/song_item.dart';

import '../../entity/playlist_tracks_entity.dart';

class PlaylistSearchViewModel extends ChangeNotifier {
  final List<SongItem> _songList;

  List<SongItem> _result = [];

  List<SongItem> get result => _result;

  final TextEditingController textEditingController = TextEditingController();

  PlaylistSearchViewModel(this._songList) {
    textEditingController.addListener(() {
      final list = <SongItem>[];
      final text = textEditingController.text.trim();

      if (text.isEmpty) {
        _result = list;
        notifyListeners();
      } else {
        for (var element in _songList) {
          if (element.contains(text)) {
            list.add(element);
          }
        }
        _result = list;
        notifyListeners();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
  }
}
