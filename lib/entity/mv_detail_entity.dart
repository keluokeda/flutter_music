import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/mv_detail_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class MvDetailEntity {
	String? loadingPic;
	String? bufferPic;
	String? loadingPicFS;
	String? bufferPicFS;
	bool? subed;
	MvDetailMp? mp;
	MvDetailData? data;
	int? code;

	MvDetailEntity();

	factory MvDetailEntity.fromJson(Map<String, dynamic> json) => $MvDetailEntityFromJson(json);

	Map<String, dynamic> toJson() => $MvDetailEntityToJson(this);

	MvDetailEntity copyWith({String? loadingPic, String? bufferPic, String? loadingPicFS, String? bufferPicFS, bool? subed, MvDetailMp? mp, MvDetailData? data, int? code}) {
		return MvDetailEntity()
			..loadingPic= loadingPic ?? this.loadingPic
			..bufferPic= bufferPic ?? this.bufferPic
			..loadingPicFS= loadingPicFS ?? this.loadingPicFS
			..bufferPicFS= bufferPicFS ?? this.bufferPicFS
			..subed= subed ?? this.subed
			..mp= mp ?? this.mp
			..data= data ?? this.data
			..code= code ?? this.code;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MvDetailMp {
	int? id;
	int? fee;
	int? mvFee;
	int? payed;
	int? pl;
	int? dl;
	int? cp;
	int? sid;
	int? st;
	bool? normal;
	bool? unauthorized;
	dynamic msg;

	MvDetailMp();

	factory MvDetailMp.fromJson(Map<String, dynamic> json) => $MvDetailMpFromJson(json);

	Map<String, dynamic> toJson() => $MvDetailMpToJson(this);

	MvDetailMp copyWith({int? id, int? fee, int? mvFee, int? payed, int? pl, int? dl, int? cp, int? sid, int? st, bool? normal, bool? unauthorized, dynamic msg}) {
		return MvDetailMp()
			..id= id ?? this.id
			..fee= fee ?? this.fee
			..mvFee= mvFee ?? this.mvFee
			..payed= payed ?? this.payed
			..pl= pl ?? this.pl
			..dl= dl ?? this.dl
			..cp= cp ?? this.cp
			..sid= sid ?? this.sid
			..st= st ?? this.st
			..normal= normal ?? this.normal
			..unauthorized= unauthorized ?? this.unauthorized
			..msg= msg ?? this.msg;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MvDetailData {
	int? id;
	String? name;
	int? artistId;
	String? artistName;
	String? briefDesc;
	String? desc;
	String? cover;
	@JSONField(name: "coverId_str")
	String? coveridStr;
	int? coverId;
	int? playCount;
	int? subCount;
	int? shareCount;
	int? commentCount;
	int? duration;
	int? nType;
	String? publishTime;
	dynamic price;
	List<MvDetailDataBrs>? brs;
	List<MvDetailDataArtists>? artists;
	String? commentThreadId;
	List<dynamic>? videoGroup;

	MvDetailData();

	factory MvDetailData.fromJson(Map<String, dynamic> json) => $MvDetailDataFromJson(json);

	Map<String, dynamic> toJson() => $MvDetailDataToJson(this);

	MvDetailData copyWith({int? id, String? name, int? artistId, String? artistName, String? briefDesc, String? desc, String? cover, String? coveridStr, int? coverId, int? playCount, int? subCount, int? shareCount, int? commentCount, int? duration, int? nType, String? publishTime, dynamic price, List<MvDetailDataBrs>? brs, List<MvDetailDataArtists>? artists, String? commentThreadId, List<dynamic>? videoGroup}) {
		return MvDetailData()
			..id= id ?? this.id
			..name= name ?? this.name
			..artistId= artistId ?? this.artistId
			..artistName= artistName ?? this.artistName
			..briefDesc= briefDesc ?? this.briefDesc
			..desc= desc ?? this.desc
			..cover= cover ?? this.cover
			..coveridStr= coveridStr ?? this.coveridStr
			..coverId= coverId ?? this.coverId
			..playCount= playCount ?? this.playCount
			..subCount= subCount ?? this.subCount
			..shareCount= shareCount ?? this.shareCount
			..commentCount= commentCount ?? this.commentCount
			..duration= duration ?? this.duration
			..nType= nType ?? this.nType
			..publishTime= publishTime ?? this.publishTime
			..price= price ?? this.price
			..brs= brs ?? this.brs
			..artists= artists ?? this.artists
			..commentThreadId= commentThreadId ?? this.commentThreadId
			..videoGroup= videoGroup ?? this.videoGroup;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MvDetailDataBrs {
	int? size;
	int? br;
	int? point;

	MvDetailDataBrs();

	factory MvDetailDataBrs.fromJson(Map<String, dynamic> json) => $MvDetailDataBrsFromJson(json);

	Map<String, dynamic> toJson() => $MvDetailDataBrsToJson(this);

	MvDetailDataBrs copyWith({int? size, int? br, int? point}) {
		return MvDetailDataBrs()
			..size= size ?? this.size
			..br= br ?? this.br
			..point= point ?? this.point;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MvDetailDataArtists {
	int? id;
	String? name;
	String? img1v1Url;
	bool? followed;

	MvDetailDataArtists();

	factory MvDetailDataArtists.fromJson(Map<String, dynamic> json) => $MvDetailDataArtistsFromJson(json);

	Map<String, dynamic> toJson() => $MvDetailDataArtistsToJson(this);

	MvDetailDataArtists copyWith({int? id, String? name, String? img1v1Url, bool? followed}) {
		return MvDetailDataArtists()
			..id= id ?? this.id
			..name= name ?? this.name
			..img1v1Url= img1v1Url ?? this.img1v1Url
			..followed= followed ?? this.followed;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}