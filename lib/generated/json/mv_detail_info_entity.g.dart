import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/mv_detail_info_entity.dart';

MvDetailInfoEntity $MvDetailInfoEntityFromJson(Map<String, dynamic> json) {
	final MvDetailInfoEntity mvDetailInfoEntity = MvDetailInfoEntity();
	final int? likedCount = jsonConvert.convert<int>(json['likedCount']);
	if (likedCount != null) {
		mvDetailInfoEntity.likedCount = likedCount;
	}
	final int? shareCount = jsonConvert.convert<int>(json['shareCount']);
	if (shareCount != null) {
		mvDetailInfoEntity.shareCount = shareCount;
	}
	final int? commentCount = jsonConvert.convert<int>(json['commentCount']);
	if (commentCount != null) {
		mvDetailInfoEntity.commentCount = commentCount;
	}
	final bool? liked = jsonConvert.convert<bool>(json['liked']);
	if (liked != null) {
		mvDetailInfoEntity.liked = liked;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		mvDetailInfoEntity.code = code;
	}
	return mvDetailInfoEntity;
}

Map<String, dynamic> $MvDetailInfoEntityToJson(MvDetailInfoEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['likedCount'] = entity.likedCount;
	data['shareCount'] = entity.shareCount;
	data['commentCount'] = entity.commentCount;
	data['liked'] = entity.liked;
	data['code'] = entity.code;
	return data;
}