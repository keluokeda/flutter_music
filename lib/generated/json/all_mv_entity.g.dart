import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/all_mv_entity.dart';

AllMvEntity $AllMvEntityFromJson(Map<String, dynamic> json) {
	final AllMvEntity allMvEntity = AllMvEntity();
	final int? count = jsonConvert.convert<int>(json['count']);
	if (count != null) {
		allMvEntity.count = count;
	}
	final bool? hasMore = jsonConvert.convert<bool>(json['hasMore']);
	if (hasMore != null) {
		allMvEntity.hasMore = hasMore;
	}
	final List<AllMvData>? data = jsonConvert.convertListNotNull<AllMvData>(json['data']);
	if (data != null) {
		allMvEntity.data = data;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		allMvEntity.code = code;
	}
	return allMvEntity;
}

Map<String, dynamic> $AllMvEntityToJson(AllMvEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['count'] = entity.count;
	data['hasMore'] = entity.hasMore;
	data['data'] =  entity.data?.map((v) => v.toJson()).toList();
	data['code'] = entity.code;
	return data;
}

AllMvData $AllMvDataFromJson(Map<String, dynamic> json) {
	final AllMvData allMvData = AllMvData();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		allMvData.id = id;
	}
	final String? cover = jsonConvert.convert<String>(json['cover']);
	if (cover != null) {
		allMvData.cover = cover;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		allMvData.name = name;
	}
	final int? playCount = jsonConvert.convert<int>(json['playCount']);
	if (playCount != null) {
		allMvData.playCount = playCount;
	}
	final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
	if (briefDesc != null) {
		allMvData.briefDesc = briefDesc;
	}
	final dynamic desc = jsonConvert.convert<dynamic>(json['desc']);
	if (desc != null) {
		allMvData.desc = desc;
	}
	final String? artistName = jsonConvert.convert<String>(json['artistName']);
	if (artistName != null) {
		allMvData.artistName = artistName;
	}
	final int? artistId = jsonConvert.convert<int>(json['artistId']);
	if (artistId != null) {
		allMvData.artistId = artistId;
	}
	final int? duration = jsonConvert.convert<int>(json['duration']);
	if (duration != null) {
		allMvData.duration = duration;
	}
	final int? mark = jsonConvert.convert<int>(json['mark']);
	if (mark != null) {
		allMvData.mark = mark;
	}
	final bool? subed = jsonConvert.convert<bool>(json['subed']);
	if (subed != null) {
		allMvData.subed = subed;
	}
	final List<AllMvDataArtists>? artists = jsonConvert.convertListNotNull<AllMvDataArtists>(json['artists']);
	if (artists != null) {
		allMvData.artists = artists;
	}
	final List<String>? transNames = jsonConvert.convertListNotNull<String>(json['transNames']);
	if (transNames != null) {
		allMvData.transNames = transNames;
	}
	return allMvData;
}

Map<String, dynamic> $AllMvDataToJson(AllMvData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['cover'] = entity.cover;
	data['name'] = entity.name;
	data['playCount'] = entity.playCount;
	data['briefDesc'] = entity.briefDesc;
	data['desc'] = entity.desc;
	data['artistName'] = entity.artistName;
	data['artistId'] = entity.artistId;
	data['duration'] = entity.duration;
	data['mark'] = entity.mark;
	data['subed'] = entity.subed;
	data['artists'] =  entity.artists?.map((v) => v.toJson()).toList();
	data['transNames'] =  entity.transNames;
	return data;
}

AllMvDataArtists $AllMvDataArtistsFromJson(Map<String, dynamic> json) {
	final AllMvDataArtists allMvDataArtists = AllMvDataArtists();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		allMvDataArtists.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		allMvDataArtists.name = name;
	}
	final List<String>? alias = jsonConvert.convertListNotNull<String>(json['alias']);
	if (alias != null) {
		allMvDataArtists.alias = alias;
	}
	final dynamic transNames = jsonConvert.convert<dynamic>(json['transNames']);
	if (transNames != null) {
		allMvDataArtists.transNames = transNames;
	}
	return allMvDataArtists;
}

Map<String, dynamic> $AllMvDataArtistsToJson(AllMvDataArtists entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['alias'] =  entity.alias;
	data['transNames'] = entity.transNames;
	return data;
}