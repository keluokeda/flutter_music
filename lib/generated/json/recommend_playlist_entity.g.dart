import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/recommend_playlist_entity.dart';
import 'package:music/entity/playlist_item.dart';


RecommendPlaylistEntity $RecommendPlaylistEntityFromJson(Map<String, dynamic> json) {
	final RecommendPlaylistEntity recommendPlaylistEntity = RecommendPlaylistEntity();
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		recommendPlaylistEntity.code = code;
	}
	final bool? featureFirst = jsonConvert.convert<bool>(json['featureFirst']);
	if (featureFirst != null) {
		recommendPlaylistEntity.featureFirst = featureFirst;
	}
	final bool? haveRcmdSongs = jsonConvert.convert<bool>(json['haveRcmdSongs']);
	if (haveRcmdSongs != null) {
		recommendPlaylistEntity.haveRcmdSongs = haveRcmdSongs;
	}
	final List<RecommendPlaylistRecommend>? recommend = jsonConvert.convertListNotNull<RecommendPlaylistRecommend>(json['recommend']);
	if (recommend != null) {
		recommendPlaylistEntity.recommend = recommend;
	}
	return recommendPlaylistEntity;
}

Map<String, dynamic> $RecommendPlaylistEntityToJson(RecommendPlaylistEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['code'] = entity.code;
	data['featureFirst'] = entity.featureFirst;
	data['haveRcmdSongs'] = entity.haveRcmdSongs;
	data['recommend'] =  entity.recommend?.map((v) => v.toJson()).toList();
	return data;
}

RecommendPlaylistRecommend $RecommendPlaylistRecommendFromJson(Map<String, dynamic> json) {
	final RecommendPlaylistRecommend recommendPlaylistRecommend = RecommendPlaylistRecommend();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		recommendPlaylistRecommend.id = id;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		recommendPlaylistRecommend.type = type;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		recommendPlaylistRecommend.name = name;
	}
	final String? copywriter = jsonConvert.convert<String>(json['copywriter']);
	if (copywriter != null) {
		recommendPlaylistRecommend.copywriter = copywriter;
	}
	final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
	if (picUrl != null) {
		recommendPlaylistRecommend.picUrl = picUrl;
	}
	final int? playcount = jsonConvert.convert<int>(json['playcount']);
	if (playcount != null) {
		recommendPlaylistRecommend.playcount = playcount;
	}
	final int? createTime = jsonConvert.convert<int>(json['createTime']);
	if (createTime != null) {
		recommendPlaylistRecommend.createTime = createTime;
	}
	final RecommendPlaylistRecommendCreator? creator = jsonConvert.convert<RecommendPlaylistRecommendCreator>(json['creator']);
	if (creator != null) {
		recommendPlaylistRecommend.creator = creator;
	}
	final int? trackCount = jsonConvert.convert<int>(json['trackCount']);
	if (trackCount != null) {
		recommendPlaylistRecommend.trackCount = trackCount;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		recommendPlaylistRecommend.userId = userId;
	}
	final String? alg = jsonConvert.convert<String>(json['alg']);
	if (alg != null) {
		recommendPlaylistRecommend.alg = alg;
	}
	return recommendPlaylistRecommend;
}

Map<String, dynamic> $RecommendPlaylistRecommendToJson(RecommendPlaylistRecommend entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['type'] = entity.type;
	data['name'] = entity.name;
	data['copywriter'] = entity.copywriter;
	data['picUrl'] = entity.picUrl;
	data['playcount'] = entity.playcount;
	data['createTime'] = entity.createTime;
	data['creator'] = entity.creator?.toJson();
	data['trackCount'] = entity.trackCount;
	data['userId'] = entity.userId;
	data['alg'] = entity.alg;
	return data;
}

