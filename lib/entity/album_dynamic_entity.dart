import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/album_dynamic_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class AlbumDynamicEntity {
  bool? onSale;
  dynamic albumGameInfo;
  int? commentCount;
  int? likedCount;
  int? shareCount;
  int? subTime;
  bool? isSub;
  int? subCount;
  int? code;

  AlbumDynamicEntity();

  void addToSub() {
    isSub = true;
    subCount = (subCount ?? 0) + 1;
  }

  void removeToSub() {
    isSub = false;
    subCount = (subCount ?? 0) - 1;
  }

  factory AlbumDynamicEntity.fromJson(Map<String, dynamic> json) =>
      $AlbumDynamicEntityFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDynamicEntityToJson(this);

  AlbumDynamicEntity copyWith(
      {bool? onSale,
      dynamic albumGameInfo,
      int? commentCount,
      int? likedCount,
      int? shareCount,
      int? subTime,
      bool? isSub,
      int? subCount,
      int? code}) {
    return AlbumDynamicEntity()
      ..onSale = onSale ?? this.onSale
      ..albumGameInfo = albumGameInfo ?? this.albumGameInfo
      ..commentCount = commentCount ?? this.commentCount
      ..likedCount = likedCount ?? this.likedCount
      ..shareCount = shareCount ?? this.shareCount
      ..subTime = subTime ?? this.subTime
      ..isSub = isSub ?? this.isSub
      ..subCount = subCount ?? this.subCount
      ..code = code ?? this.code;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}
