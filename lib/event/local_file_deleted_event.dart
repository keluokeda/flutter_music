import '../entity/song_item.dart';

///本地文件删除事件
class LocalFileDeletedEvent {
  final List<SongItem> list;

  LocalFileDeletedEvent(this.list);
}
