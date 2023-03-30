import 'package:music/entity/album_item.dart';
import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/newest_album_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class NewestAlbumEntity {
  int? code;
  List<NewestAlbumAlbums>? albums;

  NewestAlbumEntity();

  factory NewestAlbumEntity.fromJson(Map<String, dynamic> json) =>
      $NewestAlbumEntityFromJson(json);

  Map<String, dynamic> toJson() => $NewestAlbumEntityToJson(this);

  NewestAlbumEntity copyWith({int? code, List<NewestAlbumAlbums>? albums}) {
    return NewestAlbumEntity()
      ..code = code ?? this.code
      ..albums = albums ?? this.albums;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class NewestAlbumAlbums {
  String? name;
  int? id;
  String? type;
  int? size;
  int? picId;
  String? blurPicUrl;
  int? companyId;
  int? pic;
  String? picUrl;
  int? publishTime;
  String? description;
  String? tags;
  String? company;
  String? briefDesc;
  NewestAlbumAlbumsArtist? artist;
  dynamic songs;
  int? status;
  int? copyrightId;
  String? commentThreadId;
  List<NewestAlbumAlbumsArtists>? artists;
  bool? paid;
  bool? onSale;
  @JSONField(name: "picId_str")
  String? picidStr;

  NewestAlbumAlbums();

  factory NewestAlbumAlbums.fromJson(Map<String, dynamic> json) =>
      $NewestAlbumAlbumsFromJson(json);

  Map<String, dynamic> toJson() => $NewestAlbumAlbumsToJson(this);

  NewestAlbumAlbums copyWith(
      {String? name,
      int? id,
      String? type,
      int? size,
      int? picId,
      String? blurPicUrl,
      int? companyId,
      int? pic,
      String? picUrl,
      int? publishTime,
      String? description,
      String? tags,
      String? company,
      String? briefDesc,
      NewestAlbumAlbumsArtist? artist,
      dynamic songs,
      int? status,
      int? copyrightId,
      String? commentThreadId,
      List<NewestAlbumAlbumsArtists>? artists,
      bool? paid,
      bool? onSale,
      String? picidStr}) {
    return NewestAlbumAlbums()
      ..name = name ?? this.name
      ..id = id ?? this.id
      ..type = type ?? this.type
      ..size = size ?? this.size
      ..picId = picId ?? this.picId
      ..blurPicUrl = blurPicUrl ?? this.blurPicUrl
      ..companyId = companyId ?? this.companyId
      ..pic = pic ?? this.pic
      ..picUrl = picUrl ?? this.picUrl
      ..publishTime = publishTime ?? this.publishTime
      ..description = description ?? this.description
      ..tags = tags ?? this.tags
      ..company = company ?? this.company
      ..briefDesc = briefDesc ?? this.briefDesc
      ..artist = artist ?? this.artist
      ..songs = songs ?? this.songs
      ..status = status ?? this.status
      ..copyrightId = copyrightId ?? this.copyrightId
      ..commentThreadId = commentThreadId ?? this.commentThreadId
      ..artists = artists ?? this.artists
      ..paid = paid ?? this.paid
      ..onSale = onSale ?? this.onSale
      ..picidStr = picidStr ?? this.picidStr;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }

  AlbumItem toAlbumItem() {
    return AlbumItem(id ?? 0, name ?? '', picUrl ?? '', artist?.name ?? '');
  }
}

@JsonSerializable()
class NewestAlbumAlbumsArtist {
  String? name;
  int? id;
  int? picId;
  int? img1v1Id;
  String? briefDesc;
  String? picUrl;
  String? img1v1Url;
  int? albumSize;
  List<String>? alias;
  String? trans;
  int? musicSize;
  int? topicPerson;
  @JSONField(name: "picId_str")
  String? picidStr;
  @JSONField(name: "img1v1Id_str")
  String? img1v1idStr;

  NewestAlbumAlbumsArtist();

  factory NewestAlbumAlbumsArtist.fromJson(Map<String, dynamic> json) =>
      $NewestAlbumAlbumsArtistFromJson(json);

  Map<String, dynamic> toJson() => $NewestAlbumAlbumsArtistToJson(this);

  NewestAlbumAlbumsArtist copyWith(
      {String? name,
      int? id,
      int? picId,
      int? img1v1Id,
      String? briefDesc,
      String? picUrl,
      String? img1v1Url,
      int? albumSize,
      List<String>? alias,
      String? trans,
      int? musicSize,
      int? topicPerson,
      String? picidStr,
      String? img1v1idStr}) {
    return NewestAlbumAlbumsArtist()
      ..name = name ?? this.name
      ..id = id ?? this.id
      ..picId = picId ?? this.picId
      ..img1v1Id = img1v1Id ?? this.img1v1Id
      ..briefDesc = briefDesc ?? this.briefDesc
      ..picUrl = picUrl ?? this.picUrl
      ..img1v1Url = img1v1Url ?? this.img1v1Url
      ..albumSize = albumSize ?? this.albumSize
      ..alias = alias ?? this.alias
      ..trans = trans ?? this.trans
      ..musicSize = musicSize ?? this.musicSize
      ..topicPerson = topicPerson ?? this.topicPerson
      ..picidStr = picidStr ?? this.picidStr
      ..img1v1idStr = img1v1idStr ?? this.img1v1idStr;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class NewestAlbumAlbumsArtists {
  String? name;
  int? id;
  int? picId;
  int? img1v1Id;
  String? briefDesc;
  String? picUrl;
  String? img1v1Url;
  int? albumSize;
  List<dynamic>? alias;
  String? trans;
  int? musicSize;
  int? topicPerson;
  @JSONField(name: "img1v1Id_str")
  String? img1v1idStr;

  NewestAlbumAlbumsArtists();

  factory NewestAlbumAlbumsArtists.fromJson(Map<String, dynamic> json) =>
      $NewestAlbumAlbumsArtistsFromJson(json);

  Map<String, dynamic> toJson() => $NewestAlbumAlbumsArtistsToJson(this);

  NewestAlbumAlbumsArtists copyWith(
      {String? name,
      int? id,
      int? picId,
      int? img1v1Id,
      String? briefDesc,
      String? picUrl,
      String? img1v1Url,
      int? albumSize,
      List<dynamic>? alias,
      String? trans,
      int? musicSize,
      int? topicPerson,
      String? img1v1idStr}) {
    return NewestAlbumAlbumsArtists()
      ..name = name ?? this.name
      ..id = id ?? this.id
      ..picId = picId ?? this.picId
      ..img1v1Id = img1v1Id ?? this.img1v1Id
      ..briefDesc = briefDesc ?? this.briefDesc
      ..picUrl = picUrl ?? this.picUrl
      ..img1v1Url = img1v1Url ?? this.img1v1Url
      ..albumSize = albumSize ?? this.albumSize
      ..alias = alias ?? this.alias
      ..trans = trans ?? this.trans
      ..musicSize = musicSize ?? this.musicSize
      ..topicPerson = topicPerson ?? this.topicPerson
      ..img1v1idStr = img1v1idStr ?? this.img1v1idStr;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}
