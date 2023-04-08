import 'package:music/entity/mv_item.dart';
import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/personalized_mv_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class PersonalizedMvEntity {
  int? code;
  int? category;
  List<PersonalizedMvResult>? result;

  PersonalizedMvEntity();

  factory PersonalizedMvEntity.fromJson(Map<String, dynamic> json) =>
      $PersonalizedMvEntityFromJson(json);

  Map<String, dynamic> toJson() => $PersonalizedMvEntityToJson(this);

  PersonalizedMvEntity copyWith(
      {int? code, int? category, List<PersonalizedMvResult>? result}) {
    return PersonalizedMvEntity()
      ..code = code ?? this.code
      ..category = category ?? this.category
      ..result = result ?? this.result;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PersonalizedMvResult {
  int? id;
  int? type;
  String? name;
  String? copywriter;
  String? picUrl;
  bool? canDislike;
  dynamic trackNumberUpdateTime;
  int? duration;
  int? playCount;
  bool? subed;
  List<PersonalizedMvResultArtists>? artists;
  String? artistName;
  int? artistId;
  String? alg;

  MVItem toMVItem() {
    return MVItem(id ?? 0, picUrl ?? '', name ?? '', artistName ?? '',
        playCount ?? 0, duration ?? 0);
  }

  PersonalizedMvResult();

  factory PersonalizedMvResult.fromJson(Map<String, dynamic> json) =>
      $PersonalizedMvResultFromJson(json);

  Map<String, dynamic> toJson() => $PersonalizedMvResultToJson(this);

  PersonalizedMvResult copyWith(
      {int? id,
      int? type,
      String? name,
      String? copywriter,
      String? picUrl,
      bool? canDislike,
      dynamic trackNumberUpdateTime,
      int? duration,
      int? playCount,
      bool? subed,
      List<PersonalizedMvResultArtists>? artists,
      String? artistName,
      int? artistId,
      String? alg}) {
    return PersonalizedMvResult()
      ..id = id ?? this.id
      ..type = type ?? this.type
      ..name = name ?? this.name
      ..copywriter = copywriter ?? this.copywriter
      ..picUrl = picUrl ?? this.picUrl
      ..canDislike = canDislike ?? this.canDislike
      ..trackNumberUpdateTime =
          trackNumberUpdateTime ?? this.trackNumberUpdateTime
      ..duration = duration ?? this.duration
      ..playCount = playCount ?? this.playCount
      ..subed = subed ?? this.subed
      ..artists = artists ?? this.artists
      ..artistName = artistName ?? this.artistName
      ..artistId = artistId ?? this.artistId
      ..alg = alg ?? this.alg;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PersonalizedMvResultArtists {
  int? id;
  String? name;

  PersonalizedMvResultArtists();

  factory PersonalizedMvResultArtists.fromJson(Map<String, dynamic> json) =>
      $PersonalizedMvResultArtistsFromJson(json);

  Map<String, dynamic> toJson() => $PersonalizedMvResultArtistsToJson(this);

  PersonalizedMvResultArtists copyWith({int? id, String? name}) {
    return PersonalizedMvResultArtists()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}
