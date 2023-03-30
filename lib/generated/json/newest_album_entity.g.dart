import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/newest_album_entity.dart';
import 'package:music/entity/album_item.dart';


NewestAlbumEntity $NewestAlbumEntityFromJson(Map<String, dynamic> json) {
	final NewestAlbumEntity newestAlbumEntity = NewestAlbumEntity();
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		newestAlbumEntity.code = code;
	}
	final List<NewestAlbumAlbums>? albums = jsonConvert.convertListNotNull<NewestAlbumAlbums>(json['albums']);
	if (albums != null) {
		newestAlbumEntity.albums = albums;
	}
	return newestAlbumEntity;
}

Map<String, dynamic> $NewestAlbumEntityToJson(NewestAlbumEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['code'] = entity.code;
	data['albums'] =  entity.albums?.map((v) => v.toJson()).toList();
	return data;
}

NewestAlbumAlbums $NewestAlbumAlbumsFromJson(Map<String, dynamic> json) {
	final NewestAlbumAlbums newestAlbumAlbums = NewestAlbumAlbums();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		newestAlbumAlbums.name = name;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		newestAlbumAlbums.id = id;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		newestAlbumAlbums.type = type;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		newestAlbumAlbums.size = size;
	}
	final int? picId = jsonConvert.convert<int>(json['picId']);
	if (picId != null) {
		newestAlbumAlbums.picId = picId;
	}
	final String? blurPicUrl = jsonConvert.convert<String>(json['blurPicUrl']);
	if (blurPicUrl != null) {
		newestAlbumAlbums.blurPicUrl = blurPicUrl;
	}
	final int? companyId = jsonConvert.convert<int>(json['companyId']);
	if (companyId != null) {
		newestAlbumAlbums.companyId = companyId;
	}
	final int? pic = jsonConvert.convert<int>(json['pic']);
	if (pic != null) {
		newestAlbumAlbums.pic = pic;
	}
	final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
	if (picUrl != null) {
		newestAlbumAlbums.picUrl = picUrl;
	}
	final int? publishTime = jsonConvert.convert<int>(json['publishTime']);
	if (publishTime != null) {
		newestAlbumAlbums.publishTime = publishTime;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		newestAlbumAlbums.description = description;
	}
	final String? tags = jsonConvert.convert<String>(json['tags']);
	if (tags != null) {
		newestAlbumAlbums.tags = tags;
	}
	final String? company = jsonConvert.convert<String>(json['company']);
	if (company != null) {
		newestAlbumAlbums.company = company;
	}
	final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
	if (briefDesc != null) {
		newestAlbumAlbums.briefDesc = briefDesc;
	}
	final NewestAlbumAlbumsArtist? artist = jsonConvert.convert<NewestAlbumAlbumsArtist>(json['artist']);
	if (artist != null) {
		newestAlbumAlbums.artist = artist;
	}
	final dynamic songs = jsonConvert.convert<dynamic>(json['songs']);
	if (songs != null) {
		newestAlbumAlbums.songs = songs;
	}
	final int? status = jsonConvert.convert<int>(json['status']);
	if (status != null) {
		newestAlbumAlbums.status = status;
	}
	final int? copyrightId = jsonConvert.convert<int>(json['copyrightId']);
	if (copyrightId != null) {
		newestAlbumAlbums.copyrightId = copyrightId;
	}
	final String? commentThreadId = jsonConvert.convert<String>(json['commentThreadId']);
	if (commentThreadId != null) {
		newestAlbumAlbums.commentThreadId = commentThreadId;
	}
	final List<NewestAlbumAlbumsArtists>? artists = jsonConvert.convertListNotNull<NewestAlbumAlbumsArtists>(json['artists']);
	if (artists != null) {
		newestAlbumAlbums.artists = artists;
	}
	final bool? paid = jsonConvert.convert<bool>(json['paid']);
	if (paid != null) {
		newestAlbumAlbums.paid = paid;
	}
	final bool? onSale = jsonConvert.convert<bool>(json['onSale']);
	if (onSale != null) {
		newestAlbumAlbums.onSale = onSale;
	}
	final String? picidStr = jsonConvert.convert<String>(json['picId_str']);
	if (picidStr != null) {
		newestAlbumAlbums.picidStr = picidStr;
	}
	return newestAlbumAlbums;
}

Map<String, dynamic> $NewestAlbumAlbumsToJson(NewestAlbumAlbums entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['type'] = entity.type;
	data['size'] = entity.size;
	data['picId'] = entity.picId;
	data['blurPicUrl'] = entity.blurPicUrl;
	data['companyId'] = entity.companyId;
	data['pic'] = entity.pic;
	data['picUrl'] = entity.picUrl;
	data['publishTime'] = entity.publishTime;
	data['description'] = entity.description;
	data['tags'] = entity.tags;
	data['company'] = entity.company;
	data['briefDesc'] = entity.briefDesc;
	data['artist'] = entity.artist?.toJson();
	data['songs'] = entity.songs;
	data['status'] = entity.status;
	data['copyrightId'] = entity.copyrightId;
	data['commentThreadId'] = entity.commentThreadId;
	data['artists'] =  entity.artists?.map((v) => v.toJson()).toList();
	data['paid'] = entity.paid;
	data['onSale'] = entity.onSale;
	data['picId_str'] = entity.picidStr;
	return data;
}

