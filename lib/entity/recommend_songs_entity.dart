import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/recommend_songs_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class RecommendSongsEntity {
	int? code;
	RecommendSongsData? data;

	RecommendSongsEntity();

	factory RecommendSongsEntity.fromJson(Map<String, dynamic> json) => $RecommendSongsEntityFromJson(json);

	Map<String, dynamic> toJson() => $RecommendSongsEntityToJson(this);

	RecommendSongsEntity copyWith({int? code, RecommendSongsData? data}) {
		return RecommendSongsEntity()
			..code= code ?? this.code
			..data= data ?? this.data;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecommendSongsData {
	List<RecommendSongsDataDailySongs>? dailySongs;
	List<dynamic>? orderSongs;
	List<RecommendSongsDataRecommendReasons>? recommendReasons;
	dynamic mvResourceInfos;

	RecommendSongsData();

	factory RecommendSongsData.fromJson(Map<String, dynamic> json) => $RecommendSongsDataFromJson(json);

	Map<String, dynamic> toJson() => $RecommendSongsDataToJson(this);

	RecommendSongsData copyWith({List<RecommendSongsDataDailySongs>? dailySongs, List<dynamic>? orderSongs, List<RecommendSongsDataRecommendReasons>? recommendReasons, dynamic mvResourceInfos}) {
		return RecommendSongsData()
			..dailySongs= dailySongs ?? this.dailySongs
			..orderSongs= orderSongs ?? this.orderSongs
			..recommendReasons= recommendReasons ?? this.recommendReasons
			..mvResourceInfos= mvResourceInfos ?? this.mvResourceInfos;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecommendSongsDataDailySongs {
	String? name;
	int? id;
	int? pst;
	int? t;
	List<RecommendSongsDataDailySongsAr>? ar;
	List<String>? alia;
	int? pop;
	int? st;
	String? rt;
	int? fee;
	int? v;
	dynamic crbt;
	String? cf;
	RecommendSongsDataDailySongsAl? al;
	int? dt;
	RecommendSongsDataDailySongsH? h;
	RecommendSongsDataDailySongsM? m;
	RecommendSongsDataDailySongsL? l;
	RecommendSongsDataDailySongsSq? sq;
	RecommendSongsDataDailySongsHr? hr;
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
	int? single;
	dynamic noCopyrightRcmd;
	int? rtype;
	dynamic rurl;
	int? mst;
	int? cp;
	int? mv;
	int? publishTime;
	String? reason;
	List<String>? tns;
	String? recommendReason;
	RecommendSongsDataDailySongsPrivilege? privilege;
	String? alg;
	@JSONField(name: "s_ctrp")
	String? sCtrp;

	RecommendSongsDataDailySongs();

	factory RecommendSongsDataDailySongs.fromJson(Map<String, dynamic> json) => $RecommendSongsDataDailySongsFromJson(json);

	Map<String, dynamic> toJson() => $RecommendSongsDataDailySongsToJson(this);

	RecommendSongsDataDailySongs copyWith({String? name, int? id, int? pst, int? t, List<RecommendSongsDataDailySongsAr>? ar, List<String>? alia, int? pop, int? st, String? rt, int? fee, int? v, dynamic crbt, String? cf, RecommendSongsDataDailySongsAl? al, int? dt, RecommendSongsDataDailySongsH? h, RecommendSongsDataDailySongsM? m, RecommendSongsDataDailySongsL? l, RecommendSongsDataDailySongsSq? sq, RecommendSongsDataDailySongsHr? hr, dynamic a, String? cd, int? no, dynamic rtUrl, int? ftype, List<dynamic>? rtUrls, int? djId, int? copyright, int? sId, int? mark, int? originCoverType, dynamic originSongSimpleData, dynamic tagPicList, bool? resourceState, int? version, dynamic songJumpInfo, dynamic entertainmentTags, int? single, dynamic noCopyrightRcmd, int? rtype, dynamic rurl, int? mst, int? cp, int? mv, int? publishTime, String? reason, List<String>? tns, String? recommendReason, RecommendSongsDataDailySongsPrivilege? privilege, String? alg, String? sCtrp}) {
		return RecommendSongsDataDailySongs()
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
			..single= single ?? this.single
			..noCopyrightRcmd= noCopyrightRcmd ?? this.noCopyrightRcmd
			..rtype= rtype ?? this.rtype
			..rurl= rurl ?? this.rurl
			..mst= mst ?? this.mst
			..cp= cp ?? this.cp
			..mv= mv ?? this.mv
			..publishTime= publishTime ?? this.publishTime
			..reason= reason ?? this.reason
			..tns= tns ?? this.tns
			..recommendReason= recommendReason ?? this.recommendReason
			..privilege= privilege ?? this.privilege
			..alg= alg ?? this.alg
			..sCtrp= sCtrp ?? this.sCtrp;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecommendSongsDataDailySongsAr {
	int? id;
	String? name;
	List<dynamic>? tns;
	List<dynamic>? alias;

	RecommendSongsDataDailySongsAr();

	factory RecommendSongsDataDailySongsAr.fromJson(Map<String, dynamic> json) => $RecommendSongsDataDailySongsArFromJson(json);

	Map<String, dynamic> toJson() => $RecommendSongsDataDailySongsArToJson(this);

	RecommendSongsDataDailySongsAr copyWith({int? id, String? name, List<dynamic>? tns, List<dynamic>? alias}) {
		return RecommendSongsDataDailySongsAr()
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
class RecommendSongsDataDailySongsAl {
	int? id;
	String? name;
	String? picUrl;
	List<dynamic>? tns;
	int? pic;

	RecommendSongsDataDailySongsAl();

	factory RecommendSongsDataDailySongsAl.fromJson(Map<String, dynamic> json) => $RecommendSongsDataDailySongsAlFromJson(json);

	Map<String, dynamic> toJson() => $RecommendSongsDataDailySongsAlToJson(this);

	RecommendSongsDataDailySongsAl copyWith({int? id, String? name, String? picUrl, List<dynamic>? tns, int? pic}) {
		return RecommendSongsDataDailySongsAl()
			..id= id ?? this.id
			..name= name ?? this.name
			..picUrl= picUrl ?? this.picUrl
			..tns= tns ?? this.tns
			..pic= pic ?? this.pic;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecommendSongsDataDailySongsH {
	int? br;
	int? fid;
	int? size;
	int? vd;
	int? sr;

	RecommendSongsDataDailySongsH();

	factory RecommendSongsDataDailySongsH.fromJson(Map<String, dynamic> json) => $RecommendSongsDataDailySongsHFromJson(json);

	Map<String, dynamic> toJson() => $RecommendSongsDataDailySongsHToJson(this);

	RecommendSongsDataDailySongsH copyWith({int? br, int? fid, int? size, int? vd, int? sr}) {
		return RecommendSongsDataDailySongsH()
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
class RecommendSongsDataDailySongsM {
	int? br;
	int? fid;
	int? size;
	int? vd;
	int? sr;

	RecommendSongsDataDailySongsM();

	factory RecommendSongsDataDailySongsM.fromJson(Map<String, dynamic> json) => $RecommendSongsDataDailySongsMFromJson(json);

	Map<String, dynamic> toJson() => $RecommendSongsDataDailySongsMToJson(this);

	RecommendSongsDataDailySongsM copyWith({int? br, int? fid, int? size, int? vd, int? sr}) {
		return RecommendSongsDataDailySongsM()
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
class RecommendSongsDataDailySongsL {
	int? br;
	int? fid;
	int? size;
	int? vd;
	int? sr;

	RecommendSongsDataDailySongsL();

	factory RecommendSongsDataDailySongsL.fromJson(Map<String, dynamic> json) => $RecommendSongsDataDailySongsLFromJson(json);

	Map<String, dynamic> toJson() => $RecommendSongsDataDailySongsLToJson(this);

	RecommendSongsDataDailySongsL copyWith({int? br, int? fid, int? size, int? vd, int? sr}) {
		return RecommendSongsDataDailySongsL()
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
class RecommendSongsDataDailySongsSq {
	int? br;
	int? fid;
	int? size;
	int? vd;
	int? sr;

	RecommendSongsDataDailySongsSq();

	factory RecommendSongsDataDailySongsSq.fromJson(Map<String, dynamic> json) => $RecommendSongsDataDailySongsSqFromJson(json);

	Map<String, dynamic> toJson() => $RecommendSongsDataDailySongsSqToJson(this);

	RecommendSongsDataDailySongsSq copyWith({int? br, int? fid, int? size, int? vd, int? sr}) {
		return RecommendSongsDataDailySongsSq()
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
class RecommendSongsDataDailySongsHr {
	int? br;
	int? fid;
	int? size;
	int? vd;
	int? sr;

	RecommendSongsDataDailySongsHr();

	factory RecommendSongsDataDailySongsHr.fromJson(Map<String, dynamic> json) => $RecommendSongsDataDailySongsHrFromJson(json);

	Map<String, dynamic> toJson() => $RecommendSongsDataDailySongsHrToJson(this);

	RecommendSongsDataDailySongsHr copyWith({int? br, int? fid, int? size, int? vd, int? sr}) {
		return RecommendSongsDataDailySongsHr()
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
class RecommendSongsDataDailySongsPrivilege {
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
	RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege? freeTrialPrivilege;
	List<RecommendSongsDataDailySongsPrivilegeChargeInfoList>? chargeInfoList;

	RecommendSongsDataDailySongsPrivilege();

	factory RecommendSongsDataDailySongsPrivilege.fromJson(Map<String, dynamic> json) => $RecommendSongsDataDailySongsPrivilegeFromJson(json);

	Map<String, dynamic> toJson() => $RecommendSongsDataDailySongsPrivilegeToJson(this);

	RecommendSongsDataDailySongsPrivilege copyWith({int? id, int? fee, int? payed, int? st, int? pl, int? dl, int? sp, int? cp, int? subp, bool? cs, int? maxbr, int? fl, bool? toast, int? flag, bool? preSell, int? playMaxbr, int? downloadMaxbr, String? maxBrLevel, String? playMaxBrLevel, String? downloadMaxBrLevel, String? plLevel, String? dlLevel, String? flLevel, dynamic rscl, RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege? freeTrialPrivilege, List<RecommendSongsDataDailySongsPrivilegeChargeInfoList>? chargeInfoList}) {
		return RecommendSongsDataDailySongsPrivilege()
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
class RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege {
	bool? resConsumable;
	bool? userConsumable;
	int? listenType;

	RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege();

	factory RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege.fromJson(Map<String, dynamic> json) => $RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilegeFromJson(json);

	Map<String, dynamic> toJson() => $RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilegeToJson(this);

	RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege copyWith({bool? resConsumable, bool? userConsumable, int? listenType}) {
		return RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege()
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
class RecommendSongsDataDailySongsPrivilegeChargeInfoList {
	int? rate;
	dynamic chargeUrl;
	dynamic chargeMessage;
	int? chargeType;

	RecommendSongsDataDailySongsPrivilegeChargeInfoList();

	factory RecommendSongsDataDailySongsPrivilegeChargeInfoList.fromJson(Map<String, dynamic> json) => $RecommendSongsDataDailySongsPrivilegeChargeInfoListFromJson(json);

	Map<String, dynamic> toJson() => $RecommendSongsDataDailySongsPrivilegeChargeInfoListToJson(this);

	RecommendSongsDataDailySongsPrivilegeChargeInfoList copyWith({int? rate, dynamic chargeUrl, dynamic chargeMessage, int? chargeType}) {
		return RecommendSongsDataDailySongsPrivilegeChargeInfoList()
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

@JsonSerializable()
class RecommendSongsDataRecommendReasons {
	int? songId;
	String? reason;
	String? reasonId;
	dynamic targetUrl;

	RecommendSongsDataRecommendReasons();

	factory RecommendSongsDataRecommendReasons.fromJson(Map<String, dynamic> json) => $RecommendSongsDataRecommendReasonsFromJson(json);

	Map<String, dynamic> toJson() => $RecommendSongsDataRecommendReasonsToJson(this);

	RecommendSongsDataRecommendReasons copyWith({int? songId, String? reason, String? reasonId, dynamic targetUrl}) {
		return RecommendSongsDataRecommendReasons()
			..songId= songId ?? this.songId
			..reason= reason ?? this.reason
			..reasonId= reasonId ?? this.reasonId
			..targetUrl= targetUrl ?? this.targetUrl;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}