import 'package:flutter/foundation.dart';
import 'package:music/entity/song_item.dart';

@immutable
class DownloadedSong {
  final SongItem songItem;
  final String path;

  const DownloadedSong(this.songItem, this.path);
}
