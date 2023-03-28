import 'dart:async';

import 'package:flutter/material.dart';
import 'package:music/event/found_artist_name_event.dart';
import 'package:music/main.dart';

class ArtistDetailViewModel extends ChangeNotifier {
  final int id;

  String _title = '歌手';

  String get title => _title;

  late StreamSubscription<FoundArtistNameEvent> s;

  ArtistDetailViewModel(this.id) {
    s = eventBus.on<FoundArtistNameEvent>().listen((event) {
      if (event.id == id) {
        _title = event.name;
        notifyListeners();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    s.cancel();
  }
}
