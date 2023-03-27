import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/playlist_tags_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class PlaylistTagsEntity {
  List<PlaylistTagsTags>? tags;
  int? code;

  PlaylistTagsEntity();

  factory PlaylistTagsEntity.fromJson(Map<String, dynamic> json) =>
      $PlaylistTagsEntityFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistTagsEntityToJson(this);

  PlaylistTagsEntity copyWith({List<PlaylistTagsTags>? tags, int? code}) {
    return PlaylistTagsEntity()
      ..tags = tags ?? this.tags
      ..code = code ?? this.code;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistTagsTags {
  int? id;
  String? name;
  int? type;
  int? category;
  bool? hot;

  bool checked = false;

  PlaylistTagsTags();

  factory PlaylistTagsTags.fromJson(Map<String, dynamic> json) =>
      $PlaylistTagsTagsFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistTagsTagsToJson(this);

  PlaylistTagsTags copyWith(
      {int? id, String? name, int? type, int? category, bool? hot}) {
    return PlaylistTagsTags()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..type = type ?? this.type
      ..category = category ?? this.category
      ..hot = hot ?? this.hot;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}
