import 'package:flutter/foundation.dart';
import 'package:music/entity/playlist_detail_dynamic_entity.dart';
import 'package:music/entity/playlist_detail_entity.dart';
import 'package:music/entity/playlist_tracks_entity.dart';

@immutable
class PlaylistDetailViewData {
  final PlaylistDetailEntity playlistDetailEntity;
  final PlaylistTracksEntity playlistTracksEntity;
  final PlaylistDetailDynamicEntity playlistDetailDynamicEntity;

  const PlaylistDetailViewData(this.playlistDetailEntity,
      this.playlistTracksEntity, this.playlistDetailDynamicEntity);
}
