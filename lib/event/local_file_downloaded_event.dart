import 'package:music/entity/song_item.dart';

///本地文件被下载事件
class LocalFileDownloadedEvent{
  final SongItem songItem;

  LocalFileDownloadedEvent(this.songItem);



}