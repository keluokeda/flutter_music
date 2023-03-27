import 'package:flutter/foundation.dart';

///我的歌单信息更新事件
@immutable
class PlaylistInfoUpdatedEvent {
  final int id;

  const PlaylistInfoUpdatedEvent(this.id);
}
