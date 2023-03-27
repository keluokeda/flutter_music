import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/artist_album_entity.dart';

ArtistAlbumEntity $ArtistAlbumEntityFromJson(Map<String, dynamic> json) {
	final ArtistAlbumEntity artistAlbumEntity = ArtistAlbumEntity();
	final ArtistAlbumArtist? artist = jsonConvert.convert<ArtistAlbumArtist>(json['artist']);
	if (artist != null) {
		artistAlbumEntity.artist = artist;
	}
	final List<ArtistAlbumHotAlbums>? hotAlbums = jsonConvert.convertListNotNull<ArtistAlbumHotAlbums>(json['hotAlbums']);
	if (hotAlbums != null) {
		artistAlbumEntity.hotAlbums = hotAlbums;
	}
	final bool? more = jsonConvert.convert<bool>(json['more']);
	if (more != null) {
		artistAlbumEntity.more = more;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		artistAlbumEntity.code = code;
	}
	return artistAlbumEntity;
}

Map<String, dynamic> $ArtistAlbumEntityToJson(ArtistAlbumEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['artist'] = entity.artist?.toJson();
	data['hotAlbums'] =  entity.hotAlbums?.map((v) => v.toJson()).toList();
	data['more'] = entity.more;
	data['code'] = entity.code;
	return data;
}

ArtistAlbumArtist $ArtistAlbumArtistFromJson(Map<String, dynamic> json) {
	final ArtistAlbumArtist artistAlbumArtist = ArtistAlbumArtist();
	final int? img1v1Id = jsonConvert.convert<int>(json['img1v1Id']);
	if (img1v1Id != null) {
		artistAlbumArtist.img1v1Id = img1v1Id;
	}
	final int? topicPerson = jsonConvert.convert<int>(json['topicPerson']);
	if (topicPerson != null) {
		artistAlbumArtist.topicPerson = topicPerson;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		artistAlbumArtist.followed = followed;
	}
	final List<dynamic>? alias = jsonConvert.convertListNotNull<dynamic>(json['alias']);
	if (alias != null) {
		artistAlbumArtist.alias = alias;
	}
	final int? picId = jsonConvert.convert<int>(json['picId']);
	if (picId != null) {
		artistAlbumArtist.picId = picId;
	}
	final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
	if (briefDesc != null) {
		artistAlbumArtist.briefDesc = briefDesc;
	}
	final int? musicSize = jsonConvert.convert<int>(json['musicSize']);
	if (musicSize != null) {
		artistAlbumArtist.musicSize = musicSize;
	}
	final int? albumSize = jsonConvert.convert<int>(json['albumSize']);
	if (albumSize != null) {
		artistAlbumArtist.albumSize = albumSize;
	}
	final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
	if (picUrl != null) {
		artistAlbumArtist.picUrl = picUrl;
	}
	final String? img1v1Url = jsonConvert.convert<String>(json['img1v1Url']);
	if (img1v1Url != null) {
		artistAlbumArtist.img1v1Url = img1v1Url;
	}
	final String? trans = jsonConvert.convert<String>(json['trans']);
	if (trans != null) {
		artistAlbumArtist.trans = trans;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		artistAlbumArtist.name = name;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		artistAlbumArtist.id = id;
	}
	final String? picidStr = jsonConvert.convert<String>(json['picId_str']);
	if (picidStr != null) {
		artistAlbumArtist.picidStr = picidStr;
	}
	final String? img1v1idStr = jsonConvert.convert<String>(json['img1v1Id_str']);
	if (img1v1idStr != null) {
		artistAlbumArtist.img1v1idStr = img1v1idStr;
	}
	return artistAlbumArtist;
}

Map<String, dynamic> $ArtistAlbumArtistToJson(ArtistAlbumArtist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['img1v1Id'] = entity.img1v1Id;
	data['topicPerson'] = entity.topicPerson;
	data['followed'] = entity.followed;
	data['alias'] =  entity.alias;
	data['picId'] = entity.picId;
	data['briefDesc'] = entity.briefDesc;
	data['musicSize'] = entity.musicSize;
	data['albumSize'] = entity.albumSize;
	data['picUrl'] = entity.picUrl;
	data['img1v1Url'] = entity.img1v1Url;
	data['trans'] = entity.trans;
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['picId_str'] = entity.picidStr;
	data['img1v1Id_str'] = entity.img1v1idStr;
	return data;
}

