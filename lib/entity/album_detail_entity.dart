import 'package:music/entity/song_item.dart';
import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/album_detail_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class AlbumDetailEntity {
  bool? resourceState;
  List<AlbumDetailSongs>? songs;
  int? code;
  AlbumDetailAlbum? album;

  AlbumDetailEntity();

  factory AlbumDetailEntity.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailEntityFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailEntityToJson(this);

  AlbumDetailEntity copyWith(
      {bool? resourceState,
      List<AlbumDetailSongs>? songs,
      int? code,
      AlbumDetailAlbum? album}) {
    return AlbumDetailEntity()
      ..resourceState = resourceState ?? this.resourceState
      ..songs = songs ?? this.songs
      ..code = code ?? this.code
      ..album = album ?? this.album;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailSongs {
  List<dynamic>? rtUrls;
  List<AlbumDetailSongsAr>? ar;
  AlbumDetailSongsAl? al;
  int? st;
  AlbumDetailSongsNoCopyrightRcmd? noCopyrightRcmd;
  dynamic songJumpInfo;
  int? cp;
  dynamic crbt;
  String? cf;
  int? dt;
  dynamic rtUrl;
  int? ftype;
  int? rtype;
  dynamic rurl;
  int? pst;
  List<String>? alia;
  int? pop;
  String? rt;
  int? mst;
  String? cd;
  int? no;
  int? fee;
  int? djId;
  int? mv;
  int? t;
  int? v;
  AlbumDetailSongsH? h;
  AlbumDetailSongsL? l;
  AlbumDetailSongsSq? sq;
  dynamic hr;
  dynamic a;
  AlbumDetailSongsM? m;
  String? name;
  int? id;
  AlbumDetailSongsPrivilege? privilege;

  SongItem toSongItem() {
    return SongItem(
        id ?? 0,
        name ?? "",
        ar?.map((a) => Singer(a.id ?? 0, a.name ?? '')).toList() ?? [],
        alia ?? [],
        Album(al?.id ?? 0, al?.name ?? '', al?.picUrl ?? ''),
        mv ?? 0);
  }

  AlbumDetailSongs();

  factory AlbumDetailSongs.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailSongsFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailSongsToJson(this);

  AlbumDetailSongs copyWith(
      {List<dynamic>? rtUrls,
      List<AlbumDetailSongsAr>? ar,
      AlbumDetailSongsAl? al,
      int? st,
      AlbumDetailSongsNoCopyrightRcmd? noCopyrightRcmd,
      dynamic songJumpInfo,
      int? cp,
      dynamic crbt,
      String? cf,
      int? dt,
      dynamic rtUrl,
      int? ftype,
      int? rtype,
      dynamic rurl,
      int? pst,
      List<String>? alia,
      int? pop,
      String? rt,
      int? mst,
      String? cd,
      int? no,
      int? fee,
      int? djId,
      int? mv,
      int? t,
      int? v,
      AlbumDetailSongsH? h,
      AlbumDetailSongsL? l,
      AlbumDetailSongsSq? sq,
      dynamic hr,
      dynamic a,
      AlbumDetailSongsM? m,
      String? name,
      int? id,
      AlbumDetailSongsPrivilege? privilege}) {
    return AlbumDetailSongs()
      ..rtUrls = rtUrls ?? this.rtUrls
      ..ar = ar ?? this.ar
      ..al = al ?? this.al
      ..st = st ?? this.st
      ..noCopyrightRcmd = noCopyrightRcmd ?? this.noCopyrightRcmd
      ..songJumpInfo = songJumpInfo ?? this.songJumpInfo
      ..cp = cp ?? this.cp
      ..crbt = crbt ?? this.crbt
      ..cf = cf ?? this.cf
      ..dt = dt ?? this.dt
      ..rtUrl = rtUrl ?? this.rtUrl
      ..ftype = ftype ?? this.ftype
      ..rtype = rtype ?? this.rtype
      ..rurl = rurl ?? this.rurl
      ..pst = pst ?? this.pst
      ..alia = alia ?? this.alia
      ..pop = pop ?? this.pop
      ..rt = rt ?? this.rt
      ..mst = mst ?? this.mst
      ..cd = cd ?? this.cd
      ..no = no ?? this.no
      ..fee = fee ?? this.fee
      ..djId = djId ?? this.djId
      ..mv = mv ?? this.mv
      ..t = t ?? this.t
      ..v = v ?? this.v
      ..h = h ?? this.h
      ..l = l ?? this.l
      ..sq = sq ?? this.sq
      ..hr = hr ?? this.hr
      ..a = a ?? this.a
      ..m = m ?? this.m
      ..name = name ?? this.name
      ..id = id ?? this.id
      ..privilege = privilege ?? this.privilege;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailSongsAr {
  int? id;
  String? name;

  AlbumDetailSongsAr();

  factory AlbumDetailSongsAr.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailSongsArFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailSongsArToJson(this);

  AlbumDetailSongsAr copyWith({int? id, String? name}) {
    return AlbumDetailSongsAr()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailSongsAl {
  int? id;
  String? name;
  String? picUrl;
  @JSONField(name: "pic_str")
  String? picStr;
  int? pic;

  AlbumDetailSongsAl();

  factory AlbumDetailSongsAl.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailSongsAlFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailSongsAlToJson(this);

  AlbumDetailSongsAl copyWith(
      {int? id, String? name, String? picUrl, String? picStr, int? pic}) {
    return AlbumDetailSongsAl()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..picUrl = picUrl ?? this.picUrl
      ..picStr = picStr ?? this.picStr
      ..pic = pic ?? this.pic;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailSongsNoCopyrightRcmd {
  int? type;
  String? typeDesc;
  dynamic songId;

  AlbumDetailSongsNoCopyrightRcmd();

  factory AlbumDetailSongsNoCopyrightRcmd.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailSongsNoCopyrightRcmdFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailSongsNoCopyrightRcmdToJson(this);

  AlbumDetailSongsNoCopyrightRcmd copyWith(
      {int? type, String? typeDesc, dynamic songId}) {
    return AlbumDetailSongsNoCopyrightRcmd()
      ..type = type ?? this.type
      ..typeDesc = typeDesc ?? this.typeDesc
      ..songId = songId ?? this.songId;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailSongsH {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  AlbumDetailSongsH();

  factory AlbumDetailSongsH.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailSongsHFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailSongsHToJson(this);

  AlbumDetailSongsH copyWith({int? br, int? fid, int? size, int? vd, int? sr}) {
    return AlbumDetailSongsH()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd
      ..sr = sr ?? this.sr;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailSongsL {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  AlbumDetailSongsL();

  factory AlbumDetailSongsL.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailSongsLFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailSongsLToJson(this);

  AlbumDetailSongsL copyWith({int? br, int? fid, int? size, int? vd, int? sr}) {
    return AlbumDetailSongsL()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd
      ..sr = sr ?? this.sr;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailSongsSq {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  AlbumDetailSongsSq();

  factory AlbumDetailSongsSq.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailSongsSqFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailSongsSqToJson(this);

  AlbumDetailSongsSq copyWith(
      {int? br, int? fid, int? size, int? vd, int? sr}) {
    return AlbumDetailSongsSq()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd
      ..sr = sr ?? this.sr;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailSongsM {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  AlbumDetailSongsM();

  factory AlbumDetailSongsM.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailSongsMFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailSongsMToJson(this);

  AlbumDetailSongsM copyWith({int? br, int? fid, int? size, int? vd, int? sr}) {
    return AlbumDetailSongsM()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd
      ..sr = sr ?? this.sr;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailSongsPrivilege {
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
  AlbumDetailSongsPrivilegeFreeTrialPrivilege? freeTrialPrivilege;
  List<AlbumDetailSongsPrivilegeChargeInfoList>? chargeInfoList;

  AlbumDetailSongsPrivilege();

  factory AlbumDetailSongsPrivilege.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailSongsPrivilegeFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailSongsPrivilegeToJson(this);

  AlbumDetailSongsPrivilege copyWith(
      {int? id,
      int? fee,
      int? payed,
      int? st,
      int? pl,
      int? dl,
      int? sp,
      int? cp,
      int? subp,
      bool? cs,
      int? maxbr,
      int? fl,
      bool? toast,
      int? flag,
      bool? preSell,
      int? playMaxbr,
      int? downloadMaxbr,
      String? maxBrLevel,
      String? playMaxBrLevel,
      String? downloadMaxBrLevel,
      String? plLevel,
      String? dlLevel,
      String? flLevel,
      dynamic rscl,
      AlbumDetailSongsPrivilegeFreeTrialPrivilege? freeTrialPrivilege,
      List<AlbumDetailSongsPrivilegeChargeInfoList>? chargeInfoList}) {
    return AlbumDetailSongsPrivilege()
      ..id = id ?? this.id
      ..fee = fee ?? this.fee
      ..payed = payed ?? this.payed
      ..st = st ?? this.st
      ..pl = pl ?? this.pl
      ..dl = dl ?? this.dl
      ..sp = sp ?? this.sp
      ..cp = cp ?? this.cp
      ..subp = subp ?? this.subp
      ..cs = cs ?? this.cs
      ..maxbr = maxbr ?? this.maxbr
      ..fl = fl ?? this.fl
      ..toast = toast ?? this.toast
      ..flag = flag ?? this.flag
      ..preSell = preSell ?? this.preSell
      ..playMaxbr = playMaxbr ?? this.playMaxbr
      ..downloadMaxbr = downloadMaxbr ?? this.downloadMaxbr
      ..maxBrLevel = maxBrLevel ?? this.maxBrLevel
      ..playMaxBrLevel = playMaxBrLevel ?? this.playMaxBrLevel
      ..downloadMaxBrLevel = downloadMaxBrLevel ?? this.downloadMaxBrLevel
      ..plLevel = plLevel ?? this.plLevel
      ..dlLevel = dlLevel ?? this.dlLevel
      ..flLevel = flLevel ?? this.flLevel
      ..rscl = rscl ?? this.rscl
      ..freeTrialPrivilege = freeTrialPrivilege ?? this.freeTrialPrivilege
      ..chargeInfoList = chargeInfoList ?? this.chargeInfoList;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailSongsPrivilegeFreeTrialPrivilege {
  bool? resConsumable;
  bool? userConsumable;
  dynamic listenType;

  AlbumDetailSongsPrivilegeFreeTrialPrivilege();

  factory AlbumDetailSongsPrivilegeFreeTrialPrivilege.fromJson(
          Map<String, dynamic> json) =>
      $AlbumDetailSongsPrivilegeFreeTrialPrivilegeFromJson(json);

  Map<String, dynamic> toJson() =>
      $AlbumDetailSongsPrivilegeFreeTrialPrivilegeToJson(this);

  AlbumDetailSongsPrivilegeFreeTrialPrivilege copyWith(
      {bool? resConsumable, bool? userConsumable, dynamic listenType}) {
    return AlbumDetailSongsPrivilegeFreeTrialPrivilege()
      ..resConsumable = resConsumable ?? this.resConsumable
      ..userConsumable = userConsumable ?? this.userConsumable
      ..listenType = listenType ?? this.listenType;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailSongsPrivilegeChargeInfoList {
  int? rate;
  dynamic chargeUrl;
  dynamic chargeMessage;
  int? chargeType;

  AlbumDetailSongsPrivilegeChargeInfoList();

  factory AlbumDetailSongsPrivilegeChargeInfoList.fromJson(
          Map<String, dynamic> json) =>
      $AlbumDetailSongsPrivilegeChargeInfoListFromJson(json);

  Map<String, dynamic> toJson() =>
      $AlbumDetailSongsPrivilegeChargeInfoListToJson(this);

  AlbumDetailSongsPrivilegeChargeInfoList copyWith(
      {int? rate, dynamic chargeUrl, dynamic chargeMessage, int? chargeType}) {
    return AlbumDetailSongsPrivilegeChargeInfoList()
      ..rate = rate ?? this.rate
      ..chargeUrl = chargeUrl ?? this.chargeUrl
      ..chargeMessage = chargeMessage ?? this.chargeMessage
      ..chargeType = chargeType ?? this.chargeType;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailAlbum {
  List<dynamic>? songs;
  bool? paid;
  bool? onSale;
  int? mark;
  dynamic awardTags;
  int? companyId;
  String? blurPicUrl;
  int? pic;
  List<dynamic>? alias;
  List<AlbumDetailAlbumArtists>? artists;
  int? copyrightId;
  int? picId;
  AlbumDetailAlbumArtist? artist;
  int? publishTime;
  String? company;
  String? briefDesc;
  String? picUrl;
  String? commentThreadId;
  String? tags;
  String? description;
  int? status;
  String? subType;
  String? name;
  int? id;
  String? type;
  int? size;
  @JSONField(name: "picId_str")
  String? picidStr;
  AlbumDetailAlbumInfo? info;

  AlbumDetailAlbum();

  String formatPublishTime() {
    final date = DateTime.fromMicrosecondsSinceEpoch((publishTime ?? 0) * 1000);
    return "${date.year}/${date.month}/${date.day}";
  }

  factory AlbumDetailAlbum.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailAlbumFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailAlbumToJson(this);

  AlbumDetailAlbum copyWith(
      {List<dynamic>? songs,
      bool? paid,
      bool? onSale,
      int? mark,
      dynamic awardTags,
      int? companyId,
      String? blurPicUrl,
      int? pic,
      List<dynamic>? alias,
      List<AlbumDetailAlbumArtists>? artists,
      int? copyrightId,
      int? picId,
      AlbumDetailAlbumArtist? artist,
      int? publishTime,
      String? company,
      String? briefDesc,
      String? picUrl,
      String? commentThreadId,
      String? tags,
      String? description,
      int? status,
      String? subType,
      String? name,
      int? id,
      String? type,
      int? size,
      String? picidStr,
      AlbumDetailAlbumInfo? info}) {
    return AlbumDetailAlbum()
      ..songs = songs ?? this.songs
      ..paid = paid ?? this.paid
      ..onSale = onSale ?? this.onSale
      ..mark = mark ?? this.mark
      ..awardTags = awardTags ?? this.awardTags
      ..companyId = companyId ?? this.companyId
      ..blurPicUrl = blurPicUrl ?? this.blurPicUrl
      ..pic = pic ?? this.pic
      ..alias = alias ?? this.alias
      ..artists = artists ?? this.artists
      ..copyrightId = copyrightId ?? this.copyrightId
      ..picId = picId ?? this.picId
      ..artist = artist ?? this.artist
      ..publishTime = publishTime ?? this.publishTime
      ..company = company ?? this.company
      ..briefDesc = briefDesc ?? this.briefDesc
      ..picUrl = picUrl ?? this.picUrl
      ..commentThreadId = commentThreadId ?? this.commentThreadId
      ..tags = tags ?? this.tags
      ..description = description ?? this.description
      ..status = status ?? this.status
      ..subType = subType ?? this.subType
      ..name = name ?? this.name
      ..id = id ?? this.id
      ..type = type ?? this.type
      ..size = size ?? this.size
      ..picidStr = picidStr ?? this.picidStr
      ..info = info ?? this.info;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailAlbumArtists {
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

  AlbumDetailAlbumArtists();

  factory AlbumDetailAlbumArtists.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailAlbumArtistsFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailAlbumArtistsToJson(this);

  AlbumDetailAlbumArtists copyWith(
      {int? img1v1Id,
      int? topicPerson,
      bool? followed,
      List<dynamic>? alias,
      int? picId,
      String? briefDesc,
      int? musicSize,
      int? albumSize,
      String? picUrl,
      String? img1v1Url,
      String? trans,
      String? name,
      int? id,
      String? img1v1idStr}) {
    return AlbumDetailAlbumArtists()
      ..img1v1Id = img1v1Id ?? this.img1v1Id
      ..topicPerson = topicPerson ?? this.topicPerson
      ..followed = followed ?? this.followed
      ..alias = alias ?? this.alias
      ..picId = picId ?? this.picId
      ..briefDesc = briefDesc ?? this.briefDesc
      ..musicSize = musicSize ?? this.musicSize
      ..albumSize = albumSize ?? this.albumSize
      ..picUrl = picUrl ?? this.picUrl
      ..img1v1Url = img1v1Url ?? this.img1v1Url
      ..trans = trans ?? this.trans
      ..name = name ?? this.name
      ..id = id ?? this.id
      ..img1v1idStr = img1v1idStr ?? this.img1v1idStr;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailAlbumArtist {
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

  AlbumDetailAlbumArtist();

  factory AlbumDetailAlbumArtist.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailAlbumArtistFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailAlbumArtistToJson(this);

  AlbumDetailAlbumArtist copyWith(
      {int? img1v1Id,
      int? topicPerson,
      bool? followed,
      List<dynamic>? alias,
      int? picId,
      String? briefDesc,
      int? musicSize,
      int? albumSize,
      String? picUrl,
      String? img1v1Url,
      String? trans,
      String? name,
      int? id,
      String? picidStr,
      String? img1v1idStr}) {
    return AlbumDetailAlbumArtist()
      ..img1v1Id = img1v1Id ?? this.img1v1Id
      ..topicPerson = topicPerson ?? this.topicPerson
      ..followed = followed ?? this.followed
      ..alias = alias ?? this.alias
      ..picId = picId ?? this.picId
      ..briefDesc = briefDesc ?? this.briefDesc
      ..musicSize = musicSize ?? this.musicSize
      ..albumSize = albumSize ?? this.albumSize
      ..picUrl = picUrl ?? this.picUrl
      ..img1v1Url = img1v1Url ?? this.img1v1Url
      ..trans = trans ?? this.trans
      ..name = name ?? this.name
      ..id = id ?? this.id
      ..picidStr = picidStr ?? this.picidStr
      ..img1v1idStr = img1v1idStr ?? this.img1v1idStr;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailAlbumInfo {
  AlbumDetailAlbumInfoCommentThread? commentThread;
  dynamic latestLikedUsers;
  bool? liked;
  dynamic comments;
  int? resourceType;
  int? resourceId;
  int? commentCount;
  int? likedCount;
  int? shareCount;
  String? threadId;

  AlbumDetailAlbumInfo();

  factory AlbumDetailAlbumInfo.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailAlbumInfoFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailAlbumInfoToJson(this);

  AlbumDetailAlbumInfo copyWith(
      {AlbumDetailAlbumInfoCommentThread? commentThread,
      dynamic latestLikedUsers,
      bool? liked,
      dynamic comments,
      int? resourceType,
      int? resourceId,
      int? commentCount,
      int? likedCount,
      int? shareCount,
      String? threadId}) {
    return AlbumDetailAlbumInfo()
      ..commentThread = commentThread ?? this.commentThread
      ..latestLikedUsers = latestLikedUsers ?? this.latestLikedUsers
      ..liked = liked ?? this.liked
      ..comments = comments ?? this.comments
      ..resourceType = resourceType ?? this.resourceType
      ..resourceId = resourceId ?? this.resourceId
      ..commentCount = commentCount ?? this.commentCount
      ..likedCount = likedCount ?? this.likedCount
      ..shareCount = shareCount ?? this.shareCount
      ..threadId = threadId ?? this.threadId;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailAlbumInfoCommentThread {
  String? id;
  AlbumDetailAlbumInfoCommentThreadResourceInfo? resourceInfo;
  int? resourceType;
  int? commentCount;
  int? likedCount;
  int? shareCount;
  int? hotCount;
  dynamic latestLikedUsers;
  int? resourceOwnerId;
  String? resourceTitle;
  int? resourceId;

  AlbumDetailAlbumInfoCommentThread();

  factory AlbumDetailAlbumInfoCommentThread.fromJson(
          Map<String, dynamic> json) =>
      $AlbumDetailAlbumInfoCommentThreadFromJson(json);

  Map<String, dynamic> toJson() =>
      $AlbumDetailAlbumInfoCommentThreadToJson(this);

  AlbumDetailAlbumInfoCommentThread copyWith(
      {String? id,
      AlbumDetailAlbumInfoCommentThreadResourceInfo? resourceInfo,
      int? resourceType,
      int? commentCount,
      int? likedCount,
      int? shareCount,
      int? hotCount,
      dynamic latestLikedUsers,
      int? resourceOwnerId,
      String? resourceTitle,
      int? resourceId}) {
    return AlbumDetailAlbumInfoCommentThread()
      ..id = id ?? this.id
      ..resourceInfo = resourceInfo ?? this.resourceInfo
      ..resourceType = resourceType ?? this.resourceType
      ..commentCount = commentCount ?? this.commentCount
      ..likedCount = likedCount ?? this.likedCount
      ..shareCount = shareCount ?? this.shareCount
      ..hotCount = hotCount ?? this.hotCount
      ..latestLikedUsers = latestLikedUsers ?? this.latestLikedUsers
      ..resourceOwnerId = resourceOwnerId ?? this.resourceOwnerId
      ..resourceTitle = resourceTitle ?? this.resourceTitle
      ..resourceId = resourceId ?? this.resourceId;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailAlbumInfoCommentThreadResourceInfo {
  int? id;
  int? userId;
  String? name;
  String? imgUrl;
  dynamic creator;
  dynamic encodedId;
  dynamic subTitle;
  dynamic webUrl;

  AlbumDetailAlbumInfoCommentThreadResourceInfo();

  factory AlbumDetailAlbumInfoCommentThreadResourceInfo.fromJson(
          Map<String, dynamic> json) =>
      $AlbumDetailAlbumInfoCommentThreadResourceInfoFromJson(json);

  Map<String, dynamic> toJson() =>
      $AlbumDetailAlbumInfoCommentThreadResourceInfoToJson(this);

  AlbumDetailAlbumInfoCommentThreadResourceInfo copyWith(
      {int? id,
      int? userId,
      String? name,
      String? imgUrl,
      dynamic creator,
      dynamic encodedId,
      dynamic subTitle,
      dynamic webUrl}) {
    return AlbumDetailAlbumInfoCommentThreadResourceInfo()
      ..id = id ?? this.id
      ..userId = userId ?? this.userId
      ..name = name ?? this.name
      ..imgUrl = imgUrl ?? this.imgUrl
      ..creator = creator ?? this.creator
      ..encodedId = encodedId ?? this.encodedId
      ..subTitle = subTitle ?? this.subTitle
      ..webUrl = webUrl ?? this.webUrl;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}
