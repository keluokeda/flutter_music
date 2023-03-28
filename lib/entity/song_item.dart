import 'package:flutter/foundation.dart';

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
}

@immutable
class Singer {
  final int id;
  final String name;

  const Singer(this.id, this.name);
}

@immutable
class Album {
  final int id;
  final String name;
  final String imageUrl;

  const Album(this.id, this.name, this.imageUrl);



}
