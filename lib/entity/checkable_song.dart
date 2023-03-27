import 'package:music/entity/song_item.dart';

class CheckableSong {
  final SongItem songItem;
  bool checked = false;

  CheckableSong(this.songItem);
}