ArtistAlbumHotAlbums $ArtistAlbumHotAlbumsFromJson(Map<String, dynamic> json) {
	final ArtistAlbumHotAlbums artistAlbumHotAlbums = ArtistAlbumHotAlbums();
	final List<dynamic>? songs = jsonConvert.convertListNotNull<dynamic>(json['songs']);
	if (songs != null) {
		artistAlbumHotAlbums.songs = songs;
	}
	final bool? paid = jsonConvert.convert<bool>(json['paid']);
	if (paid != null) {
		artistAlbumHotAlbums.paid = paid;
	}
	final bool? onSale = jsonConvert.convert<bool>(json['onSale']);
	if (onSale != null) {
		artistAlbumHotAlbums.onSale = onSale;
	}
	final int? mark = jsonConvert.convert<int>(json['mark']);
	if (mark != null) {
		artistAlbumHotAlbums.mark = mark;
	}
	final dynamic awardTags = jsonConvert.convert<dynamic>(json['awardTags']);
	if (awardTags != null) {
		artistAlbumHotAlbums.awardTags = awardTags;
	}
	final int? companyId = jsonConvert.convert<int>(json['companyId']);
	if (companyId != null) {
		artistAlbumHotAlbums.companyId = companyId;
	}
	final String? blurPicUrl = jsonConvert.convert<String>(json['blurPicUrl']);
	if (blurPicUrl != null) {
		artistAlbumHotAlbums.blurPicUrl = blurPicUrl;
	}
	final List<dynamic>? alias = jsonConvert.convertListNotNull<dynamic>(json['alias']);
	if (alias != null) {
		artistAlbumHotAlbums.alias = alias;
	}
	final List<ArtistAlbumHotAlbumsArtists>? artists = jsonConvert.convertListNotNull<ArtistAlbumHotAlbumsArtists>(json['artists']);
	if (artists != null) {
		artistAlbumHotAlbums.artists = artists;
	}
	final int? copyrightId = jsonConvert.convert<int>(json['copyrightId']);
	if (copyrightId != null) {
		artistAlbumHotAlbums.copyrightId = copyrightId;
	}
	final int? picId = jsonConvert.convert<int>(json['picId']);
	if (picId != null) {
		artistAlbumHotAlbums.picId = picId;
	}
	final ArtistAlbumHotAlbumsArtist? artist = jsonConvert.convert<ArtistAlbumHotAlbumsArtist>(json['artist']);
	if (artist != null) {
		artistAlbumHotAlbums.artist = artist;
	}
	final int? publishTime = jsonConvert.convert<int>(json['publishTime']);
	if (publishTime != null) {
		artistAlbumHotAlbums.publishTime = publishTime;
	}
	final String? company = jsonConvert.convert<String>(json['company']);
	if (company != null) {
		artistAlbumHotAlbums.company = company;
	}
	final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
	if (briefDesc != null) {
		artistAlbumHotAlbums.briefDesc = briefDesc;
	}
	final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
	if (picUrl != null) {
		artistAlbumHotAlbums.picUrl = picUrl;
	}
	final String? commentThreadId = jsonConvert.convert<String>(json['commentThreadId']);
	if (commentThreadId != null) {
		artistAlbumHotAlbums.commentThreadId = commentThreadId;
	}
	final int? pic = jsonConvert.convert<int>(json['pic']);
	if (pic != null) {
		artistAlbumHotAlbums.pic = pic;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		artistAlbumHotAlbums.description = description;
	}
	final String? tags = jsonConvert.convert<String>(json['tags']);
	if (tags != null) {
		artistAlbumHotAlbums.tags = tags;
	}
	final int? status = jsonConvert.convert<int>(json['status']);
	if (status != null) {
		artistAlbumHotAlbums.status = status;
	}
	final String? subType = jsonConvert.convert<String>(json['subType']);
	if (subType != null) {
		artistAlbumHotAlbums.subType = subType;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		artistAlbumHotAlbums.name = name;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		artistAlbumHotAlbums.id = id;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		artistAlbumHotAlbums.type = type;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		artistAlbumHotAlbums.size = size;
	}
	final String? picidStr = jsonConvert.convert<String>(json['picId_str']);
	if (picidStr != null) {
		artistAlbumHotAlbums.picidStr = picidStr;
	}
	final bool? isSub = jsonConvert.convert<bool>(json['isSub']);
	if (isSub != null) {
		artistAlbumHotAlbums.isSub = isSub;
	}
	return artistAlbumHotAlbums;
}

