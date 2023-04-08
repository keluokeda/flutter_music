import 'package:music/entity/personalized_mv_entity.dart';
import 'package:music/entity/playlist_item.dart';
import 'package:music/entity/top_artists_entity.dart';

import 'album_item.dart';

class HomeViewData {
  ///推荐的歌单
  final List<PlaylistItem> recommendPlaylist;

  final List<AlbumItem> albumList;

  ///热门歌手
  final List<TopArtistsArtists>? artists;

  final List<PersonalizedMvResult>? mvList;

  HomeViewData(
      this.recommendPlaylist, this.albumList, this.artists, this.mvList);
}
