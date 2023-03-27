import 'package:flutter/foundation.dart';
import 'package:music/entity/song_item.dart';

@immutable
class SongsEditRequest {
  final List<SongItem> list;

  ///是否是用户的
  final bool isUser;

  ///歌单id 要是从专辑过来的就为null
  final int? playlistId;

  const SongsEditRequest(this.list, this.isUser, this.playlistId);
}
