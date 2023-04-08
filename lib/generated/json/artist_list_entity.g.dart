import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/artist_list_entity.dart';

ArtistListEntity $ArtistListEntityFromJson(Map<String, dynamic> json) {
	final ArtistListEntity artistListEntity = ArtistListEntity();
	final List<ArtistListArtists>? artists = jsonConvert.convertListNotNull<ArtistListArtists>(json['artists']);
	if (artists != null) {
		artistListEntity.artists = artists;
	}
	final bool? more = jsonConvert.convert<bool>(json['more']);
	if (more != null) {
		artistListEntity.more = more;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		artistListEntity.code = code;
	}
	return artistListEntity;
}

Map<String, dynamic> $ArtistListEntityToJson(ArtistListEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['artists'] =  entity.artists?.map((v) => v.toJson()).toList();
	data['more'] = entity.more;
	data['code'] = entity.code;
	return data;
}

ArtistListArtists $ArtistListArtistsFromJson(Map<String, dynamic> json) {
	final ArtistListArtists artistListArtists = ArtistListArtists();
	final int? albumSize = jsonConvert.convert<int>(json['albumSize']);
	if (albumSize != null) {
		artistListArtists.albumSize = albumSize;
	}
	final List<String>? alias = jsonConvert.convertListNotNull<String>(json['alias']);
	if (alias != null) {
		artistListArtists.alias = alias;
	}
	final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
	if (briefDesc != null) {
		artistListArtists.briefDesc = briefDesc;
	}
	final int? fansCount = jsonConvert.convert<int>(json['fansCount']);
	if (fansCount != null) {
		artistListArtists.fansCount = fansCount;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		artistListArtists.followed = followed;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		artistListArtists.id = id;
	}
	final int? img1v1Id = jsonConvert.convert<int>(json['img1v1Id']);
	if (img1v1Id != null) {
		artistListArtists.img1v1Id = img1v1Id;
	}
	final String? img1v1idStr = jsonConvert.convert<String>(json['img1v1Id_str']);
	if (img1v1idStr != null) {
		artistListArtists.img1v1idStr = img1v1idStr;
	}
	final String? img1v1Url = jsonConvert.convert<String>(json['img1v1Url']);
	if (img1v1Url != null) {
		artistListArtists.img1v1Url = img1v1Url;
	}
	final int? musicSize = jsonConvert.convert<int>(json['musicSize']);
	if (musicSize != null) {
		artistListArtists.musicSize = musicSize;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		artistListArtists.name = name;
	}
	final int? picId = jsonConvert.convert<int>(json['picId']);
	if (picId != null) {
		artistListArtists.picId = picId;
	}
	final String? picidStr = jsonConvert.convert<String>(json['picId_str']);
	if (picidStr != null) {
		artistListArtists.picidStr = picidStr;
	}
	final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
	if (picUrl != null) {
		artistListArtists.picUrl = picUrl;
	}
	final int? topicPerson = jsonConvert.convert<int>(json['topicPerson']);
	if (topicPerson != null) {
		artistListArtists.topicPerson = topicPerson;
	}
	final String? trans = jsonConvert.convert<String>(json['trans']);
	if (trans != null) {
		artistListArtists.trans = trans;
	}
	final int? accountId = jsonConvert.convert<int>(json['accountId']);
	if (accountId != null) {
		artistListArtists.accountId = accountId;
	}
	return artistListArtists;
}

Map<String, dynamic> $ArtistListArtistsToJson(ArtistListArtists entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['albumSize'] = entity.albumSize;
	data['alias'] =  entity.alias;
	data['briefDesc'] = entity.briefDesc;
	data['fansCount'] = entity.fansCount;
	data['followed'] = entity.followed;
	data['id'] = entity.id;
	data['img1v1Id'] = entity.img1v1Id;
	data['img1v1Id_str'] = entity.img1v1idStr;
	data['img1v1Url'] = entity.img1v1Url;
	data['musicSize'] = entity.musicSize;
	data['name'] = entity.name;
	data['picId'] = entity.picId;
	data['picId_str'] = entity.picidStr;
	data['picUrl'] = entity.picUrl;
	data['topicPerson'] = entity.topicPerson;
	data['trans'] = entity.trans;
	data['accountId'] = entity.accountId;
	return data;
}