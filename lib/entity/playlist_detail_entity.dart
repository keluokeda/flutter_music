import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/playlist_detail_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class PlaylistDetailEntity {
	int? code;
	dynamic relatedVideos;
	PlaylistDetailPlaylist? playlist;
	dynamic urls;
	List<PlaylistDetailPrivileges>? privileges;
	dynamic sharedPrivilege;
	dynamic resEntrance;
	dynamic fromUsers;
	int? fromUserCount;
	dynamic songFromUsers;

	PlaylistDetailEntity();

	factory PlaylistDetailEntity.fromJson(Map<String, dynamic> json) => $PlaylistDetailEntityFromJson(json);

	Map<String, dynamic> toJson() => $PlaylistDetailEntityToJson(this);

	PlaylistDetailEntity copyWith({int? code, dynamic relatedVideos, PlaylistDetailPlaylist? playlist, dynamic urls, List<PlaylistDetailPrivileges>? privileges, dynamic sharedPrivilege, dynamic resEntrance, dynamic fromUsers, int? fromUserCount, dynamic songFromUsers}) {
		return PlaylistDetailEntity()
			..code= code ?? this.code
			..relatedVideos= relatedVideos ?? this.relatedVideos
			..playlist= playlist ?? this.playlist
			..urls= urls ?? this.urls
			..privileges= privileges ?? this.privileges
			..sharedPrivilege= sharedPrivilege ?? this.sharedPrivilege
			..resEntrance= resEntrance ?? this.resEntrance
			..fromUsers= fromUsers ?? this.fromUsers
			..fromUserCount= fromUserCount ?? this.fromUserCount
			..songFromUsers= songFromUsers ?? this.songFromUsers;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PlaylistDetailPlaylist {
	int? id;
	String? name;
	int? coverImgId;
	String? coverImgUrl;
	@JSONField(name: "coverImgId_str")
	String? coverimgidStr;
	int? adType;
	int? userId;
	int? createTime;
	int? status;
	bool? opRecommend;
	bool? highQuality;
	bool? newImported;
	int? updateTime;
	int? trackCount;
	int? specialType;
	int? privacy;
	int? trackUpdateTime;
	String? commentThreadId;
	int? playCount;
	int? trackNumberUpdateTime;
	int? subscribedCount;
	int? cloudTrackCount;
	bool? ordered;
	String? description;
	List<String>? tags;
	dynamic updateFrequency;
	int? backgroundCoverId;
	dynamic backgroundCoverUrl;
	int? titleImage;
	dynamic titleImageUrl;
	dynamic englishTitle;
	dynamic officialPlaylistType;
	bool? copied;
	dynamic relateResType;
	List<PlaylistDetailPlaylistSubscribers>? subscribers;
	bool? subscribed;
	PlaylistDetailPlaylistCreator? creator;
	List<PlaylistDetailPlaylistTracks>? tracks;
	dynamic videoIds;
	dynamic videos;
	List<PlaylistDetailPlaylistTrackIds>? trackIds;
	dynamic bannedTrackIds;
	dynamic mvResourceInfos;
	int? shareCount;
	int? commentCount;
	dynamic remixVideo;
	dynamic sharedUsers;
	dynamic historySharedUsers;
	String? gradeStatus;
	dynamic score;
	dynamic algTags;

	PlaylistDetailPlaylist();

	factory PlaylistDetailPlaylist.fromJson(Map<String, dynamic> json) => $PlaylistDetailPlaylistFromJson(json);

	Map<String, dynamic> toJson() => $PlaylistDetailPlaylistToJson(this);

	PlaylistDetailPlaylist copyWith({int? id, String? name, int? coverImgId, String? coverImgUrl, String? coverimgidStr, int? adType, int? userId, int? createTime, int? status, bool? opRecommend, bool? highQuality, bool? newImported, int? updateTime, int? trackCount, int? specialType, int? privacy, int? trackUpdateTime, String? commentThreadId, int? playCount, int? trackNumberUpdateTime, int? subscribedCount, int? cloudTrackCount, bool? ordered, String? description, List<String>? tags, dynamic updateFrequency, int? backgroundCoverId, dynamic backgroundCoverUrl, int? titleImage, dynamic titleImageUrl, dynamic englishTitle, dynamic officialPlaylistType, bool? copied, dynamic relateResType, List<PlaylistDetailPlaylistSubscribers>? subscribers, bool? subscribed, PlaylistDetailPlaylistCreator? creator, List<PlaylistDetailPlaylistTracks>? tracks, dynamic videoIds, dynamic videos, List<PlaylistDetailPlaylistTrackIds>? trackIds, dynamic bannedTrackIds, dynamic mvResourceInfos, int? shareCount, int? commentCount, dynamic remixVideo, dynamic sharedUsers, dynamic historySharedUsers, String? gradeStatus, dynamic score, dynamic algTags}) {
		return PlaylistDetailPlaylist()
			..id= id ?? this.id
			..name= name ?? this.name
			..coverImgId= coverImgId ?? this.coverImgId
			..coverImgUrl= coverImgUrl ?? this.coverImgUrl
			..coverimgidStr= coverimgidStr ?? this.coverimgidStr
			..adType= adType ?? this.adType
			..userId= userId ?? this.userId
			..createTime= createTime ?? this.createTime
			..status= status ?? this.status
			..opRecommend= opRecommend ?? this.opRecommend
			..highQuality= highQuality ?? this.highQuality
			..newImported= newImported ?? this.newImported
			..updateTime= updateTime ?? this.updateTime
			..trackCount= trackCount ?? this.trackCount
			..specialType= specialType ?? this.specialType
			..privacy= privacy ?? this.privacy
			..trackUpdateTime= trackUpdateTime ?? this.trackUpdateTime
			..commentThreadId= commentThreadId ?? this.commentThreadId
			..playCount= playCount ?? this.playCount
			..trackNumberUpdateTime= trackNumberUpdateTime ?? this.trackNumberUpdateTime
			..subscribedCount= subscribedCount ?? this.subscribedCount
			..cloudTrackCount= cloudTrackCount ?? this.cloudTrackCount
			..ordered= ordered ?? this.ordered
			..description= description ?? this.description
			..tags= tags ?? this.tags
			..updateFrequency= updateFrequency ?? this.updateFrequency
			..backgroundCoverId= backgroundCoverId ?? this.backgroundCoverId
			..backgroundCoverUrl= backgroundCoverUrl ?? this.backgroundCoverUrl
			..titleImage= titleImage ?? this.titleImage
			..titleImageUrl= titleImageUrl ?? this.titleImageUrl
			..englishTitle= englishTitle ?? this.englishTitle
			..officialPlaylistType= officialPlaylistType ?? this.officialPlaylistType
			..copied= copied ?? this.copied
			..relateResType= relateResType ?? this.relateResType
			..subscribers= subscribers ?? this.subscribers
			..subscribed= subscribed ?? this.subscribed
			..creator= creator ?? this.creator
			..tracks= tracks ?? this.tracks
			..videoIds= videoIds ?? this.videoIds
			..videos= videos ?? this.videos
			..trackIds= trackIds ?? this.trackIds
			..bannedTrackIds= bannedTrackIds ?? this.bannedTrackIds
			..mvResourceInfos= mvResourceInfos ?? this.mvResourceInfos
			..shareCount= shareCount ?? this.shareCount
			..commentCount= commentCount ?? this.commentCount
			..remixVideo= remixVideo ?? this.remixVideo
			..sharedUsers= sharedUsers ?? this.sharedUsers
			..historySharedUsers= historySharedUsers ?? this.historySharedUsers
			..gradeStatus= gradeStatus ?? this.gradeStatus
			..score= score ?? this.score
			..algTags= algTags ?? this.algTags;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PlaylistDetailPlaylistSubscribers {
	bool? defaultAvatar;
	int? province;
	int? authStatus;
	bool? followed;
	String? avatarUrl;
	int? accountStatus;
	int? gender;
	int? city;
	int? birthday;
	int? userId;
	int? userType;
	String? nickname;
	String? signature;
	String? description;
	String? detailDescription;
	int? avatarImgId;
	int? backgroundImgId;
	String? backgroundUrl;
	int? authority;
	bool? mutual;
	dynamic expertTags;
	dynamic experts;
	int? djStatus;
	int? vipType;
	dynamic remarkName;
	int? authenticationTypes;
	dynamic avatarDetail;
	bool? anchor;
	String? backgroundImgIdStr;
	String? avatarImgIdStr;
	@JSONField(name: "avatarImgId_str")
	String? avatarimgidStr;

	PlaylistDetailPlaylistSubscribers();

	factory PlaylistDetailPlaylistSubscribers.fromJson(Map<String, dynamic> json) => $PlaylistDetailPlaylistSubscribersFromJson(json);

	Map<String, dynamic> toJson() => $PlaylistDetailPlaylistSubscribersToJson(this);

	PlaylistDetailPlaylistSubscribers copyWith({bool? defaultAvatar, int? province, int? authStatus, bool? followed, String? avatarUrl, int? accountStatus, int? gender, int? city, int? birthday, int? userId, int? userType, String? nickname, String? signature, String? description, String? detailDescription, int? avatarImgId, int? backgroundImgId, String? backgroundUrl, int? authority, bool? mutual, dynamic expertTags, dynamic experts, int? djStatus, int? vipType, dynamic remarkName, int? authenticationTypes, dynamic avatarDetail, bool? anchor, String? backgroundImgIdStr, String? avatarImgIdStr, String? avatarimgidStr}) {
		return PlaylistDetailPlaylistSubscribers()
			..defaultAvatar= defaultAvatar ?? this.defaultAvatar
			..province= province ?? this.province
			..authStatus= authStatus ?? this.authStatus
			..followed= followed ?? this.followed
			..avatarUrl= avatarUrl ?? this.avatarUrl
			..accountStatus= accountStatus ?? this.accountStatus
			..gender= gender ?? this.gender
			..city= city ?? this.city
			..birthday= birthday ?? this.birthday
			..userId= userId ?? this.userId
			..userType= userType ?? this.userType
			..nickname= nickname ?? this.nickname
			..signature= signature ?? this.signature
			..description= description ?? this.description
			..detailDescription= detailDescription ?? this.detailDescription
			..avatarImgId= avatarImgId ?? this.avatarImgId
			..backgroundImgId= backgroundImgId ?? this.backgroundImgId
			..backgroundUrl= backgroundUrl ?? this.backgroundUrl
			..authority= authority ?? this.authority
			..mutual= mutual ?? this.mutual
			..expertTags= expertTags ?? this.expertTags
			..experts= experts ?? this.experts
			..djStatus= djStatus ?? this.djStatus
			..vipType= vipType ?? this.vipType
			..remarkName= remarkName ?? this.remarkName
			..authenticationTypes= authenticationTypes ?? this.authenticationTypes
			..avatarDetail= avatarDetail ?? this.avatarDetail
			..anchor= anchor ?? this.anchor
			..backgroundImgIdStr= backgroundImgIdStr ?? this.backgroundImgIdStr
			..avatarImgIdStr= avatarImgIdStr ?? this.avatarImgIdStr
			..avatarimgidStr= avatarimgidStr ?? this.avatarimgidStr;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PlaylistDetailPlaylistCreator {
	bool? defaultAvatar;
	int? province;
	int? authStatus;
	bool? followed;
	String? avatarUrl;
	int? accountStatus;
	int? gender;
	int? city;
	int? birthday;
	int? userId;
	int? userType;
	String? nickname;
	String? signature;
	String? description;
	String? detailDescription;
	int? avatarImgId;
	int? backgroundImgId;
	String? backgroundUrl;
	int? authority;
	bool? mutual;
	List<String>? expertTags;
	dynamic experts;
	int? djStatus;
	int? vipType;
	dynamic remarkName;
	int? authenticationTypes;
	PlaylistDetailPlaylistCreatorAvatarDetail? avatarDetail;
	bool? anchor;
	String? backgroundImgIdStr;
	String? avatarImgIdStr;

	PlaylistDetailPlaylistCreator();

	factory PlaylistDetailPlaylistCreator.fromJson(Map<String, dynamic> json) => $PlaylistDetailPlaylistCreatorFromJson(json);

	Map<String, dynamic> toJson() => $PlaylistDetailPlaylistCreatorToJson(this);

	PlaylistDetailPlaylistCreator copyWith({bool? defaultAvatar, int? province, int? authStatus, bool? followed, String? avatarUrl, int? accountStatus, int? gender, int? city, int? birthday, int? userId, int? userType, String? nickname, String? signature, String? description, String? detailDescription, int? avatarImgId, int? backgroundImgId, String? backgroundUrl, int? authority, bool? mutual, List<String>? expertTags, dynamic experts, int? djStatus, int? vipType, dynamic remarkName, int? authenticationTypes, PlaylistDetailPlaylistCreatorAvatarDetail? avatarDetail, bool? anchor, String? backgroundImgIdStr, String? avatarImgIdStr}) {
		return PlaylistDetailPlaylistCreator()
			..defaultAvatar= defaultAvatar ?? this.defaultAvatar
			..province= province ?? this.province
			..authStatus= authStatus ?? this.authStatus
			..followed= followed ?? this.followed
			..avatarUrl= avatarUrl ?? this.avatarUrl
			..accountStatus= accountStatus ?? this.accountStatus
			..gender= gender ?? this.gender
			..city= city ?? this.city
			..birthday= birthday ?? this.birthday
			..userId= userId ?? this.userId
			..userType= userType ?? this.userType
			..nickname= nickname ?? this.nickname
			..signature= signature ?? this.signature
			..description= description ?? this.description
			..detailDescription= detailDescription ?? this.detailDescription
			..avatarImgId= avatarImgId ?? this.avatarImgId
			..backgroundImgId= backgroundImgId ?? this.backgroundImgId
			..backgroundUrl= backgroundUrl ?? this.backgroundUrl
			..authority= authority ?? this.authority
			..mutual= mutual ?? this.mutual
			..expertTags= expertTags ?? this.expertTags
			..experts= experts ?? this.experts
			..djStatus= djStatus ?? this.djStatus
			..vipType= vipType ?? this.vipType
			..remarkName= remarkName ?? this.remarkName
			..authenticationTypes= authenticationTypes ?? this.authenticationTypes
			..avatarDetail= avatarDetail ?? this.avatarDetail
			..anchor= anchor ?? this.anchor
			..backgroundImgIdStr= backgroundImgIdStr ?? this.backgroundImgIdStr
			..avatarImgIdStr= avatarImgIdStr ?? this.avatarImgIdStr;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PlaylistDetailPlaylistCreatorAvatarDetail {
	int? userType;
	int? identityLevel;
	String? identityIconUrl;

	PlaylistDetailPlaylistCreatorAvatarDetail();

	factory PlaylistDetailPlaylistCreatorAvatarDetail.fromJson(Map<String, dynamic> json) => $PlaylistDetailPlaylistCreatorAvatarDetailFromJson(json);

	Map<String, dynamic> toJson() => $PlaylistDetailPlaylistCreatorAvatarDetailToJson(this);

	PlaylistDetailPlaylistCreatorAvatarDetail copyWith({int? userType, int? identityLevel, String? identityIconUrl}) {
		return PlaylistDetailPlaylistCreatorAvatarDetail()
			..userType= userType ?? this.userType
			..identityLevel= identityLevel ?? this.identityLevel
			..identityIconUrl= identityIconUrl ?? this.identityIconUrl;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PlaylistDetailPlaylistTracks {
	String? name;
	int? id;
	int? pst;
	int? t;
	List<PlaylistDetailPlaylistTracksAr>? ar;
	List<String>? alia;
	int? pop;
	int? st;
	String? rt;
	int? fee;
	int? v;
	dynamic crbt;
	String? cf;
	PlaylistDetailPlaylistTracksAl? al;
	int? dt;
	PlaylistDetailPlaylistTracksH? h;
	PlaylistDetailPlaylistTracksM? m;
	PlaylistDetailPlaylistTracksL? l;
	PlaylistDetailPlaylistTracksSq? sq;
	PlaylistDetailPlaylistTracksHr? hr;
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
	PlaylistDetailPlaylistTracksNoCopyrightRcmd? noCopyrightRcmd;
	int? rtype;
	dynamic rurl;
	int? mst;
	int? cp;
	int? mv;
	int? publishTime;
	List<String>? tns;

	PlaylistDetailPlaylistTracks();

	factory PlaylistDetailPlaylistTracks.fromJson(Map<String, dynamic> json) => $PlaylistDetailPlaylistTracksFromJson(json);

	Map<String, dynamic> toJson() => $PlaylistDetailPlaylistTracksToJson(this);

	PlaylistDetailPlaylistTracks copyWith({String? name, int? id, int? pst, int? t, List<PlaylistDetailPlaylistTracksAr>? ar, List<String>? alia, int? pop, int? st, String? rt, int? fee, int? v, dynamic crbt, String? cf, PlaylistDetailPlaylistTracksAl? al, int? dt, PlaylistDetailPlaylistTracksH? h, PlaylistDetailPlaylistTracksM? m, PlaylistDetailPlaylistTracksL? l, PlaylistDetailPlaylistTracksSq? sq, PlaylistDetailPlaylistTracksHr? hr, dynamic a, String? cd, int? no, dynamic rtUrl, int? ftype, List<dynamic>? rtUrls, int? djId, int? copyright, int? sId, int? mark, int? originCoverType, dynamic originSongSimpleData, dynamic tagPicList, bool? resourceState, int? version, dynamic songJumpInfo, dynamic entertainmentTags, int? single, PlaylistDetailPlaylistTracksNoCopyrightRcmd? noCopyrightRcmd, int? rtype, dynamic rurl, int? mst, int? cp, int? mv, int? publishTime, List<String>? tns}) {
		return PlaylistDetailPlaylistTracks()
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
			..tns= tns ?? this.tns;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PlaylistDetailPlaylistTracksAr {
	int? id;
	String? name;
	List<dynamic>? tns;
	List<dynamic>? alias;

	PlaylistDetailPlaylistTracksAr();

	factory PlaylistDetailPlaylistTracksAr.fromJson(Map<String, dynamic> json) => $PlaylistDetailPlaylistTracksArFromJson(json);

	Map<String, dynamic> toJson() => $PlaylistDetailPlaylistTracksArToJson(this);

	PlaylistDetailPlaylistTracksAr copyWith({int? id, String? name, List<dynamic>? tns, List<dynamic>? alias}) {
		return PlaylistDetailPlaylistTracksAr()
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
class PlaylistDetailPlaylistTracksAl {
	int? id;
	String? name;
	String? picUrl;
	List<dynamic>? tns;
	int? pic;

	PlaylistDetailPlaylistTracksAl();

	factory PlaylistDetailPlaylistTracksAl.fromJson(Map<String, dynamic> json) => $PlaylistDetailPlaylistTracksAlFromJson(json);

	Map<String, dynamic> toJson() => $PlaylistDetailPlaylistTracksAlToJson(this);

	PlaylistDetailPlaylistTracksAl copyWith({int? id, String? name, String? picUrl, List<dynamic>? tns, int? pic}) {
		return PlaylistDetailPlaylistTracksAl()
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
class PlaylistDetailPlaylistTracksH {
	int? br;
	int? fid;
	int? size;
	int? vd;
	int? sr;

	PlaylistDetailPlaylistTracksH();

	factory PlaylistDetailPlaylistTracksH.fromJson(Map<String, dynamic> json) => $PlaylistDetailPlaylistTracksHFromJson(json);

	Map<String, dynamic> toJson() => $PlaylistDetailPlaylistTracksHToJson(this);

	PlaylistDetailPlaylistTracksH copyWith({int? br, int? fid, int? size, int? vd, int? sr}) {
		return PlaylistDetailPlaylistTracksH()
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
class PlaylistDetailPlaylistTracksM {
	int? br;
	int? fid;
	int? size;
	int? vd;
	int? sr;

	PlaylistDetailPlaylistTracksM();

	factory PlaylistDetailPlaylistTracksM.fromJson(Map<String, dynamic> json) => $PlaylistDetailPlaylistTracksMFromJson(json);

	Map<String, dynamic> toJson() => $PlaylistDetailPlaylistTracksMToJson(this);

	PlaylistDetailPlaylistTracksM copyWith({int? br, int? fid, int? size, int? vd, int? sr}) {
		return PlaylistDetailPlaylistTracksM()
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
class PlaylistDetailPlaylistTracksL {
	int? br;
	int? fid;
	int? size;
	int? vd;
	int? sr;

	PlaylistDetailPlaylistTracksL();

	factory PlaylistDetailPlaylistTracksL.fromJson(Map<String, dynamic> json) => $PlaylistDetailPlaylistTracksLFromJson(json);

	Map<String, dynamic> toJson() => $PlaylistDetailPlaylistTracksLToJson(this);

	PlaylistDetailPlaylistTracksL copyWith({int? br, int? fid, int? size, int? vd, int? sr}) {
		return PlaylistDetailPlaylistTracksL()
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
class PlaylistDetailPlaylistTracksSq {
	int? br;
	int? fid;
	int? size;
	int? vd;
	int? sr;

	PlaylistDetailPlaylistTracksSq();

	factory PlaylistDetailPlaylistTracksSq.fromJson(Map<String, dynamic> json) => $PlaylistDetailPlaylistTracksSqFromJson(json);

	Map<String, dynamic> toJson() => $PlaylistDetailPlaylistTracksSqToJson(this);

	PlaylistDetailPlaylistTracksSq copyWith({int? br, int? fid, int? size, int? vd, int? sr}) {
		return PlaylistDetailPlaylistTracksSq()
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
class PlaylistDetailPlaylistTracksHr {
	int? br;
	int? fid;
	int? size;
	int? vd;
	int? sr;

	PlaylistDetailPlaylistTracksHr();

	factory PlaylistDetailPlaylistTracksHr.fromJson(Map<String, dynamic> json) => $PlaylistDetailPlaylistTracksHrFromJson(json);

	Map<String, dynamic> toJson() => $PlaylistDetailPlaylistTracksHrToJson(this);

	PlaylistDetailPlaylistTracksHr copyWith({int? br, int? fid, int? size, int? vd, int? sr}) {
		return PlaylistDetailPlaylistTracksHr()
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
class PlaylistDetailPlaylistTracksNoCopyrightRcmd {
	int? type;
	String? typeDesc;
	dynamic songId;

	PlaylistDetailPlaylistTracksNoCopyrightRcmd();

	factory PlaylistDetailPlaylistTracksNoCopyrightRcmd.fromJson(Map<String, dynamic> json) => $PlaylistDetailPlaylistTracksNoCopyrightRcmdFromJson(json);

	Map<String, dynamic> toJson() => $PlaylistDetailPlaylistTracksNoCopyrightRcmdToJson(this);

	PlaylistDetailPlaylistTracksNoCopyrightRcmd copyWith({int? type, String? typeDesc, dynamic songId}) {
		return PlaylistDetailPlaylistTracksNoCopyrightRcmd()
			..type= type ?? this.type
			..typeDesc= typeDesc ?? this.typeDesc
			..songId= songId ?? this.songId;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PlaylistDetailPlaylistTrackIds {
	int? id;
	int? v;
	int? t;
	int? at;
	dynamic alg;
	int? uid;
	String? rcmdReason;
	dynamic sc;
	dynamic f;
	dynamic sr;

	PlaylistDetailPlaylistTrackIds();

	factory PlaylistDetailPlaylistTrackIds.fromJson(Map<String, dynamic> json) => $PlaylistDetailPlaylistTrackIdsFromJson(json);

	Map<String, dynamic> toJson() => $PlaylistDetailPlaylistTrackIdsToJson(this);

	PlaylistDetailPlaylistTrackIds copyWith({int? id, int? v, int? t, int? at, dynamic alg, int? uid, String? rcmdReason, dynamic sc, dynamic f, dynamic sr}) {
		return PlaylistDetailPlaylistTrackIds()
			..id= id ?? this.id
			..v= v ?? this.v
			..t= t ?? this.t
			..at= at ?? this.at
			..alg= alg ?? this.alg
			..uid= uid ?? this.uid
			..rcmdReason= rcmdReason ?? this.rcmdReason
			..sc= sc ?? this.sc
			..f= f ?? this.f
			..sr= sr ?? this.sr;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PlaylistDetailPrivileges {
	int? id;
	int? fee;
	int? payed;
	int? realPayed;
	int? st;
	int? pl;
	int? dl;
	int? sp;
	int? cp;
	int? subp;
	bool? cs;
	int? maxbr;
	int? fl;
	dynamic pc;
	bool? toast;
	int? flag;
	bool? paidBigBang;
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
	PlaylistDetailPrivilegesFreeTrialPrivilege? freeTrialPrivilege;
	List<PlaylistDetailPrivilegesChargeInfoList>? chargeInfoList;

	PlaylistDetailPrivileges();

	factory PlaylistDetailPrivileges.fromJson(Map<String, dynamic> json) => $PlaylistDetailPrivilegesFromJson(json);

	Map<String, dynamic> toJson() => $PlaylistDetailPrivilegesToJson(this);

	PlaylistDetailPrivileges copyWith({int? id, int? fee, int? payed, int? realPayed, int? st, int? pl, int? dl, int? sp, int? cp, int? subp, bool? cs, int? maxbr, int? fl, dynamic pc, bool? toast, int? flag, bool? paidBigBang, bool? preSell, int? playMaxbr, int? downloadMaxbr, String? maxBrLevel, String? playMaxBrLevel, String? downloadMaxBrLevel, String? plLevel, String? dlLevel, String? flLevel, dynamic rscl, PlaylistDetailPrivilegesFreeTrialPrivilege? freeTrialPrivilege, List<PlaylistDetailPrivilegesChargeInfoList>? chargeInfoList}) {
		return PlaylistDetailPrivileges()
			..id= id ?? this.id
			..fee= fee ?? this.fee
			..payed= payed ?? this.payed
			..realPayed= realPayed ?? this.realPayed
			..st= st ?? this.st
			..pl= pl ?? this.pl
			..dl= dl ?? this.dl
			..sp= sp ?? this.sp
			..cp= cp ?? this.cp
			..subp= subp ?? this.subp
			..cs= cs ?? this.cs
			..maxbr= maxbr ?? this.maxbr
			..fl= fl ?? this.fl
			..pc= pc ?? this.pc
			..toast= toast ?? this.toast
			..flag= flag ?? this.flag
			..paidBigBang= paidBigBang ?? this.paidBigBang
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
class PlaylistDetailPrivilegesFreeTrialPrivilege {
	bool? resConsumable;
	bool? userConsumable;
	dynamic listenType;

	PlaylistDetailPrivilegesFreeTrialPrivilege();

	factory PlaylistDetailPrivilegesFreeTrialPrivilege.fromJson(Map<String, dynamic> json) => $PlaylistDetailPrivilegesFreeTrialPrivilegeFromJson(json);

	Map<String, dynamic> toJson() => $PlaylistDetailPrivilegesFreeTrialPrivilegeToJson(this);

	PlaylistDetailPrivilegesFreeTrialPrivilege copyWith({bool? resConsumable, bool? userConsumable, dynamic listenType}) {
		return PlaylistDetailPrivilegesFreeTrialPrivilege()
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
class PlaylistDetailPrivilegesChargeInfoList {
	int? rate;
	dynamic chargeUrl;
	dynamic chargeMessage;
	int? chargeType;

	PlaylistDetailPrivilegesChargeInfoList();

	factory PlaylistDetailPrivilegesChargeInfoList.fromJson(Map<String, dynamic> json) => $PlaylistDetailPrivilegesChargeInfoListFromJson(json);

	Map<String, dynamic> toJson() => $PlaylistDetailPrivilegesChargeInfoListToJson(this);

	PlaylistDetailPrivilegesChargeInfoList copyWith({int? rate, dynamic chargeUrl, dynamic chargeMessage, int? chargeType}) {
		return PlaylistDetailPrivilegesChargeInfoList()
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