Map<String, dynamic> $ArtistAlbumHotAlbumsToJson(ArtistAlbumHotAlbums entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['songs'] =  entity.songs;
	data['paid'] = entity.paid;
	data['onSale'] = entity.onSale;
	data['mark'] = entity.mark;
	data['awardTags'] = entity.awardTags;
	data['companyId'] = entity.companyId;
	data['blurPicUrl'] = entity.blurPicUrl;
	data['alias'] =  entity.alias;
	data['artists'] =  entity.artists?.map((v) => v.toJson()).toList();
	data['copyrightId'] = entity.copyrightId;
	data['picId'] = entity.picId;
	data['artist'] = entity.artist?.toJson();
	data['publishTime'] = entity.publishTime;
	data['company'] = entity.company;
	data['briefDesc'] = entity.briefDesc;
	data['picUrl'] = entity.picUrl;
	data['commentThreadId'] = entity.commentThreadId;
	data['pic'] = entity.pic;
	data['description'] = entity.description;
	data['tags'] = entity.tags;
	data['status'] = entity.status;
	data['subType'] = entity.subType;
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['type'] = entity.type;
	data['size'] = entity.size;
	data['picId_str'] = entity.picidStr;
	data['isSub'] = entity.isSub;
	return data;
}

ArtistAlbumHotAlbumsArtists $ArtistAlbumHotAlbumsArtistsFromJson(Map<String, dynamic> json) {
	final ArtistAlbumHotAlbumsArtists artistAlbumHotAlbumsArtists = ArtistAlbumHotAlbumsArtists();
	final int? img1v1Id = jsonConvert.convert<int>(json['img1v1Id']);
	if (img1v1Id != null) {
		artistAlbumHotAlbumsArtists.img1v1Id = img1v1Id;
	}
	final int? topicPerson = jsonConvert.convert<int>(json['topicPerson']);
	if (topicPerson != null) {
		artistAlbumHotAlbumsArtists.topicPerson = topicPerson;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		artistAlbumHotAlbumsArtists.followed = followed;
	}
	final List<dynamic>? alias = jsonConvert.convertListNotNull<dynamic>(json['alias']);
	if (alias != null) {
		artistAlbumHotAlbumsArtists.alias = alias;
	}
	final int? picId = jsonConvert.convert<int>(json['picId']);
	if (picId != null) {
		artistAlbumHotAlbumsArtists.picId = picId;
	}
	final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
	if (briefDesc != null) {
		artistAlbumHotAlbumsArtists.briefDesc = briefDesc;
	}
	final int? musicSize = jsonConvert.convert<int>(json['musicSize']);
	if (musicSize != null) {
		artistAlbumHotAlbumsArtists.musicSize = musicSize;
	}
	final int? albumSize = jsonConvert.convert<int>(json['albumSize']);
	if (albumSize != null) {
		artistAlbumHotAlbumsArtists.albumSize = albumSize;
	}
	final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
	if (picUrl != null) {
		artistAlbumHotAlbumsArtists.picUrl = picUrl;
	}
	final String? img1v1Url = jsonConvert.convert<String>(json['img1v1Url']);
	if (img1v1Url != null) {
		artistAlbumHotAlbumsArtists.img1v1Url = img1v1Url;
	}
	final String? trans = jsonConvert.convert<String>(json['trans']);
	if (trans != null) {
		artistAlbumHotAlbumsArtists.trans = trans;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		artistAlbumHotAlbumsArtists.name = name;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		artistAlbumHotAlbumsArtists.id = id;
	}
	final String? img1v1idStr = jsonConvert.convert<String>(json['img1v1Id_str']);
	if (img1v1idStr != null) {
		artistAlbumHotAlbumsArtists.img1v1idStr = img1v1idStr;
	}
	return artistAlbumHotAlbumsArtists;
}

