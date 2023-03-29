import 'package:flutter/foundation.dart';
import 'package:flutter_download_manager/flutter_download_manager.dart';
import 'package:music/entity/song_item.dart';

///下载中的歌曲
class DownloadingSong {
  final SongItem songItem;
  DownloadStatus downloadStatus;
  double progress;

  DownloadingSong(this.songItem, this.downloadStatus, this.progress);
}
