import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/song_detail_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class SongDetailEntity {
	List<SongDetailSongs>? songs;
	List<SongDetailPrivileges>? privileges;
	int? code;

	SongDetailEntity();

	factory SongDetailEntity.fromJson(Map<String, dynamic> json) => $SongDetailEntityFromJson(json);

	Map<String, dynamic> toJson() => $SongDetailEntityToJson(this);

	SongDetailEntity copyWith({List<SongDetailSongs>? songs, List<SongDetailPrivileges>? privileges, int? code}) {
		return SongDetailEntity()
			..songs= songs ?? this.songs
			..privileges= privileges ?? this.privileges
			..code= code ?? this.code;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongDetailSongs {
	String? name;
	int? id;
	int? pst;
	int? t;
	List<SongDetailSongsAr>? ar;
	List<dynamic>? alia;
	int? pop;
	int? st;
	String? rt;
	int? fee;
	int? v;
	dynamic crbt;
	String? cf;
	SongDetailSongsAl? al;
	int? dt;
	SongDetailSongsH? h;
	SongDetailSongsM? m;
	SongDetailSongsL? l;
	SongDetailSongsSq? sq;
	dynamic hr;
	dynamic a;
	String? cd;
	int? no;
	dynamic rtUrl;
	int? ftype;
	List<dynamic>? rtUrls;
	int? djId;
	int? copyright;
	@JSONField(name: "s_id")
	int? sId;
	int? mark;
	int? originCoverType;
	dynamic originSongSimpleData;
	dynamic tagPicList;
	bool? resourceState;
	int? version;
	dynamic songJumpInfo;
	dynamic entertainmentTags;
	dynamic awardTags;
	int? single;
	dynamic noCopyrightRcmd;
	int? cp;
	int? rtype;
	dynamic rurl;
	int? mst;
	int? mv;
	int? publishTime;

	SongDetailSongs();

	factory SongDetailSongs.fromJson(Map<String, dynamic> json) => $SongDetailSongsFromJson(json);

	Map<String, dynamic> toJson() => $SongDetailSongsToJson(this);

	SongDetailSongs copyWith({String? name, int? id, int? pst, int? t, List<SongDetailSongsAr>? ar, List<dynamic>? alia, int? pop, int? st, String? rt, int? fee, int? v, dynamic crbt, String? cf, SongDetailSongsAl? al, int? dt, SongDetailSongsH? h, SongDetailSongsM? m, SongDetailSongsL? l, SongDetailSongsSq? sq, dynamic hr, dynamic a, String? cd, int? no, dynamic rtUrl, int? ftype, List<dynamic>? rtUrls, int? djId, int? copyright, int? sId, int? mark, int? originCoverType, dynamic originSongSimpleData, dynamic tagPicList, bool? resourceState, int? version, dynamic songJumpInfo, dynamic entertainmentTags, dynamic awardTags, int? single, dynamic noCopyrightRcmd, int? cp, int? rtype, dynamic rurl, int? mst, int? mv, int? publishTime}) {
		return SongDetailSongs()
			..name= name ?? this.name
			..id= id ?? this.id
			..pst= pst ?? this.pst
			..t= t ?? this.t
			..ar= ar ?? this.ar
			..alia= alia ?? this.alia
			..pop= pop ?? this.pop
			..st= st ?? this.st
			..rt= rt ?? this.rt
			..fee= fee ?? this.fee
			..v= v ?? this.v
			..crbt= crbt ?? this.crbt
			..cf= cf ?? this.cf
			..al= al ?? this.al
			..dt= dt ?? this.dt
			..h= h ?? this.h
			..m= m ?? this.m
			..l= l ?? this.l
			..sq= sq ?? this.sq
			..hr= hr ?? this.hr
			..a= a ?? this.a
			..cd= cd ?? this.cd
			..no= no ?? this.no
			..rtUrl= rtUrl ?? this.rtUrl
			..ftype= ftype ?? this.ftype
			..rtUrls= rtUrls ?? this.rtUrls
			..djId= djId ?? this.djId
			..copyright= copyright ?? this.copyright
			..sId= sId ?? this.sId
			..mark= mark ?? this.mark
			..originCoverType= originCoverType ?? this.originCoverType
			..originSongSimpleData= originSongSimpleData ?? this.originSongSimpleData
			..tagPicList= tagPicList ?? this.tagPicList
			..resourceState= resourceState ?? this.resourceState
			..version= version ?? this.version
			..songJumpInfo= songJumpInfo ?? this.songJumpInfo
			..entertainmentTags= entertainmentTags ?? this.entertainmentTags
			..awardTags= awardTags ?? this.awardTags
			..single= single ?? this.single
			..noCopyrightRcmd= noCopyrightRcmd ?? this.noCopyrightRcmd
			..cp= cp ?? this.cp
			..rtype= rtype ?? this.rtype
			..rurl= rurl ?? this.rurl
			..mst= mst ?? this.mst
			..mv= mv ?? this.mv
			..publishTime= publishTime ?? this.publishTime;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongDetailSongsAr {
	int? id;
	String? name;
	List<dynamic>? tns;
	List<dynamic>? alias;

	SongDetailSongsAr();

	factory SongDetailSongsAr.fromJson(Map<String, dynamic> json) => $SongDetailSongsArFromJson(json);

	Map<String, dynamic> toJson() => $SongDetailSongsArToJson(this);

	SongDetailSongsAr copyWith({int? id, String? name, List<dynamic>? tns, List<dynamic>? alias}) {
		return SongDetailSongsAr()
			..id= id ?? this.id
			..name= name ?? this.name
			..tns= tns ?? this.tns
			..alias= alias ?? this.alias;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongDetailSongsAl {
	int? id;
	String? name;
	String? picUrl;
	List<dynamic>? tns;
	@JSONField(name: "pic_str")
	String? picStr;
	int? pic;

	SongDetailSongsAl();

	factory SongDetailSongsAl.fromJson(Map<String, dynamic> json) => $SongDetailSongsAlFromJson(json);

	Map<String, dynamic> toJson() => $SongDetailSongsAlToJson(this);

	SongDetailSongsAl copyWith({int? id, String? name, String? picUrl, List<dynamic>? tns, String? picStr, int? pic}) {
		return SongDetailSongsAl()
			..id= id ?? this.id
			..name= name ?? this.name
			..picUrl= picUrl ?? this.picUrl
			..tns= tns ?? this.tns
			..picStr= picStr ?? this.picStr
			..pic= pic ?? this.pic;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongDetailSongsH {
	int? br;
	int? fid;
	int? size;
	int? vd;
	int? sr;

	SongDetailSongsH();

	factory SongDetailSongsH.fromJson(Map<String, dynamic> json) => $SongDetailSongsHFromJson(json);

	Map<String, dynamic> toJson() => $SongDetailSongsHToJson(this);

	SongDetailSongsH copyWith({int? br, int? fid, int? size, int? vd, int? sr}) {
		return SongDetailSongsH()
			..br= br ?? this.br
			..fid= fid ?? this.fid
			..size= size ?? this.size
			..vd= vd ?? this.vd
			..sr= sr ?? this.sr;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongDetailSongsM {
	int? br;
	int? fid;
	int? size;
	int? vd;
	int? sr;

	SongDetailSongsM();

	factory SongDetailSongsM.fromJson(Map<String, dynamic> json) => $SongDetailSongsMFromJson(json);

	Map<String, dynamic> toJson() => $SongDetailSongsMToJson(this);

	SongDetailSongsM copyWith({int? br, int? fid, int? size, int? vd, int? sr}) {
		return SongDetailSongsM()
			..br= br ?? this.br
			..fid= fid ?? this.fid
			..size= size ?? this.size
			..vd= vd ?? this.vd
			..sr= sr ?? this.sr;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongDetailSongsL {
	int? br;
	int? fid;
	int? size;
	int? vd;
	int? sr;

	SongDetailSongsL();

	factory SongDetailSongsL.fromJson(Map<String, dynamic> json) => $SongDetailSongsLFromJson(json);

	Map<String, dynamic> toJson() => $SongDetailSongsLToJson(this);

	SongDetailSongsL copyWith({int? br, int? fid, int? size, int? vd, int? sr}) {
		return SongDetailSongsL()
			..br= br ?? this.br
			..fid= fid ?? this.fid
			..size= size ?? this.size
			..vd= vd ?? this.vd
			..sr= sr ?? this.sr;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongDetailSongsSq {
	int? br;
	int? fid;
	int? size;
	int? vd;
	int? sr;

	SongDetailSongsSq();

	factory SongDetailSongsSq.fromJson(Map<String, dynamic> json) => $SongDetailSongsSqFromJson(json);

	Map<String, dynamic> toJson() => $SongDetailSongsSqToJson(this);

	SongDetailSongsSq copyWith({int? br, int? fid, int? size, int? vd, int? sr}) {
		return SongDetailSongsSq()
			..br= br ?? this.br
			..fid= fid ?? this.fid
			..size= size ?? this.size
			..vd= vd ?? this.vd
			..sr= sr ?? this.sr;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongDetailPrivileges {
	int? id;
	int? fee;
	int? payed;
	int? st;
	int? pl;
	int? dl;
	int? sp;
	int? cp;
	int? subp;
	bool? cs;
	int? maxbr;
	int? fl;
	bool? toast;
	int? flag;
	bool? preSell;
	int? playMaxbr;
	int? downloadMaxbr;
	String? maxBrLevel;
	String? playMaxBrLevel;
	String? downloadMaxBrLevel;
	String? plLevel;
	String? dlLevel;
	String? flLevel;
	dynamic rscl;
	SongDetailPrivilegesFreeTrialPrivilege? freeTrialPrivilege;
	List<SongDetailPrivilegesChargeInfoList>? chargeInfoList;

	SongDetailPrivileges();

	factory SongDetailPrivileges.fromJson(Map<String, dynamic> json) => $SongDetailPrivilegesFromJson(json);

	Map<String, dynamic> toJson() => $SongDetailPrivilegesToJson(this);

	SongDetailPrivileges copyWith({int? id, int? fee, int? payed, int? st, int? pl, int? dl, int? sp, int? cp, int? subp, bool? cs, int? maxbr, int? fl, bool? toast, int? flag, bool? preSell, int? playMaxbr, int? downloadMaxbr, String? maxBrLevel, String? playMaxBrLevel, String? downloadMaxBrLevel, String? plLevel, String? dlLevel, String? flLevel, dynamic rscl, SongDetailPrivilegesFreeTrialPrivilege? freeTrialPrivilege, List<SongDetailPrivilegesChargeInfoList>? chargeInfoList}) {
		return SongDetailPrivileges()
			..id= id ?? this.id
			..fee= fee ?? this.fee
			..payed= payed ?? this.payed
			..st= st ?? this.st
			..pl= pl ?? this.pl
			..dl= dl ?? this.dl
			..sp= sp ?? this.sp
			..cp= cp ?? this.cp
			..subp= subp ?? this.subp
			..cs= cs ?? this.cs
			..maxbr= maxbr ?? this.maxbr
			..fl= fl ?? this.fl
			..toast= toast ?? this.toast
			..flag= flag ?? this.flag
			..preSell= preSell ?? this.preSell
			..playMaxbr= playMaxbr ?? this.playMaxbr
			..downloadMaxbr= downloadMaxbr ?? this.downloadMaxbr
			..maxBrLevel= maxBrLevel ?? this.maxBrLevel
			..playMaxBrLevel= playMaxBrLevel ?? this.playMaxBrLevel
			..downloadMaxBrLevel= downloadMaxBrLevel ?? this.downloadMaxBrLevel
			..plLevel= plLevel ?? this.plLevel
			..dlLevel= dlLevel ?? this.dlLevel
			..flLevel= flLevel ?? this.flLevel
			..rscl= rscl ?? this.rscl
			..freeTrialPrivilege= freeTrialPrivilege ?? this.freeTrialPrivilege
			..chargeInfoList= chargeInfoList ?? this.chargeInfoList;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongDetailPrivilegesFreeTrialPrivilege {
	bool? resConsumable;
	bool? userConsumable;
	dynamic listenType;

	SongDetailPrivilegesFreeTrialPrivilege();

	factory SongDetailPrivilegesFreeTrialPrivilege.fromJson(Map<String, dynamic> json) => $SongDetailPrivilegesFreeTrialPrivilegeFromJson(json);

	Map<String, dynamic> toJson() => $SongDetailPrivilegesFreeTrialPrivilegeToJson(this);

	SongDetailPrivilegesFreeTrialPrivilege copyWith({bool? resConsumable, bool? userConsumable, dynamic listenType}) {
		return SongDetailPrivilegesFreeTrialPrivilege()
			..resConsumable= resConsumable ?? this.resConsumable
			..userConsumable= userConsumable ?? this.userConsumable
			..listenType= listenType ?? this.listenType;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongDetailPrivilegesChargeInfoList {
	int? rate;
	dynamic chargeUrl;
	dynamic chargeMessage;
	int? chargeType;

	SongDetailPrivilegesChargeInfoList();

	factory SongDetailPrivilegesChargeInfoList.fromJson(Map<String, dynamic> json) => $SongDetailPrivilegesChargeInfoListFromJson(json);

	Map<String, dynamic> toJson() => $SongDetailPrivilegesChargeInfoListToJson(this);

	SongDetailPrivilegesChargeInfoList copyWith({int? rate, dynamic chargeUrl, dynamic chargeMessage, int? chargeType}) {
		return SongDetailPrivilegesChargeInfoList()
			..rate= rate ?? this.rate
			..chargeUrl= chargeUrl ?? this.chargeUrl
			..chargeMessage= chargeMessage ?? this.chargeMessage
			..chargeType= chargeType ?? this.chargeType;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}