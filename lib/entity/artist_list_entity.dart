import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/artist_list_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class ArtistListEntity {
	List<ArtistListArtists>? artists;
	bool? more;
	int? code;

	ArtistListEntity();

	factory ArtistListEntity.fromJson(Map<String, dynamic> json) => $ArtistListEntityFromJson(json);

	Map<String, dynamic> toJson() => $ArtistListEntityToJson(this);

	ArtistListEntity copyWith({List<ArtistListArtists>? artists, bool? more, int? code}) {
		return ArtistListEntity()
			..artists= artists ?? this.artists
			..more= more ?? this.more
			..code= code ?? this.code;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ArtistListArtists {
	int? albumSize;
	List<String>? alias;
	String? briefDesc;
	int? fansCount;
	bool? followed;
	int? id;
	int? img1v1Id;
	@JSONField(name: "img1v1Id_str")
	String? img1v1idStr;
	String? img1v1Url;
	int? musicSize;
	String? name;
	int? picId;
	@JSONField(name: "picId_str")
	String? picidStr;
	String? picUrl;
	int? topicPerson;
	String? trans;
	int? accountId;

	ArtistListArtists();

	factory ArtistListArtists.fromJson(Map<String, dynamic> json) => $ArtistListArtistsFromJson(json);

	Map<String, dynamic> toJson() => $ArtistListArtistsToJson(this);

	ArtistListArtists copyWith({int? albumSize, List<String>? alias, String? briefDesc, int? fansCount, bool? followed, int? id, int? img1v1Id, String? img1v1idStr, String? img1v1Url, int? musicSize, String? name, int? picId, String? picidStr, String? picUrl, int? topicPerson, String? trans, int? accountId}) {
		return ArtistListArtists()
			..albumSize= albumSize ?? this.albumSize
			..alias= alias ?? this.alias
			..briefDesc= briefDesc ?? this.briefDesc
			..fansCount= fansCount ?? this.fansCount
			..followed= followed ?? this.followed
			..id= id ?? this.id
			..img1v1Id= img1v1Id ?? this.img1v1Id
			..img1v1idStr= img1v1idStr ?? this.img1v1idStr
			..img1v1Url= img1v1Url ?? this.img1v1Url
			..musicSize= musicSize ?? this.musicSize
			..name= name ?? this.name
			..picId= picId ?? this.picId
			..picidStr= picidStr ?? this.picidStr
			..picUrl= picUrl ?? this.picUrl
			..topicPerson= topicPerson ?? this.topicPerson
			..trans= trans ?? this.trans
			..accountId= accountId ?? this.accountId;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}