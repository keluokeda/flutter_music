import 'package:music/entity/mv_item.dart';
import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/all_mv_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class AllMvEntity {
  int? count;
  bool? hasMore;
  List<AllMvData>? data;
  int? code;

  AllMvEntity();

  factory AllMvEntity.fromJson(Map<String, dynamic> json) =>
      $AllMvEntityFromJson(json);

  Map<String, dynamic> toJson() => $AllMvEntityToJson(this);

  AllMvEntity copyWith(
      {int? count, bool? hasMore, List<AllMvData>? data, int? code}) {
    return AllMvEntity()
      ..count = count ?? this.count
      ..hasMore = hasMore ?? this.hasMore
      ..data = data ?? this.data
      ..code = code ?? this.code;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AllMvData {
  int? id;
  String? cover;
  String? name;
  int? playCount;
  String? briefDesc;
  dynamic desc;
  String? artistName;
  int? artistId;
  int? duration;
  int? mark;
  bool? subed;
  List<AllMvDataArtists>? artists;
  List<String>? transNames;

  AllMvData();

  MVItem toMVItem() {
    return MVItem(id ?? 0, cover ?? '', name ?? '', artistName ?? '',
        playCount ?? 0, duration ?? 0);
  }

  factory AllMvData.fromJson(Map<String, dynamic> json) =>
      $AllMvDataFromJson(json);

  Map<String, dynamic> toJson() => $AllMvDataToJson(this);

  AllMvData copyWith(
      {int? id,
      String? cover,
      String? name,
      int? playCount,
      String? briefDesc,
      dynamic desc,
      String? artistName,
      int? artistId,
      int? duration,
      int? mark,
      bool? subed,
      List<AllMvDataArtists>? artists,
      List<String>? transNames}) {
    return AllMvData()
      ..id = id ?? this.id
      ..cover = cover ?? this.cover
      ..name = name ?? this.name
      ..playCount = playCount ?? this.playCount
      ..briefDesc = briefDesc ?? this.briefDesc
      ..desc = desc ?? this.desc
      ..artistName = artistName ?? this.artistName
      ..artistId = artistId ?? this.artistId
      ..duration = duration ?? this.duration
      ..mark = mark ?? this.mark
      ..subed = subed ?? this.subed
      ..artists = artists ?? this.artists
      ..transNames = transNames ?? this.transNames;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AllMvDataArtists {
  int? id;
  String? name;
  List<String>? alias;
  dynamic transNames;

  AllMvDataArtists();

  factory AllMvDataArtists.fromJson(Map<String, dynamic> json) =>
      $AllMvDataArtistsFromJson(json);

  Map<String, dynamic> toJson() => $AllMvDataArtistsToJson(this);

  AllMvDataArtists copyWith(
      {int? id, String? name, List<String>? alias, dynamic transNames}) {
    return AllMvDataArtists()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..alias = alias ?? this.alias
      ..transNames = transNames ?? this.transNames;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}
