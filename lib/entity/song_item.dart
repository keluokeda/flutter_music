import 'package:flutter/foundation.dart';
import 'package:flutter_download_manager/flutter_download_manager.dart';
import 'package:music/api/data_store.dart';
import 'package:music/entity/downloading_song.dart';

@immutable
class SongItem {
  final int id;
  final String name;

  ///歌手，可能有多个
  final List<Singer> singers;
  final List<String> alia;
  final Album album;

  ///mv的id，如果是0表示没有
  final int mv;

  const SongItem(
      this.id, this.name, this.singers, this.alia, this.album, this.mv);

  bool contains(String text) {
    if (name.contains(text)) {
      return true;
    }
    if (album.name.contains(text)) {
      return true;
    }
    for (var element in singers) {
      if (element.name.contains(text)) {
        return true;
      }
    }
    return false;
  }

  ///副标题
  String subTitle() {
    return "${singers.map((e) => e.name).join('/')} - ${album.name}";
  }

  DownloadingSong toDownloadingSong() {
    return DownloadingSong(this, DownloadStatus.queued, 0);
  }

  @override
  String toString() {
    return 'SongItem{id: $id, name: $name, singers: $singers, alia: $alia, album: $album, mv: $mv}';
  }

  ///本地文件路径 没下载就不存在
  String getFilePath() {
    return "${DataStore.instance.downloadPath}$id.mp3";
  }
}

@immutable
class Singer {
  final int id;
  final String name;

  const Singer(this.id, this.name);

  @override
  String toString() {
    return 'Singer{id: $id, name: $name}';
  }
}

@immutable
class Album {
  final int id;
  final String name;
  final String imageUrl;

  const Album(this.id, this.name, this.imageUrl);

  @override
  String toString() {
    return 'Album{id: $id, name: $name, imageUrl: $imageUrl}';
  }
}
