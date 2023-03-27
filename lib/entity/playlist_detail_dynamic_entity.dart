import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/playlist_detail_dynamic_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class PlaylistDetailDynamicEntity {
	int? commentCount;
	int? shareCount;
	int? playCount;
	int? bookedCount;
	bool? subscribed;
	dynamic remarkName;
	bool? followed;
	String? gradeStatus;
	dynamic remixVideo;
	int? code;

	PlaylistDetailDynamicEntity();

	factory PlaylistDetailDynamicEntity.fromJson(Map<String, dynamic> json) => $PlaylistDetailDynamicEntityFromJson(json);

	Map<String, dynamic> toJson() => $PlaylistDetailDynamicEntityToJson(this);

	PlaylistDetailDynamicEntity copyWith({int? commentCount, int? shareCount, int? playCount, int? bookedCount, bool? subscribed, dynamic remarkName, bool? followed, String? gradeStatus, dynamic remixVideo, int? code}) {
		return PlaylistDetailDynamicEntity()
			..commentCount= commentCount ?? this.commentCount
			..shareCount= shareCount ?? this.shareCount
			..playCount= playCount ?? this.playCount
			..bookedCount= bookedCount ?? this.bookedCount
			..subscribed= subscribed ?? this.subscribed
			..remarkName= remarkName ?? this.remarkName
			..followed= followed ?? this.followed
			..gradeStatus= gradeStatus ?? this.gradeStatus
			..remixVideo= remixVideo ?? this.remixVideo
			..code= code ?? this.code;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}