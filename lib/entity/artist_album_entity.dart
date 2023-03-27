import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/artist_album_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class ArtistAlbumEntity {
	ArtistAlbumArtist? artist;
	List<ArtistAlbumHotAlbums>? hotAlbums;
	bool? more;
	int? code;

	ArtistAlbumEntity();

	factory ArtistAlbumEntity.fromJson(Map<String, dynamic> json) => $ArtistAlbumEntityFromJson(json);

	Map<String, dynamic> toJson() => $ArtistAlbumEntityToJson(this);

	ArtistAlbumEntity copyWith({ArtistAlbumArtist? artist, List<ArtistAlbumHotAlbums>? hotAlbums, bool? more, int? code}) {
		return ArtistAlbumEntity()
			..artist= artist ?? this.artist
			..hotAlbums= hotAlbums ?? this.hotAlbums
			..more= more ?? this.more
			..code= code ?? this.code;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ArtistAlbumArtist {
	int? img1v1Id;
	int? topicPerson;
	bool? followed;
	List<dynamic>? alias;
	int? picId;
	String? briefDesc;
	int? musicSize;
	int? albumSize;
	String? picUrl;
	String? img1v1Url;
	String? trans;
	String? name;
	int? id;
	@JSONField(name: "picId_str")
	String? picidStr;
	@JSONField(name: "img1v1Id_str")
	String? img1v1idStr;

	ArtistAlbumArtist();

	factory ArtistAlbumArtist.fromJson(Map<String, dynamic> json) => $ArtistAlbumArtistFromJson(json);

	Map<String, dynamic> toJson() => $ArtistAlbumArtistToJson(this);

	ArtistAlbumArtist copyWith({int? img1v1Id, int? topicPerson, bool? followed, List<dynamic>? alias, int? picId, String? briefDesc, int? musicSize, int? albumSize, String? picUrl, String? img1v1Url, String? trans, String? name, int? id, String? picidStr, String? img1v1idStr}) {
		return ArtistAlbumArtist()
			..img1v1Id= img1v1Id ?? this.img1v1Id
			..topicPerson= topicPerson ?? this.topicPerson
			..followed= followed ?? this.followed
			..alias= alias ?? this.alias
			..picId= picId ?? this.picId
			..briefDesc= briefDesc ?? this.briefDesc
			..musicSize= musicSize ?? this.musicSize
			..albumSize= albumSize ?? this.albumSize
			..picUrl= picUrl ?? this.picUrl
			..img1v1Url= img1v1Url ?? this.img1v1Url
			..trans= trans ?? this.trans
			..name= name ?? this.name
			..id= id ?? this.id
			..picidStr= picidStr ?? this.picidStr
			..img1v1idStr= img1v1idStr ?? this.img1v1idStr;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ArtistAlbumHotAlbums {
	List<dynamic>? songs;
	bool? paid;
	bool? onSale;
	int? mark;
	dynamic awardTags;
	int? companyId;
	String? blurPicUrl;
	List<dynamic>? alias;
	List<ArtistAlbumHotAlbumsArtists>? artists;
	int? copyrightId;
	int? picId;
	ArtistAlbumHotAlbumsArtist? artist;
	int? publishTime;
	String? company;
	String? briefDesc;
	String? picUrl;
	String? commentThreadId;
	int? pic;
	String? description;
	String? tags;
	int? status;
	String? subType;
	String? name;
	int? id;
	String? type;
	int? size;
	@JSONField(name: "picId_str")
	String? picidStr;
	bool? isSub;

	ArtistAlbumHotAlbums();

	factory ArtistAlbumHotAlbums.fromJson(Map<String, dynamic> json) => $ArtistAlbumHotAlbumsFromJson(json);

	Map<String, dynamic> toJson() => $ArtistAlbumHotAlbumsToJson(this);

	ArtistAlbumHotAlbums copyWith({List<dynamic>? songs, bool? paid, bool? onSale, int? mark, dynamic awardTags, int? companyId, String? blurPicUrl, List<dynamic>? alias, List<ArtistAlbumHotAlbumsArtists>? artists, int? copyrightId, int? picId, ArtistAlbumHotAlbumsArtist? artist, int? publishTime, String? company, String? briefDesc, String? picUrl, String? commentThreadId, int? pic, String? description, String? tags, int? status, String? subType, String? name, int? id, String? type, int? size, String? picidStr, bool? isSub}) {
		return ArtistAlbumHotAlbums()
			..songs= songs ?? this.songs
			..paid= paid ?? this.paid
			..onSale= onSale ?? this.onSale
			..mark= mark ?? this.mark
			..awardTags= awardTags ?? this.awardTags
			..companyId= companyId ?? this.companyId
			..blurPicUrl= blurPicUrl ?? this.blurPicUrl
			..alias= alias ?? this.alias
			..artists= artists ?? this.artists
			..copyrightId= copyrightId ?? this.copyrightId
			..picId= picId ?? this.picId
			..artist= artist ?? this.artist
			..publishTime= publishTime ?? this.publishTime
			..company= company ?? this.company
			..briefDesc= briefDesc ?? this.briefDesc
			..picUrl= picUrl ?? this.picUrl
			..commentThreadId= commentThreadId ?? this.commentThreadId
			..pic= pic ?? this.pic
			..description= description ?? this.description
			..tags= tags ?? this.tags
			..status= status ?? this.status
			..subType= subType ?? this.subType
			..name= name ?? this.name
			..id= id ?? this.id
			..type= type ?? this.type
			..size= size ?? this.size
			..picidStr= picidStr ?? this.picidStr
			..isSub= isSub ?? this.isSub;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ArtistAlbumHotAlbumsArtists {
	int? img1v1Id;
	int? topicPerson;
	bool? followed;
	List<dynamic>? alias;
	int? picId;
	String? briefDesc;
	int? musicSize;
	int? albumSize;
	String? picUrl;
	String? img1v1Url;
	String? trans;
	String? name;
	int? id;
	@JSONField(name: "img1v1Id_str")
	String? img1v1idStr;

	ArtistAlbumHotAlbumsArtists();

	factory ArtistAlbumHotAlbumsArtists.fromJson(Map<String, dynamic> json) => $ArtistAlbumHotAlbumsArtistsFromJson(json);

	Map<String, dynamic> toJson() => $ArtistAlbumHotAlbumsArtistsToJson(this);

	ArtistAlbumHotAlbumsArtists copyWith({int? img1v1Id, int? topicPerson, bool? followed, List<dynamic>? alias, int? picId, String? briefDesc, int? musicSize, int? albumSize, String? picUrl, String? img1v1Url, String? trans, String? name, int? id, String? img1v1idStr}) {
		return ArtistAlbumHotAlbumsArtists()
			..img1v1Id= img1v1Id ?? this.img1v1Id
			..topicPerson= topicPerson ?? this.topicPerson
			..followed= followed ?? this.followed
			..alias= alias ?? this.alias
			..picId= picId ?? this.picId
			..briefDesc= briefDesc ?? this.briefDesc
			..musicSize= musicSize ?? this.musicSize
			..albumSize= albumSize ?? this.albumSize
			..picUrl= picUrl ?? this.picUrl
			..img1v1Url= img1v1Url ?? this.img1v1Url
			..trans= trans ?? this.trans
			..name= name ?? this.name
			..id= id ?? this.id
			..img1v1idStr= img1v1idStr ?? this.img1v1idStr;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ArtistAlbumHotAlbumsArtist {
	int? img1v1Id;
	int? topicPerson;
	bool? followed;
	List<dynamic>? alias;
	int? picId;
	String? briefDesc;
	int? musicSize;
	int? albumSize;
	String? picUrl;
	String? img1v1Url;
	String? trans;
	String? name;
	int? id;
	@JSONField(name: "picId_str")
	String? picidStr;
	@JSONField(name: "img1v1Id_str")
	String? img1v1idStr;

	ArtistAlbumHotAlbumsArtist();

	factory ArtistAlbumHotAlbumsArtist.fromJson(Map<String, dynamic> json) => $ArtistAlbumHotAlbumsArtistFromJson(json);

	Map<String, dynamic> toJson() => $ArtistAlbumHotAlbumsArtistToJson(this);

	ArtistAlbumHotAlbumsArtist copyWith({int? img1v1Id, int? topicPerson, bool? followed, List<dynamic>? alias, int? picId, String? briefDesc, int? musicSize, int? albumSize, String? picUrl, String? img1v1Url, String? trans, String? name, int? id, String? picidStr, String? img1v1idStr}) {
		return ArtistAlbumHotAlbumsArtist()
			..img1v1Id= img1v1Id ?? this.img1v1Id
			..topicPerson= topicPerson ?? this.topicPerson
			..followed= followed ?? this.followed
			..alias= alias ?? this.alias
			..picId= picId ?? this.picId
			..briefDesc= briefDesc ?? this.briefDesc
			..musicSize= musicSize ?? this.musicSize
			..albumSize= albumSize ?? this.albumSize
			..picUrl= picUrl ?? this.picUrl
			..img1v1Url= img1v1Url ?? this.img1v1Url
			..trans= trans ?? this.trans
			..name= name ?? this.name
			..id= id ?? this.id
			..picidStr= picidStr ?? this.picidStr
			..img1v1idStr= img1v1idStr ?? this.img1v1idStr;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}