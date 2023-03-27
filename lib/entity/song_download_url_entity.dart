import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/song_download_url_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class SongDownloadUrlEntity {
	SongDownloadUrlData? data;
	int? code;

	SongDownloadUrlEntity();

	factory SongDownloadUrlEntity.fromJson(Map<String, dynamic> json) => $SongDownloadUrlEntityFromJson(json);

	Map<String, dynamic> toJson() => $SongDownloadUrlEntityToJson(this);

	SongDownloadUrlEntity copyWith({SongDownloadUrlData? data, int? code}) {
		return SongDownloadUrlEntity()
			..data= data ?? this.data
			..code= code ?? this.code;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongDownloadUrlData {
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
	SongDownloadUrlDataFreeTrialPrivilege? freeTrialPrivilege;
	SongDownloadUrlDataFreeTimeTrialPrivilege? freeTimeTrialPrivilege;
	int? urlSource;
	int? rightSource;
	dynamic podcastCtrp;
	dynamic effectTypes;
	int? time;

	SongDownloadUrlData();

	factory SongDownloadUrlData.fromJson(Map<String, dynamic> json) => $SongDownloadUrlDataFromJson(json);

	Map<String, dynamic> toJson() => $SongDownloadUrlDataToJson(this);

	SongDownloadUrlData copyWith({int? id, String? url, int? br, int? size, String? md5, int? code, int? expi, String? type, double? gain, int? peak, int? fee, dynamic uf, int? payed, int? flag, bool? canExtend, dynamic freeTrialInfo, String? level, String? encodeType, SongDownloadUrlDataFreeTrialPrivilege? freeTrialPrivilege, SongDownloadUrlDataFreeTimeTrialPrivilege? freeTimeTrialPrivilege, int? urlSource, int? rightSource, dynamic podcastCtrp, dynamic effectTypes, int? time}) {
		return SongDownloadUrlData()
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
class SongDownloadUrlDataFreeTrialPrivilege {
	bool? resConsumable;
	bool? userConsumable;
	dynamic listenType;
	dynamic cannotListenReason;

	SongDownloadUrlDataFreeTrialPrivilege();

	factory SongDownloadUrlDataFreeTrialPrivilege.fromJson(Map<String, dynamic> json) => $SongDownloadUrlDataFreeTrialPrivilegeFromJson(json);

	Map<String, dynamic> toJson() => $SongDownloadUrlDataFreeTrialPrivilegeToJson(this);

	SongDownloadUrlDataFreeTrialPrivilege copyWith({bool? resConsumable, bool? userConsumable, dynamic listenType, dynamic cannotListenReason}) {
		return SongDownloadUrlDataFreeTrialPrivilege()
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
class SongDownloadUrlDataFreeTimeTrialPrivilege {
	bool? resConsumable;
	bool? userConsumable;
	int? type;
	int? remainTime;

	SongDownloadUrlDataFreeTimeTrialPrivilege();

	factory SongDownloadUrlDataFreeTimeTrialPrivilege.fromJson(Map<String, dynamic> json) => $SongDownloadUrlDataFreeTimeTrialPrivilegeFromJson(json);

	Map<String, dynamic> toJson() => $SongDownloadUrlDataFreeTimeTrialPrivilegeToJson(this);

	SongDownloadUrlDataFreeTimeTrialPrivilege copyWith({bool? resConsumable, bool? userConsumable, int? type, int? remainTime}) {
		return SongDownloadUrlDataFreeTimeTrialPrivilege()
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