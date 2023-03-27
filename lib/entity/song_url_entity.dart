import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/song_url_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class SongUrlEntity {
	List<SongUrlData>? data;
	int? code;

	SongUrlEntity();

	factory SongUrlEntity.fromJson(Map<String, dynamic> json) => $SongUrlEntityFromJson(json);

	Map<String, dynamic> toJson() => $SongUrlEntityToJson(this);

	SongUrlEntity copyWith({List<SongUrlData>? data, int? code}) {
		return SongUrlEntity()
			..data= data ?? this.data
			..code= code ?? this.code;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongUrlData {
	int? id;
	String? url;
	int? br;
	int? size;
	String? md5;
	int? code;
	int? expi;
	String? type;
	double? gain;
	int? peak;
	int? fee;
	dynamic uf;
	int? payed;
	int? flag;
	bool? canExtend;
	dynamic freeTrialInfo;
	String? level;
	String? encodeType;
	SongUrlDataFreeTrialPrivilege? freeTrialPrivilege;
	SongUrlDataFreeTimeTrialPrivilege? freeTimeTrialPrivilege;
	int? urlSource;
	int? rightSource;
	dynamic podcastCtrp;
	dynamic effectTypes;
	int? time;

	SongUrlData();

	factory SongUrlData.fromJson(Map<String, dynamic> json) => $SongUrlDataFromJson(json);

	Map<String, dynamic> toJson() => $SongUrlDataToJson(this);

	SongUrlData copyWith({int? id, String? url, int? br, int? size, String? md5, int? code, int? expi, String? type, double? gain, int? peak, int? fee, dynamic uf, int? payed, int? flag, bool? canExtend, dynamic freeTrialInfo, String? level, String? encodeType, SongUrlDataFreeTrialPrivilege? freeTrialPrivilege, SongUrlDataFreeTimeTrialPrivilege? freeTimeTrialPrivilege, int? urlSource, int? rightSource, dynamic podcastCtrp, dynamic effectTypes, int? time}) {
		return SongUrlData()
			..id= id ?? this.id
			..url= url ?? this.url
			..br= br ?? this.br
			..size= size ?? this.size
			..md5= md5 ?? this.md5
			..code= code ?? this.code
			..expi= expi ?? this.expi
			..type= type ?? this.type
			..gain= gain ?? this.gain
			..peak= peak ?? this.peak
			..fee= fee ?? this.fee
			..uf= uf ?? this.uf
			..payed= payed ?? this.payed
			..flag= flag ?? this.flag
			..canExtend= canExtend ?? this.canExtend
			..freeTrialInfo= freeTrialInfo ?? this.freeTrialInfo
			..level= level ?? this.level
			..encodeType= encodeType ?? this.encodeType
			..freeTrialPrivilege= freeTrialPrivilege ?? this.freeTrialPrivilege
			..freeTimeTrialPrivilege= freeTimeTrialPrivilege ?? this.freeTimeTrialPrivilege
			..urlSource= urlSource ?? this.urlSource
			..rightSource= rightSource ?? this.rightSource
			..podcastCtrp= podcastCtrp ?? this.podcastCtrp
			..effectTypes= effectTypes ?? this.effectTypes
			..time= time ?? this.time;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongUrlDataFreeTrialPrivilege {
	bool? resConsumable;
	bool? userConsumable;
	dynamic listenType;
	dynamic cannotListenReason;

	SongUrlDataFreeTrialPrivilege();

	factory SongUrlDataFreeTrialPrivilege.fromJson(Map<String, dynamic> json) => $SongUrlDataFreeTrialPrivilegeFromJson(json);

	Map<String, dynamic> toJson() => $SongUrlDataFreeTrialPrivilegeToJson(this);

	SongUrlDataFreeTrialPrivilege copyWith({bool? resConsumable, bool? userConsumable, dynamic listenType, dynamic cannotListenReason}) {
		return SongUrlDataFreeTrialPrivilege()
			..resConsumable= resConsumable ?? this.resConsumable
			..userConsumable= userConsumable ?? this.userConsumable
			..listenType= listenType ?? this.listenType
			..cannotListenReason= cannotListenReason ?? this.cannotListenReason;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongUrlDataFreeTimeTrialPrivilege {
	bool? resConsumable;
	bool? userConsumable;
	int? type;
	int? remainTime;

	SongUrlDataFreeTimeTrialPrivilege();

	factory SongUrlDataFreeTimeTrialPrivilege.fromJson(Map<String, dynamic> json) => $SongUrlDataFreeTimeTrialPrivilegeFromJson(json);

	Map<String, dynamic> toJson() => $SongUrlDataFreeTimeTrialPrivilegeToJson(this);

	SongUrlDataFreeTimeTrialPrivilege copyWith({bool? resConsumable, bool? userConsumable, int? type, int? remainTime}) {
		return SongUrlDataFreeTimeTrialPrivilege()
			..resConsumable= resConsumable ?? this.resConsumable
			..userConsumable= userConsumable ?? this.userConsumable
			..type= type ?? this.type
			..remainTime= remainTime ?? this.remainTime;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}