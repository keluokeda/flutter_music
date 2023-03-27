import 'package:flutter/foundation.dart';

@immutable
class PlaylistSongsUpdatedEvent {
  final int playlistId;

  const PlaylistSongsUpdatedEvent(this.playlistId);
}
