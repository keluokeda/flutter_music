import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/artist_mv_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class ArtistMvEntity {
	List<ArtistMvMvs>? mvs;
	int? time;
	bool? hasMore;
	int? code;

	ArtistMvEntity();

	factory ArtistMvEntity.fromJson(Map<String, dynamic> json) => $ArtistMvEntityFromJson(json);

	Map<String, dynamic> toJson() => $ArtistMvEntityToJson(this);

	ArtistMvEntity copyWith({List<ArtistMvMvs>? mvs, int? time, bool? hasMore, int? code}) {
		return ArtistMvEntity()
			..mvs= mvs ?? this.mvs
			..time= time ?? this.time
			..hasMore= hasMore ?? this.hasMore
			..code= code ?? this.code;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ArtistMvMvs {
	int? id;
	String? name;
	int? status;
	ArtistMvMvsArtist? artist;
	String? imgurl;
	String? artistName;
	String? imgurl16v9;
	int? duration;
	int? playCount;
	String? publishTime;
	bool? subed;

	ArtistMvMvs();

	factory ArtistMvMvs.fromJson(Map<String, dynamic> json) => $ArtistMvMvsFromJson(json);

	Map<String, dynamic> toJson() => $ArtistMvMvsToJson(this);

	ArtistMvMvs copyWith({int? id, String? name, int? status, ArtistMvMvsArtist? artist, String? imgurl, String? artistName, String? imgurl16v9, int? duration, int? playCount, String? publishTime, bool? subed}) {
		return ArtistMvMvs()
			..id= id ?? this.id
			..name= name ?? this.name
			..status= status ?? this.status
			..artist= artist ?? this.artist
			..imgurl= imgurl ?? this.imgurl
			..artistName= artistName ?? this.artistName
			..imgurl16v9= imgurl16v9 ?? this.imgurl16v9
			..duration= duration ?? this.duration
			..playCount= playCount ?? this.playCount
			..publishTime= publishTime ?? this.publishTime
			..subed= subed ?? this.subed;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ArtistMvMvsArtist {
	int? img1v1Id;
	int? topicPerson;
	int? albumSize;
	String? trans;
	int? musicSize;
	String? briefDesc;
	String? picUrl;
	String? img1v1Url;
	List<dynamic>? alias;
	int? picId;
	String? name;
	int? id;
	@JSONField(name: "img1v1Id_str")
	String? img1v1idStr;

	ArtistMvMvsArtist();

	factory ArtistMvMvsArtist.fromJson(Map<String, dynamic> json) => $ArtistMvMvsArtistFromJson(json);

	Map<String, dynamic> toJson() => $ArtistMvMvsArtistToJson(this);

	ArtistMvMvsArtist copyWith({int? img1v1Id, int? topicPerson, int? albumSize, String? trans, int? musicSize, String? briefDesc, String? picUrl, String? img1v1Url, List<dynamic>? alias, int? picId, String? name, int? id, String? img1v1idStr}) {
		return ArtistMvMvsArtist()
			..img1v1Id= img1v1Id ?? this.img1v1Id
			..topicPerson= topicPerson ?? this.topicPerson
			..albumSize= albumSize ?? this.albumSize
			..trans= trans ?? this.trans
			..musicSize= musicSize ?? this.musicSize
			..briefDesc= briefDesc ?? this.briefDesc
			..picUrl= picUrl ?? this.picUrl
			..img1v1Url= img1v1Url ?? this.img1v1Url
			..alias= alias ?? this.alias
			..picId= picId ?? this.picId
			..name= name ?? this.name
			..id= id ?? this.id
			..img1v1idStr= img1v1idStr ?? this.img1v1idStr;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}