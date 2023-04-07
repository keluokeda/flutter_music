import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/simi_mv_entity.dart';

SimiMvEntity $SimiMvEntityFromJson(Map<String, dynamic> json) {
	final SimiMvEntity simiMvEntity = SimiMvEntity();
	final List<SimiMvMvs>? mvs = jsonConvert.convertListNotNull<SimiMvMvs>(json['mvs']);
	if (mvs != null) {
		simiMvEntity.mvs = mvs;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		simiMvEntity.code = code;
	}
	return simiMvEntity;
}

Map<String, dynamic> $SimiMvEntityToJson(SimiMvEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['mvs'] =  entity.mvs?.map((v) => v.toJson()).toList();
	data['code'] = entity.code;
	return data;
}

SimiMvMvs $SimiMvMvsFromJson(Map<String, dynamic> json) {
	final SimiMvMvs simiMvMvs = SimiMvMvs();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		simiMvMvs.id = id;
	}
	final String? cover = jsonConvert.convert<String>(json['cover']);
	if (cover != null) {
		simiMvMvs.cover = cover;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		simiMvMvs.name = name;
	}
	final int? playCount = jsonConvert.convert<int>(json['playCount']);
	if (playCount != null) {
		simiMvMvs.playCount = playCount;
	}
	final dynamic briefDesc = jsonConvert.convert<dynamic>(json['briefDesc']);
	if (briefDesc != null) {
		simiMvMvs.briefDesc = briefDesc;
	}
	final dynamic desc = jsonConvert.convert<dynamic>(json['desc']);
	if (desc != null) {
		simiMvMvs.desc = desc;
	}
	final String? artistName = jsonConvert.convert<String>(json['artistName']);
	if (artistName != null) {
		simiMvMvs.artistName = artistName;
	}
	final int? artistId = jsonConvert.convert<int>(json['artistId']);
	if (artistId != null) {
		simiMvMvs.artistId = artistId;
	}
	final int? duration = jsonConvert.convert<int>(json['duration']);
	if (duration != null) {
		simiMvMvs.duration = duration;
	}
	final int? mark = jsonConvert.convert<int>(json['mark']);
	if (mark != null) {
		simiMvMvs.mark = mark;
	}
	final List<SimiMvMvsArtists>? artists = jsonConvert.convertListNotNull<SimiMvMvsArtists>(json['artists']);
	if (artists != null) {
		simiMvMvs.artists = artists;
	}
	final String? alg = jsonConvert.convert<String>(json['alg']);
	if (alg != null) {
		simiMvMvs.alg = alg;
	}
	return simiMvMvs;
}

Map<String, dynamic> $SimiMvMvsToJson(SimiMvMvs entity) {
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
	data['artists'] =  entity.artists?.map((v) => v.toJson()).toList();
	data['alg'] = entity.alg;
	return data;
}

SimiMvMvsArtists $SimiMvMvsArtistsFromJson(Map<String, dynamic> json) {
	final SimiMvMvsArtists simiMvMvsArtists = SimiMvMvsArtists();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		simiMvMvsArtists.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		simiMvMvsArtists.name = name;
	}
	final List<dynamic>? alias = jsonConvert.convertListNotNull<dynamic>(json['alias']);
	if (alias != null) {
		simiMvMvsArtists.alias = alias;
	}
	final dynamic transNames = jsonConvert.convert<dynamic>(json['transNames']);
	if (transNames != null) {
		simiMvMvsArtists.transNames = transNames;
	}
	return simiMvMvsArtists;
}

Map<String, dynamic> $SimiMvMvsArtistsToJson(SimiMvMvsArtists entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['alias'] =  entity.alias;
	data['transNames'] = entity.transNames;
	return data;
}