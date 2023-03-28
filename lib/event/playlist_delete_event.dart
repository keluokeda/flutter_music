import 'package:flutter/foundation.dart';

///歌单删除事件
@immutable
class PlaylistDeleteEvent {
  final int playlistId;

  const PlaylistDeleteEvent(this.playlistId);
}