RecommendPlaylistRecommendCreator $RecommendPlaylistRecommendCreatorFromJson(Map<String, dynamic> json) {
	final RecommendPlaylistRecommendCreator recommendPlaylistRecommendCreator = RecommendPlaylistRecommendCreator();
	final bool? mutual = jsonConvert.convert<bool>(json['mutual']);
	if (mutual != null) {
		recommendPlaylistRecommendCreator.mutual = mutual;
	}
	final dynamic remarkName = jsonConvert.convert<dynamic>(json['remarkName']);
	if (remarkName != null) {
		recommendPlaylistRecommendCreator.remarkName = remarkName;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		recommendPlaylistRecommendCreator.followed = followed;
	}
	final String? backgroundUrl = jsonConvert.convert<String>(json['backgroundUrl']);
	if (backgroundUrl != null) {
		recommendPlaylistRecommendCreator.backgroundUrl = backgroundUrl;
	}
	final String? avatarImgIdStr = jsonConvert.convert<String>(json['avatarImgIdStr']);
	if (avatarImgIdStr != null) {
		recommendPlaylistRecommendCreator.avatarImgIdStr = avatarImgIdStr;
	}
	final int? avatarImgId = jsonConvert.convert<int>(json['avatarImgId']);
	if (avatarImgId != null) {
		recommendPlaylistRecommendCreator.avatarImgId = avatarImgId;
	}
	final int? backgroundImgId = jsonConvert.convert<int>(json['backgroundImgId']);
	if (backgroundImgId != null) {
		recommendPlaylistRecommendCreator.backgroundImgId = backgroundImgId;
	}
	final String? detailDescription = jsonConvert.convert<String>(json['detailDescription']);
	if (detailDescription != null) {
		recommendPlaylistRecommendCreator.detailDescription = detailDescription;
	}
	final bool? defaultAvatar = jsonConvert.convert<bool>(json['defaultAvatar']);
	if (defaultAvatar != null) {
		recommendPlaylistRecommendCreator.defaultAvatar = defaultAvatar;
	}
	final dynamic expertTags = jsonConvert.convert<dynamic>(json['expertTags']);
	if (expertTags != null) {
		recommendPlaylistRecommendCreator.expertTags = expertTags;
	}
	final int? djStatus = jsonConvert.convert<int>(json['djStatus']);
	if (djStatus != null) {
		recommendPlaylistRecommendCreator.djStatus = djStatus;
	}
	final String? backgroundImgIdStr = jsonConvert.convert<String>(json['backgroundImgIdStr']);
	if (backgroundImgIdStr != null) {
		recommendPlaylistRecommendCreator.backgroundImgIdStr = backgroundImgIdStr;
	}
	final int? accountStatus = jsonConvert.convert<int>(json['accountStatus']);
	if (accountStatus != null) {
		recommendPlaylistRecommendCreator.accountStatus = accountStatus;
	}
	final int? vipType = jsonConvert.convert<int>(json['vipType']);
	if (vipType != null) {
		recommendPlaylistRecommendCreator.vipType = vipType;
	}
	final int? province = jsonConvert.convert<int>(json['province']);
	if (province != null) {
		recommendPlaylistRecommendCreator.province = province;
	}
	final int? gender = jsonConvert.convert<int>(json['gender']);
	if (gender != null) {
		recommendPlaylistRecommendCreator.gender = gender;
	}
	final String? avatarUrl = jsonConvert.convert<String>(json['avatarUrl']);
	if (avatarUrl != null) {
		recommendPlaylistRecommendCreator.avatarUrl = avatarUrl;
	}
	final int? authStatus = jsonConvert.convert<int>(json['authStatus']);
	if (authStatus != null) {
		recommendPlaylistRecommendCreator.authStatus = authStatus;
	}
	final int? userType = jsonConvert.convert<int>(json['userType']);
	if (userType != null) {
		recommendPlaylistRecommendCreator.userType = userType;
	}
	final String? nickname = jsonConvert.convert<String>(json['nickname']);
	if (nickname != null) {
		recommendPlaylistRecommendCreator.nickname = nickname;
	}
	final int? birthday = jsonConvert.convert<int>(json['birthday']);
	if (birthday != null) {
		recommendPlaylistRecommendCreator.birthday = birthday;
	}
	final int? city = jsonConvert.convert<int>(json['city']);
	if (city != null) {
		recommendPlaylistRecommendCreator.city = city;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		recommendPlaylistRecommendCreator.userId = userId;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		recommendPlaylistRecommendCreator.description = description;
	}
	final String? signature = jsonConvert.convert<String>(json['signature']);
	if (signature != null) {
		recommendPlaylistRecommendCreator.signature = signature;
	}
	final int? authority = jsonConvert.convert<int>(json['authority']);
	if (authority != null) {
		recommendPlaylistRecommendCreator.authority = authority;
	}
	return recommendPlaylistRecommendCreator;
}

Map<String, dynamic> $RecommendPlaylistRecommendCreatorToJson(RecommendPlaylistRecommendCreator entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['mutual'] = entity.mutual;
	data['remarkName'] = entity.remarkName;
	data['followed'] = entity.followed;
	data['backgroundUrl'] = entity.backgroundUrl;
	data['avatarImgIdStr'] = entity.avatarImgIdStr;
	data['avatarImgId'] = entity.avatarImgId;
	data['backgroundImgId'] = entity.backgroundImgId;
	data['detailDescription'] = entity.detailDescription;
	data['defaultAvatar'] = entity.defaultAvatar;
	data['expertTags'] = entity.expertTags;
	data['djStatus'] = entity.djStatus;
	data['backgroundImgIdStr'] = entity.backgroundImgIdStr;
	data['accountStatus'] = entity.accountStatus;
	data['vipType'] = entity.vipType;
	data['province'] = entity.province;
	data['gender'] = entity.gender;
	data['avatarUrl'] = entity.avatarUrl;
	data['authStatus'] = entity.authStatus;
	data['userType'] = entity.userType;
	data['nickname'] = entity.nickname;
	data['birthday'] = entity.birthday;
	data['city'] = entity.city;
	data['userId'] = entity.userId;
	data['description'] = entity.description;
	data['signature'] = entity.signature;
	data['authority'] = entity.authority;
	return data;
}