import 'package:music/entity/playlist_item.dart';

import 'album_item.dart';

class HomeViewData {
  ///推荐的歌单
  final List<PlaylistItem> recommendPlaylist;

  final List<AlbumItem> albumList;

  HomeViewData(this.recommendPlaylist, this.albumList);
}
