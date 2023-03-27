import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/playlist_detail_dynamic_entity.dart';

PlaylistDetailDynamicEntity $PlaylistDetailDynamicEntityFromJson(Map<String, dynamic> json) {
	final PlaylistDetailDynamicEntity playlistDetailDynamicEntity = PlaylistDetailDynamicEntity();
	final int? commentCount = jsonConvert.convert<int>(json['commentCount']);
	if (commentCount != null) {
		playlistDetailDynamicEntity.commentCount = commentCount;
	}
	final int? shareCount = jsonConvert.convert<int>(json['shareCount']);
	if (shareCount != null) {
		playlistDetailDynamicEntity.shareCount = shareCount;
	}
	final int? playCount = jsonConvert.convert<int>(json['playCount']);
	if (playCount != null) {
		playlistDetailDynamicEntity.playCount = playCount;
	}
	final int? bookedCount = jsonConvert.convert<int>(json['bookedCount']);
	if (bookedCount != null) {
		playlistDetailDynamicEntity.bookedCount = bookedCount;
	}
	final bool? subscribed = jsonConvert.convert<bool>(json['subscribed']);
	if (subscribed != null) {
		playlistDetailDynamicEntity.subscribed = subscribed;
	}
	final dynamic remarkName = jsonConvert.convert<dynamic>(json['remarkName']);
	if (remarkName != null) {
		playlistDetailDynamicEntity.remarkName = remarkName;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		playlistDetailDynamicEntity.followed = followed;
	}
	final String? gradeStatus = jsonConvert.convert<String>(json['gradeStatus']);
	if (gradeStatus != null) {
		playlistDetailDynamicEntity.gradeStatus = gradeStatus;
	}
	final dynamic remixVideo = jsonConvert.convert<dynamic>(json['remixVideo']);
	if (remixVideo != null) {
		playlistDetailDynamicEntity.remixVideo = remixVideo;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		playlistDetailDynamicEntity.code = code;
	}
	return playlistDetailDynamicEntity;
}

Map<String, dynamic> $PlaylistDetailDynamicEntityToJson(PlaylistDetailDynamicEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['commentCount'] = entity.commentCount;
	data['shareCount'] = entity.shareCount;
	data['playCount'] = entity.playCount;
	data['bookedCount'] = entity.bookedCount;
	data['subscribed'] = entity.subscribed;
	data['remarkName'] = entity.remarkName;
	data['followed'] = entity.followed;
	data['gradeStatus'] = entity.gradeStatus;
	data['remixVideo'] = entity.remixVideo;
	data['code'] = entity.code;
	return data;
}