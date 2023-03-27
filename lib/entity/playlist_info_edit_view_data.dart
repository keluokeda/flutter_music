import 'package:flutter/foundation.dart';
import 'package:music/entity/playlist_detail_entity.dart';
import 'package:music/entity/playlist_tags_entity.dart';

@immutable
class PlaylistInfoEditViewData {
  final PlaylistDetailEntity entity;
  final List<PlaylistTagsTags> tags;

  const PlaylistInfoEditViewData(this.entity, this.tags);
}
