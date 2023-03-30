import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/top_artists_entity.dart';

TopArtistsEntity $TopArtistsEntityFromJson(Map<String, dynamic> json) {
	final TopArtistsEntity topArtistsEntity = TopArtistsEntity();
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		topArtistsEntity.code = code;
	}
	final bool? more = jsonConvert.convert<bool>(json['more']);
	if (more != null) {
		topArtistsEntity.more = more;
	}
	final List<TopArtistsArtists>? artists = jsonConvert.convertListNotNull<TopArtistsArtists>(json['artists']);
	if (artists != null) {
		topArtistsEntity.artists = artists;
	}
	return topArtistsEntity;
}

Map<String, dynamic> $TopArtistsEntityToJson(TopArtistsEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['code'] = entity.code;
	data['more'] = entity.more;
	data['artists'] =  entity.artists?.map((v) => v.toJson()).toList();
	return data;
}

TopArtistsArtists $TopArtistsArtistsFromJson(Map<String, dynamic> json) {
	final TopArtistsArtists topArtistsArtists = TopArtistsArtists();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		topArtistsArtists.name = name;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		topArtistsArtists.id = id;
	}
	final int? picId = jsonConvert.convert<int>(json['picId']);
	if (picId != null) {
		topArtistsArtists.picId = picId;
	}
	final int? img1v1Id = jsonConvert.convert<int>(json['img1v1Id']);
	if (img1v1Id != null) {
		topArtistsArtists.img1v1Id = img1v1Id;
	}
	final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
	if (briefDesc != null) {
		topArtistsArtists.briefDesc = briefDesc;
	}
	final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
	if (picUrl != null) {
		topArtistsArtists.picUrl = picUrl;
	}
	final String? img1v1Url = jsonConvert.convert<String>(json['img1v1Url']);
	if (img1v1Url != null) {
		topArtistsArtists.img1v1Url = img1v1Url;
	}
	final int? albumSize = jsonConvert.convert<int>(json['albumSize']);
	if (albumSize != null) {
		topArtistsArtists.albumSize = albumSize;
	}
	final List<String>? alias = jsonConvert.convertListNotNull<String>(json['alias']);
	if (alias != null) {
		topArtistsArtists.alias = alias;
	}
	final String? trans = jsonConvert.convert<String>(json['trans']);
	if (trans != null) {
		topArtistsArtists.trans = trans;
	}
	final int? musicSize = jsonConvert.convert<int>(json['musicSize']);
	if (musicSize != null) {
		topArtistsArtists.musicSize = musicSize;
	}
	final int? topicPerson = jsonConvert.convert<int>(json['topicPerson']);
	if (topicPerson != null) {
		topArtistsArtists.topicPerson = topicPerson;
	}
	final dynamic showPrivateMsg = jsonConvert.convert<dynamic>(json['showPrivateMsg']);
	if (showPrivateMsg != null) {
		topArtistsArtists.showPrivateMsg = showPrivateMsg;
	}
	final dynamic isSubed = jsonConvert.convert<dynamic>(json['isSubed']);
	if (isSubed != null) {
		topArtistsArtists.isSubed = isSubed;
	}
	final int? accountId = jsonConvert.convert<int>(json['accountId']);
	if (accountId != null) {
		topArtistsArtists.accountId = accountId;
	}
	final String? picidStr = jsonConvert.convert<String>(json['picId_str']);
	if (picidStr != null) {
		topArtistsArtists.picidStr = picidStr;
	}
	final String? img1v1idStr = jsonConvert.convert<String>(json['img1v1Id_str']);
	if (img1v1idStr != null) {
		topArtistsArtists.img1v1idStr = img1v1idStr;
	}
	final List<String>? transNames = jsonConvert.convertListNotNull<String>(json['transNames']);
	if (transNames != null) {
		topArtistsArtists.transNames = transNames;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		topArtistsArtists.followed = followed;
	}
	final dynamic mvSize = jsonConvert.convert<dynamic>(json['mvSize']);
	if (mvSize != null) {
		topArtistsArtists.mvSize = mvSize;
	}
	final dynamic publishTime = jsonConvert.convert<dynamic>(json['publishTime']);
	if (publishTime != null) {
		topArtistsArtists.publishTime = publishTime;
	}
	final dynamic identifyTag = jsonConvert.convert<dynamic>(json['identifyTag']);
	if (identifyTag != null) {
		topArtistsArtists.identifyTag = identifyTag;
	}
	final dynamic alg = jsonConvert.convert<dynamic>(json['alg']);
	if (alg != null) {
		topArtistsArtists.alg = alg;
	}
	final int? fansCount = jsonConvert.convert<int>(json['fansCount']);
	if (fansCount != null) {
		topArtistsArtists.fansCount = fansCount;
	}
	return topArtistsArtists;
}

Map<String, dynamic> $TopArtistsArtistsToJson(TopArtistsArtists entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['picId'] = entity.picId;
	data['img1v1Id'] = entity.img1v1Id;
	data['briefDesc'] = entity.briefDesc;
	data['picUrl'] = entity.picUrl;
	data['img1v1Url'] = entity.img1v1Url;
	data['albumSize'] = entity.albumSize;
	data['alias'] =  entity.alias;
	data['trans'] = entity.trans;
	data['musicSize'] = entity.musicSize;
	data['topicPerson'] = entity.topicPerson;
	data['showPrivateMsg'] = entity.showPrivateMsg;
	data['isSubed'] = entity.isSubed;
	data['accountId'] = entity.accountId;
	data['picId_str'] = entity.picidStr;
	data['img1v1Id_str'] = entity.img1v1idStr;
	data['transNames'] =  entity.transNames;
	data['followed'] = entity.followed;
	data['mvSize'] = entity.mvSize;
	data['publishTime'] = entity.publishTime;
	data['identifyTag'] = entity.identifyTag;
	data['alg'] = entity.alg;
	data['fansCount'] = entity.fansCount;
	return data;
}