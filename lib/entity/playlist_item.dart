import 'package:flutter/foundation.dart';

@immutable
class PlaylistItem {
  final int id;
  final String name;
  final String image;
  final int playCount;
  final int trackCount;

  const PlaylistItem(
      this.id, this.name, this.image, this.playCount, this.trackCount);
}
