import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/artist_mv_entity.dart';

ArtistMvEntity $ArtistMvEntityFromJson(Map<String, dynamic> json) {
	final ArtistMvEntity artistMvEntity = ArtistMvEntity();
	final List<ArtistMvMvs>? mvs = jsonConvert.convertListNotNull<ArtistMvMvs>(json['mvs']);
	if (mvs != null) {
		artistMvEntity.mvs = mvs;
	}
	final int? time = jsonConvert.convert<int>(json['time']);
	if (time != null) {
		artistMvEntity.time = time;
	}
	final bool? hasMore = jsonConvert.convert<bool>(json['hasMore']);
	if (hasMore != null) {
		artistMvEntity.hasMore = hasMore;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		artistMvEntity.code = code;
	}
	return artistMvEntity;
}

Map<String, dynamic> $ArtistMvEntityToJson(ArtistMvEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['mvs'] =  entity.mvs?.map((v) => v.toJson()).toList();
	data['time'] = entity.time;
	data['hasMore'] = entity.hasMore;
	data['code'] = entity.code;
	return data;
}

ArtistMvMvs $ArtistMvMvsFromJson(Map<String, dynamic> json) {
	final ArtistMvMvs artistMvMvs = ArtistMvMvs();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		artistMvMvs.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		artistMvMvs.name = name;
	}
	final int? status = jsonConvert.convert<int>(json['status']);
	if (status != null) {
		artistMvMvs.status = status;
	}
	final ArtistMvMvsArtist? artist = jsonConvert.convert<ArtistMvMvsArtist>(json['artist']);
	if (artist != null) {
		artistMvMvs.artist = artist;
	}
	final String? imgurl = jsonConvert.convert<String>(json['imgurl']);
	if (imgurl != null) {
		artistMvMvs.imgurl = imgurl;
	}
	final String? artistName = jsonConvert.convert<String>(json['artistName']);
	if (artistName != null) {
		artistMvMvs.artistName = artistName;
	}
	final String? imgurl16v9 = jsonConvert.convert<String>(json['imgurl16v9']);
	if (imgurl16v9 != null) {
		artistMvMvs.imgurl16v9 = imgurl16v9;
	}
	final int? duration = jsonConvert.convert<int>(json['duration']);
	if (duration != null) {
		artistMvMvs.duration = duration;
	}
	final int? playCount = jsonConvert.convert<int>(json['playCount']);
	if (playCount != null) {
		artistMvMvs.playCount = playCount;
	}
	final String? publishTime = jsonConvert.convert<String>(json['publishTime']);
	if (publishTime != null) {
		artistMvMvs.publishTime = publishTime;
	}
	final bool? subed = jsonConvert.convert<bool>(json['subed']);
	if (subed != null) {
		artistMvMvs.subed = subed;
	}
	return artistMvMvs;
}

Map<String, dynamic> $ArtistMvMvsToJson(ArtistMvMvs entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['status'] = entity.status;
	data['artist'] = entity.artist?.toJson();
	data['imgurl'] = entity.imgurl;
	data['artistName'] = entity.artistName;
	data['imgurl16v9'] = entity.imgurl16v9;
	data['duration'] = entity.duration;
	data['playCount'] = entity.playCount;
	data['publishTime'] = entity.publishTime;
	data['subed'] = entity.subed;
	return data;
}

ArtistMvMvsArtist $ArtistMvMvsArtistFromJson(Map<String, dynamic> json) {
	final ArtistMvMvsArtist artistMvMvsArtist = ArtistMvMvsArtist();
	final int? img1v1Id = jsonConvert.convert<int>(json['img1v1Id']);
	if (img1v1Id != null) {
		artistMvMvsArtist.img1v1Id = img1v1Id;
	}
	final int? topicPerson = jsonConvert.convert<int>(json['topicPerson']);
	if (topicPerson != null) {
		artistMvMvsArtist.topicPerson = topicPerson;
	}
	final int? albumSize = jsonConvert.convert<int>(json['albumSize']);
	if (albumSize != null) {
		artistMvMvsArtist.albumSize = albumSize;
	}
	final String? trans = jsonConvert.convert<String>(json['trans']);
	if (trans != null) {
		artistMvMvsArtist.trans = trans;
	}
	final int? musicSize = jsonConvert.convert<int>(json['musicSize']);
	if (musicSize != null) {
		artistMvMvsArtist.musicSize = musicSize;
	}
	final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
	if (briefDesc != null) {
		artistMvMvsArtist.briefDesc = briefDesc;
	}
	final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
	if (picUrl != null) {
		artistMvMvsArtist.picUrl = picUrl;
	}
	final String? img1v1Url = jsonConvert.convert<String>(json['img1v1Url']);
	if (img1v1Url != null) {
		artistMvMvsArtist.img1v1Url = img1v1Url;
	}
	final List<dynamic>? alias = jsonConvert.convertListNotNull<dynamic>(json['alias']);
	if (alias != null) {
		artistMvMvsArtist.alias = alias;
	}
	final int? picId = jsonConvert.convert<int>(json['picId']);
	if (picId != null) {
		artistMvMvsArtist.picId = picId;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		artistMvMvsArtist.name = name;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		artistMvMvsArtist.id = id;
	}
	final String? img1v1idStr = jsonConvert.convert<String>(json['img1v1Id_str']);
	if (img1v1idStr != null) {
		artistMvMvsArtist.img1v1idStr = img1v1idStr;
	}
	return artistMvMvsArtist;
}

Map<String, dynamic> $ArtistMvMvsArtistToJson(ArtistMvMvsArtist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['img1v1Id'] = entity.img1v1Id;
	data['topicPerson'] = entity.topicPerson;
	data['albumSize'] = entity.albumSize;
	data['trans'] = entity.trans;
	data['musicSize'] = entity.musicSize;
	data['briefDesc'] = entity.briefDesc;
	data['picUrl'] = entity.picUrl;
	data['img1v1Url'] = entity.img1v1Url;
	data['alias'] =  entity.alias;
	data['picId'] = entity.picId;
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['img1v1Id_str'] = entity.img1v1idStr;
	return data;
}