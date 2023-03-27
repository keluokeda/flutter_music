import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/album_dynamic_entity.dart';

AlbumDynamicEntity $AlbumDynamicEntityFromJson(Map<String, dynamic> json) {
	final AlbumDynamicEntity albumDynamicEntity = AlbumDynamicEntity();
	final bool? onSale = jsonConvert.convert<bool>(json['onSale']);
	if (onSale != null) {
		albumDynamicEntity.onSale = onSale;
	}
	final dynamic albumGameInfo = jsonConvert.convert<dynamic>(json['albumGameInfo']);
	if (albumGameInfo != null) {
		albumDynamicEntity.albumGameInfo = albumGameInfo;
	}
	final int? commentCount = jsonConvert.convert<int>(json['commentCount']);
	if (commentCount != null) {
		albumDynamicEntity.commentCount = commentCount;
	}
	final int? likedCount = jsonConvert.convert<int>(json['likedCount']);
	if (likedCount != null) {
		albumDynamicEntity.likedCount = likedCount;
	}
	final int? shareCount = jsonConvert.convert<int>(json['shareCount']);
	if (shareCount != null) {
		albumDynamicEntity.shareCount = shareCount;
	}
	final int? subTime = jsonConvert.convert<int>(json['subTime']);
	if (subTime != null) {
		albumDynamicEntity.subTime = subTime;
	}
	final bool? isSub = jsonConvert.convert<bool>(json['isSub']);
	if (isSub != null) {
		albumDynamicEntity.isSub = isSub;
	}
	final int? subCount = jsonConvert.convert<int>(json['subCount']);
	if (subCount != null) {
		albumDynamicEntity.subCount = subCount;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		albumDynamicEntity.code = code;
	}
	return albumDynamicEntity;
}

Map<String, dynamic> $AlbumDynamicEntityToJson(AlbumDynamicEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['onSale'] = entity.onSale;
	data['albumGameInfo'] = entity.albumGameInfo;
	data['commentCount'] = entity.commentCount;
	data['likedCount'] = entity.likedCount;
	data['shareCount'] = entity.shareCount;
	data['subTime'] = entity.subTime;
	data['isSub'] = entity.isSub;
	data['subCount'] = entity.subCount;
	data['code'] = entity.code;
	return data;
}