Map<String, dynamic> $ArtistAlbumHotAlbumsArtistsToJson(ArtistAlbumHotAlbumsArtists entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['img1v1Id'] = entity.img1v1Id;
	data['topicPerson'] = entity.topicPerson;
	data['followed'] = entity.followed;
	data['alias'] =  entity.alias;
	data['picId'] = entity.picId;
	data['briefDesc'] = entity.briefDesc;
	data['musicSize'] = entity.musicSize;
	data['albumSize'] = entity.albumSize;
	data['picUrl'] = entity.picUrl;
	data['img1v1Url'] = entity.img1v1Url;
	data['trans'] = entity.trans;
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['img1v1Id_str'] = entity.img1v1idStr;
	return data;
}

ArtistAlbumHotAlbumsArtist $ArtistAlbumHotAlbumsArtistFromJson(Map<String, dynamic> json) {
	final ArtistAlbumHotAlbumsArtist artistAlbumHotAlbumsArtist = ArtistAlbumHotAlbumsArtist();
	final int? img1v1Id = jsonConvert.convert<int>(json['img1v1Id']);
	if (img1v1Id != null) {
		artistAlbumHotAlbumsArtist.img1v1Id = img1v1Id;
	}
	final int? topicPerson = jsonConvert.convert<int>(json['topicPerson']);
	if (topicPerson != null) {
		artistAlbumHotAlbumsArtist.topicPerson = topicPerson;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		artistAlbumHotAlbumsArtist.followed = followed;
	}
	final List<dynamic>? alias = jsonConvert.convertListNotNull<dynamic>(json['alias']);
	if (alias != null) {
		artistAlbumHotAlbumsArtist.alias = alias;
	}
	final int? picId = jsonConvert.convert<int>(json['picId']);
	if (picId != null) {
		artistAlbumHotAlbumsArtist.picId = picId;
	}
	final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
	if (briefDesc != null) {
		artistAlbumHotAlbumsArtist.briefDesc = briefDesc;
	}
	final int? musicSize = jsonConvert.convert<int>(json['musicSize']);
	if (musicSize != null) {
		artistAlbumHotAlbumsArtist.musicSize = musicSize;
	}
	final int? albumSize = jsonConvert.convert<int>(json['albumSize']);
	if (albumSize != null) {
		artistAlbumHotAlbumsArtist.albumSize = albumSize;
	}
	final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
	if (picUrl != null) {
		artistAlbumHotAlbumsArtist.picUrl = picUrl;
	}
	final String? img1v1Url = jsonConvert.convert<String>(json['img1v1Url']);
	if (img1v1Url != null) {
		artistAlbumHotAlbumsArtist.img1v1Url = img1v1Url;
	}
	final String? trans = jsonConvert.convert<String>(json['trans']);
	if (trans != null) {
		artistAlbumHotAlbumsArtist.trans = trans;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		artistAlbumHotAlbumsArtist.name = name;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		artistAlbumHotAlbumsArtist.id = id;
	}
	final String? picidStr = jsonConvert.convert<String>(json['picId_str']);
	if (picidStr != null) {
		artistAlbumHotAlbumsArtist.picidStr = picidStr;
	}
	final String? img1v1idStr = jsonConvert.convert<String>(json['img1v1Id_str']);
	if (img1v1idStr != null) {
		artistAlbumHotAlbumsArtist.img1v1idStr = img1v1idStr;
	}
	return artistAlbumHotAlbumsArtist;
}

Map<String, dynamic> $ArtistAlbumHotAlbumsArtistToJson(ArtistAlbumHotAlbumsArtist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['img1v1Id'] = entity.img1v1Id;
	data['topicPerson'] = entity.topicPerson;
	data['followed'] = entity.followed;
	data['alias'] =  entity.alias;
	data['picId'] = entity.picId;
	data['briefDesc'] = entity.briefDesc;
	data['musicSize'] = entity.musicSize;
	data['albumSize'] = entity.albumSize;
	data['picUrl'] = entity.picUrl;
	data['img1v1Url'] = entity.img1v1Url;
	data['trans'] = entity.trans;
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['picId_str'] = entity.picidStr;
	data['img1v1Id_str'] = entity.img1v1idStr;
	return data;
}