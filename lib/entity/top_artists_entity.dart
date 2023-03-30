import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/top_artists_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class TopArtistsEntity {
	int? code;
	bool? more;
	List<TopArtistsArtists>? artists;

	TopArtistsEntity();

	factory TopArtistsEntity.fromJson(Map<String, dynamic> json) => $TopArtistsEntityFromJson(json);

	Map<String, dynamic> toJson() => $TopArtistsEntityToJson(this);

	TopArtistsEntity copyWith({int? code, bool? more, List<TopArtistsArtists>? artists}) {
		return TopArtistsEntity()
			..code= code ?? this.code
			..more= more ?? this.more
			..artists= artists ?? this.artists;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class TopArtistsArtists {
	String? name;
	int? id;
	int? picId;
	int? img1v1Id;
	String? briefDesc;
	String? picUrl;
	String? img1v1Url;
	int? albumSize;
	List<String>? alias;
	String? trans;
	int? musicSize;
	int? topicPerson;
	dynamic showPrivateMsg;
	dynamic isSubed;
	int? accountId;
	@JSONField(name: "picId_str")
	String? picidStr;
	@JSONField(name: "img1v1Id_str")
	String? img1v1idStr;
	List<String>? transNames;
	bool? followed;
	dynamic mvSize;
	dynamic publishTime;
	dynamic identifyTag;
	dynamic alg;
	int? fansCount;

	TopArtistsArtists();

	factory TopArtistsArtists.fromJson(Map<String, dynamic> json) => $TopArtistsArtistsFromJson(json);

	Map<String, dynamic> toJson() => $TopArtistsArtistsToJson(this);

	TopArtistsArtists copyWith({String? name, int? id, int? picId, int? img1v1Id, String? briefDesc, String? picUrl, String? img1v1Url, int? albumSize, List<String>? alias, String? trans, int? musicSize, int? topicPerson, dynamic showPrivateMsg, dynamic isSubed, int? accountId, String? picidStr, String? img1v1idStr, List<String>? transNames, bool? followed, dynamic mvSize, dynamic publishTime, dynamic identifyTag, dynamic alg, int? fansCount}) {
		return TopArtistsArtists()
			..name= name ?? this.name
			..id= id ?? this.id
			..picId= picId ?? this.picId
			..img1v1Id= img1v1Id ?? this.img1v1Id
			..briefDesc= briefDesc ?? this.briefDesc
			..picUrl= picUrl ?? this.picUrl
			..img1v1Url= img1v1Url ?? this.img1v1Url
			..albumSize= albumSize ?? this.albumSize
			..alias= alias ?? this.alias
			..trans= trans ?? this.trans
			..musicSize= musicSize ?? this.musicSize
			..topicPerson= topicPerson ?? this.topicPerson
			..showPrivateMsg= showPrivateMsg ?? this.showPrivateMsg
			..isSubed= isSubed ?? this.isSubed
			..accountId= accountId ?? this.accountId
			..picidStr= picidStr ?? this.picidStr
			..img1v1idStr= img1v1idStr ?? this.img1v1idStr
			..transNames= transNames ?? this.transNames
			..followed= followed ?? this.followed
			..mvSize= mvSize ?? this.mvSize
			..publishTime= publishTime ?? this.publishTime
			..identifyTag= identifyTag ?? this.identifyTag
			..alg= alg ?? this.alg
			..fansCount= fansCount ?? this.fansCount;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}