NewestAlbumAlbumsArtist $NewestAlbumAlbumsArtistFromJson(Map<String, dynamic> json) {
	final NewestAlbumAlbumsArtist newestAlbumAlbumsArtist = NewestAlbumAlbumsArtist();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		newestAlbumAlbumsArtist.name = name;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		newestAlbumAlbumsArtist.id = id;
	}
	final int? picId = jsonConvert.convert<int>(json['picId']);
	if (picId != null) {
		newestAlbumAlbumsArtist.picId = picId;
	}
	final int? img1v1Id = jsonConvert.convert<int>(json['img1v1Id']);
	if (img1v1Id != null) {
		newestAlbumAlbumsArtist.img1v1Id = img1v1Id;
	}
	final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
	if (briefDesc != null) {
		newestAlbumAlbumsArtist.briefDesc = briefDesc;
	}
	final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
	if (picUrl != null) {
		newestAlbumAlbumsArtist.picUrl = picUrl;
	}
	final String? img1v1Url = jsonConvert.convert<String>(json['img1v1Url']);
	if (img1v1Url != null) {
		newestAlbumAlbumsArtist.img1v1Url = img1v1Url;
	}
	final int? albumSize = jsonConvert.convert<int>(json['albumSize']);
	if (albumSize != null) {
		newestAlbumAlbumsArtist.albumSize = albumSize;
	}
	final List<String>? alias = jsonConvert.convertListNotNull<String>(json['alias']);
	if (alias != null) {
		newestAlbumAlbumsArtist.alias = alias;
	}
	final String? trans = jsonConvert.convert<String>(json['trans']);
	if (trans != null) {
		newestAlbumAlbumsArtist.trans = trans;
	}
	final int? musicSize = jsonConvert.convert<int>(json['musicSize']);
	if (musicSize != null) {
		newestAlbumAlbumsArtist.musicSize = musicSize;
	}
	final int? topicPerson = jsonConvert.convert<int>(json['topicPerson']);
	if (topicPerson != null) {
		newestAlbumAlbumsArtist.topicPerson = topicPerson;
	}
	final String? picidStr = jsonConvert.convert<String>(json['picId_str']);
	if (picidStr != null) {
		newestAlbumAlbumsArtist.picidStr = picidStr;
	}
	final String? img1v1idStr = jsonConvert.convert<String>(json['img1v1Id_str']);
	if (img1v1idStr != null) {
		newestAlbumAlbumsArtist.img1v1idStr = img1v1idStr;
	}
	return newestAlbumAlbumsArtist;
}

Map<String, dynamic> $NewestAlbumAlbumsArtistToJson(NewestAlbumAlbumsArtist entity) {
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
	data['picId_str'] = entity.picidStr;
	data['img1v1Id_str'] = entity.img1v1idStr;
	return data;
}

NewestAlbumAlbumsArtists $NewestAlbumAlbumsArtistsFromJson(Map<String, dynamic> json) {
	final NewestAlbumAlbumsArtists newestAlbumAlbumsArtists = NewestAlbumAlbumsArtists();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		newestAlbumAlbumsArtists.name = name;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		newestAlbumAlbumsArtists.id = id;
	}
	final int? picId = jsonConvert.convert<int>(json['picId']);
	if (picId != null) {
		newestAlbumAlbumsArtists.picId = picId;
	}
	final int? img1v1Id = jsonConvert.convert<int>(json['img1v1Id']);
	if (img1v1Id != null) {
		newestAlbumAlbumsArtists.img1v1Id = img1v1Id;
	}
	final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
	if (briefDesc != null) {
		newestAlbumAlbumsArtists.briefDesc = briefDesc;
	}
	final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
	if (picUrl != null) {
		newestAlbumAlbumsArtists.picUrl = picUrl;
	}
	final String? img1v1Url = jsonConvert.convert<String>(json['img1v1Url']);
	if (img1v1Url != null) {
		newestAlbumAlbumsArtists.img1v1Url = img1v1Url;
	}
	final int? albumSize = jsonConvert.convert<int>(json['albumSize']);
	if (albumSize != null) {
		newestAlbumAlbumsArtists.albumSize = albumSize;
	}
	final List<dynamic>? alias = jsonConvert.convertListNotNull<dynamic>(json['alias']);
	if (alias != null) {
		newestAlbumAlbumsArtists.alias = alias;
	}
	final String? trans = jsonConvert.convert<String>(json['trans']);
	if (trans != null) {
		newestAlbumAlbumsArtists.trans = trans;
	}
	final int? musicSize = jsonConvert.convert<int>(json['musicSize']);
	if (musicSize != null) {
		newestAlbumAlbumsArtists.musicSize = musicSize;
	}
	final int? topicPerson = jsonConvert.convert<int>(json['topicPerson']);
	if (topicPerson != null) {
		newestAlbumAlbumsArtists.topicPerson = topicPerson;
	}
	final String? img1v1idStr = jsonConvert.convert<String>(json['img1v1Id_str']);
	if (img1v1idStr != null) {
		newestAlbumAlbumsArtists.img1v1idStr = img1v1idStr;
	}
	return newestAlbumAlbumsArtists;
}

Map<String, dynamic> $NewestAlbumAlbumsArtistsToJson(NewestAlbumAlbumsArtists entity) {
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
	data['img1v1Id_str'] = entity.img1v1idStr;
	return data;
}