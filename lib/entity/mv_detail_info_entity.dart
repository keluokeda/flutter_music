import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/mv_detail_info_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class MvDetailInfoEntity {
	int? likedCount;
	int? shareCount;
	int? commentCount;
	bool? liked;
	int? code;

	MvDetailInfoEntity();

	factory MvDetailInfoEntity.fromJson(Map<String, dynamic> json) => $MvDetailInfoEntityFromJson(json);

	Map<String, dynamic> toJson() => $MvDetailInfoEntityToJson(this);

	MvDetailInfoEntity copyWith({int? likedCount, int? shareCount, int? commentCount, bool? liked, int? code}) {
		return MvDetailInfoEntity()
			..likedCount= likedCount ?? this.likedCount
			..shareCount= shareCount ?? this.shareCount
			..commentCount= commentCount ?? this.commentCount
			..liked= liked ?? this.liked
			..code= code ?? this.code;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}