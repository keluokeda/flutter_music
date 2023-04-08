import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/personalized_mv_entity.dart';
import 'package:music/entity/mv_item.dart';


PersonalizedMvEntity $PersonalizedMvEntityFromJson(Map<String, dynamic> json) {
	final PersonalizedMvEntity personalizedMvEntity = PersonalizedMvEntity();
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		personalizedMvEntity.code = code;
	}
	final int? category = jsonConvert.convert<int>(json['category']);
	if (category != null) {
		personalizedMvEntity.category = category;
	}
	final List<PersonalizedMvResult>? result = jsonConvert.convertListNotNull<PersonalizedMvResult>(json['result']);
	if (result != null) {
		personalizedMvEntity.result = result;
	}
	return personalizedMvEntity;
}

Map<String, dynamic> $PersonalizedMvEntityToJson(PersonalizedMvEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['code'] = entity.code;
	data['category'] = entity.category;
	data['result'] =  entity.result?.map((v) => v.toJson()).toList();
	return data;
}

PersonalizedMvResult $PersonalizedMvResultFromJson(Map<String, dynamic> json) {
	final PersonalizedMvResult personalizedMvResult = PersonalizedMvResult();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		personalizedMvResult.id = id;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		personalizedMvResult.type = type;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		personalizedMvResult.name = name;
	}
	final String? copywriter = jsonConvert.convert<String>(json['copywriter']);
	if (copywriter != null) {
		personalizedMvResult.copywriter = copywriter;
	}
	final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
	if (picUrl != null) {
		personalizedMvResult.picUrl = picUrl;
	}
	final bool? canDislike = jsonConvert.convert<bool>(json['canDislike']);
	if (canDislike != null) {
		personalizedMvResult.canDislike = canDislike;
	}
	final dynamic trackNumberUpdateTime = jsonConvert.convert<dynamic>(json['trackNumberUpdateTime']);
	if (trackNumberUpdateTime != null) {
		personalizedMvResult.trackNumberUpdateTime = trackNumberUpdateTime;
	}
	final int? duration = jsonConvert.convert<int>(json['duration']);
	if (duration != null) {
		personalizedMvResult.duration = duration;
	}
	final int? playCount = jsonConvert.convert<int>(json['playCount']);
	if (playCount != null) {
		personalizedMvResult.playCount = playCount;
	}
	final bool? subed = jsonConvert.convert<bool>(json['subed']);
	if (subed != null) {
		personalizedMvResult.subed = subed;
	}
	final List<PersonalizedMvResultArtists>? artists = jsonConvert.convertListNotNull<PersonalizedMvResultArtists>(json['artists']);
	if (artists != null) {
		personalizedMvResult.artists = artists;
	}
	final String? artistName = jsonConvert.convert<String>(json['artistName']);
	if (artistName != null) {
		personalizedMvResult.artistName = artistName;
	}
	final int? artistId = jsonConvert.convert<int>(json['artistId']);
	if (artistId != null) {
		personalizedMvResult.artistId = artistId;
	}
	final String? alg = jsonConvert.convert<String>(json['alg']);
	if (alg != null) {
		personalizedMvResult.alg = alg;
	}
	return personalizedMvResult;
}

Map<String, dynamic> $PersonalizedMvResultToJson(PersonalizedMvResult entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['type'] = entity.type;
	data['name'] = entity.name;
	data['copywriter'] = entity.copywriter;
	data['picUrl'] = entity.picUrl;
	data['canDislike'] = entity.canDislike;
	data['trackNumberUpdateTime'] = entity.trackNumberUpdateTime;
	data['duration'] = entity.duration;
	data['playCount'] = entity.playCount;
	data['subed'] = entity.subed;
	data['artists'] =  entity.artists?.map((v) => v.toJson()).toList();
	data['artistName'] = entity.artistName;
	data['artistId'] = entity.artistId;
	data['alg'] = entity.alg;
	return data;
}

PersonalizedMvResultArtists $PersonalizedMvResultArtistsFromJson(Map<String, dynamic> json) {
	final PersonalizedMvResultArtists personalizedMvResultArtists = PersonalizedMvResultArtists();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		personalizedMvResultArtists.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		personalizedMvResultArtists.name = name;
	}
	return personalizedMvResultArtists;
}

Map<String, dynamic> $PersonalizedMvResultArtistsToJson(PersonalizedMvResultArtists entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	return data;
}