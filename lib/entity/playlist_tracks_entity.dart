import 'package:music/entity/song_item.dart';
import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/playlist_tracks_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class PlaylistTracksEntity {
  List<PlaylistTracksSongs>? songs;
  List<PlaylistTracksPrivileges>? privileges;
  int? code;

  PlaylistTracksEntity();

  factory PlaylistTracksEntity.fromJson(Map<String, dynamic> json) =>
      $PlaylistTracksEntityFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistTracksEntityToJson(this);

  PlaylistTracksEntity copyWith(
      {List<PlaylistTracksSongs>? songs,
      List<PlaylistTracksPrivileges>? privileges,
      int? code}) {
    return PlaylistTracksEntity()
      ..songs = songs ?? this.songs
      ..privileges = privileges ?? this.privileges
      ..code = code ?? this.code;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistTracksSongs {
  String? name;
  int? id;
  int? pst;
  int? t;
  List<PlaylistTracksSongsAr>? ar;
  List<String>? alia;
  int? pop;
  int? st;
  String? rt;
  int? fee;
  int? v;
  dynamic crbt;
  String? cf;
  PlaylistTracksSongsAl? al;
  int? dt;
  PlaylistTracksSongsH? h;
  PlaylistTracksSongsM? m;
  PlaylistTracksSongsL? l;
  PlaylistTracksSongsSq? sq;
  PlaylistTracksSongsHr? hr;
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
  PlaylistTracksSongsNoCopyrightRcmd? noCopyrightRcmd;
  int? rtype;
  dynamic rurl;
  int? mst;
  int? cp;
  int? mv;
  int? publishTime;
  List<String>? tns;

  bool contains(String key) {
    if (name?.contains(key) == true) {
      return true;
    }

    if (al?.name?.contains(key) == true) {
      return true;
    }

    return (ar ??[]).map((e) => e.name ?? '').contains(key);
  }

  PlaylistTracksSongs();

  factory PlaylistTracksSongs.fromJson(Map<String, dynamic> json) =>
      $PlaylistTracksSongsFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistTracksSongsToJson(this);

  PlaylistTracksSongs copyWith(
      {String? name,
      int? id,
      int? pst,
      int? t,
      List<PlaylistTracksSongsAr>? ar,
      List<String>? alia,
      int? pop,
      int? st,
      String? rt,
      int? fee,
      int? v,
      dynamic crbt,
      String? cf,
      PlaylistTracksSongsAl? al,
      int? dt,
      PlaylistTracksSongsH? h,
      PlaylistTracksSongsM? m,
      PlaylistTracksSongsL? l,
      PlaylistTracksSongsSq? sq,
      PlaylistTracksSongsHr? hr,
      dynamic a,
      String? cd,
      int? no,
      dynamic rtUrl,
      int? ftype,
      List<dynamic>? rtUrls,
      int? djId,
      int? copyright,
      int? sId,
      int? mark,
      int? originCoverType,
      dynamic originSongSimpleData,
      dynamic tagPicList,
      bool? resourceState,
      int? version,
      dynamic songJumpInfo,
      dynamic entertainmentTags,
      dynamic awardTags,
      int? single,
      PlaylistTracksSongsNoCopyrightRcmd? noCopyrightRcmd,
      int? rtype,
      dynamic rurl,
      int? mst,
      int? cp,
      int? mv,
      int? publishTime,
      List<String>? tns}) {
    return PlaylistTracksSongs()
      ..name = name ?? this.name
      ..id = id ?? this.id
      ..pst = pst ?? this.pst
      ..t = t ?? this.t
      ..ar = ar ?? this.ar
      ..alia = alia ?? this.alia
      ..pop = pop ?? this.pop
      ..st = st ?? this.st
      ..rt = rt ?? this.rt
      ..fee = fee ?? this.fee
      ..v = v ?? this.v
      ..crbt = crbt ?? this.crbt
      ..cf = cf ?? this.cf
      ..al = al ?? this.al
      ..dt = dt ?? this.dt
      ..h = h ?? this.h
      ..m = m ?? this.m
      ..l = l ?? this.l
      ..sq = sq ?? this.sq
      ..hr = hr ?? this.hr
      ..a = a ?? this.a
      ..cd = cd ?? this.cd
      ..no = no ?? this.no
      ..rtUrl = rtUrl ?? this.rtUrl
      ..ftype = ftype ?? this.ftype
      ..rtUrls = rtUrls ?? this.rtUrls
      ..djId = djId ?? this.djId
      ..copyright = copyright ?? this.copyright
      ..sId = sId ?? this.sId
      ..mark = mark ?? this.mark
      ..originCoverType = originCoverType ?? this.originCoverType
      ..originSongSimpleData = originSongSimpleData ?? this.originSongSimpleData
      ..tagPicList = tagPicList ?? this.tagPicList
      ..resourceState = resourceState ?? this.resourceState
      ..version = version ?? this.version
      ..songJumpInfo = songJumpInfo ?? this.songJumpInfo
      ..entertainmentTags = entertainmentTags ?? this.entertainmentTags
      ..awardTags = awardTags ?? this.awardTags
      ..single = single ?? this.single
      ..noCopyrightRcmd = noCopyrightRcmd ?? this.noCopyrightRcmd
      ..rtype = rtype ?? this.rtype
      ..rurl = rurl ?? this.rurl
      ..mst = mst ?? this.mst
      ..cp = cp ?? this.cp
      ..mv = mv ?? this.mv
      ..publishTime = publishTime ?? this.publishTime
      ..tns = tns ?? this.tns;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }

  SongItem toSongItem() {
    return SongItem(
        id ?? 0,
        name ?? '',
        (ar ?? []).map((e) => Singer(e.id ?? 0, e.name ?? '')).toList(),
        alia ?? [],
        Album(al?.id ?? 0, al?.name ?? '', al?.picUrl ?? ''),
        mv ?? 0);
  }
}

@JsonSerializable()
class PlaylistTracksSongsAr {
  int? id;
  String? name;
  List<dynamic>? tns;
  List<dynamic>? alias;

  PlaylistTracksSongsAr();

  factory PlaylistTracksSongsAr.fromJson(Map<String, dynamic> json) =>
      $PlaylistTracksSongsArFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistTracksSongsArToJson(this);

  PlaylistTracksSongsAr copyWith(
      {int? id, String? name, List<dynamic>? tns, List<dynamic>? alias}) {
    return PlaylistTracksSongsAr()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..tns = tns ?? this.tns
      ..alias = alias ?? this.alias;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistTracksSongsAl {
  int? id;
  String? name;
  String? picUrl;
  List<dynamic>? tns;
  int? pic;

  PlaylistTracksSongsAl();

  factory PlaylistTracksSongsAl.fromJson(Map<String, dynamic> json) =>
      $PlaylistTracksSongsAlFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistTracksSongsAlToJson(this);

  PlaylistTracksSongsAl copyWith(
      {int? id, String? name, String? picUrl, List<dynamic>? tns, int? pic}) {
    return PlaylistTracksSongsAl()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..picUrl = picUrl ?? this.picUrl
      ..tns = tns ?? this.tns
      ..pic = pic ?? this.pic;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistTracksSongsH {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  PlaylistTracksSongsH();

  factory PlaylistTracksSongsH.fromJson(Map<String, dynamic> json) =>
      $PlaylistTracksSongsHFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistTracksSongsHToJson(this);

  PlaylistTracksSongsH copyWith(
      {int? br, int? fid, int? size, int? vd, int? sr}) {
    return PlaylistTracksSongsH()
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
class PlaylistTracksSongsM {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  PlaylistTracksSongsM();

  factory PlaylistTracksSongsM.fromJson(Map<String, dynamic> json) =>
      $PlaylistTracksSongsMFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistTracksSongsMToJson(this);

  PlaylistTracksSongsM copyWith(
      {int? br, int? fid, int? size, int? vd, int? sr}) {
    return PlaylistTracksSongsM()
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
class PlaylistTracksSongsL {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  PlaylistTracksSongsL();

  factory PlaylistTracksSongsL.fromJson(Map<String, dynamic> json) =>
      $PlaylistTracksSongsLFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistTracksSongsLToJson(this);

  PlaylistTracksSongsL copyWith(
      {int? br, int? fid, int? size, int? vd, int? sr}) {
    return PlaylistTracksSongsL()
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
class PlaylistTracksSongsSq {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  PlaylistTracksSongsSq();

  factory PlaylistTracksSongsSq.fromJson(Map<String, dynamic> json) =>
      $PlaylistTracksSongsSqFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistTracksSongsSqToJson(this);

  PlaylistTracksSongsSq copyWith(
      {int? br, int? fid, int? size, int? vd, int? sr}) {
    return PlaylistTracksSongsSq()
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
class PlaylistTracksSongsHr {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  PlaylistTracksSongsHr();

  factory PlaylistTracksSongsHr.fromJson(Map<String, dynamic> json) =>
      $PlaylistTracksSongsHrFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistTracksSongsHrToJson(this);

  PlaylistTracksSongsHr copyWith(
      {int? br, int? fid, int? size, int? vd, int? sr}) {
    return PlaylistTracksSongsHr()
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
class PlaylistTracksSongsNoCopyrightRcmd {
  int? type;
  String? typeDesc;
  dynamic songId;

  PlaylistTracksSongsNoCopyrightRcmd();

  factory PlaylistTracksSongsNoCopyrightRcmd.fromJson(
          Map<String, dynamic> json) =>
      $PlaylistTracksSongsNoCopyrightRcmdFromJson(json);

  Map<String, dynamic> toJson() =>
      $PlaylistTracksSongsNoCopyrightRcmdToJson(this);

  PlaylistTracksSongsNoCopyrightRcmd copyWith(
      {int? type, String? typeDesc, dynamic songId}) {
    return PlaylistTracksSongsNoCopyrightRcmd()
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
class PlaylistTracksPrivileges {
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
  PlaylistTracksPrivilegesFreeTrialPrivilege? freeTrialPrivilege;
  List<PlaylistTracksPrivilegesChargeInfoList>? chargeInfoList;

  PlaylistTracksPrivileges();

  factory PlaylistTracksPrivileges.fromJson(Map<String, dynamic> json) =>
      $PlaylistTracksPrivilegesFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistTracksPrivilegesToJson(this);

  PlaylistTracksPrivileges copyWith(
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
      PlaylistTracksPrivilegesFreeTrialPrivilege? freeTrialPrivilege,
      List<PlaylistTracksPrivilegesChargeInfoList>? chargeInfoList}) {
    return PlaylistTracksPrivileges()
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
class PlaylistTracksPrivilegesFreeTrialPrivilege {
  bool? resConsumable;
  bool? userConsumable;
  dynamic listenType;

  PlaylistTracksPrivilegesFreeTrialPrivilege();

  factory PlaylistTracksPrivilegesFreeTrialPrivilege.fromJson(
          Map<String, dynamic> json) =>
      $PlaylistTracksPrivilegesFreeTrialPrivilegeFromJson(json);

  Map<String, dynamic> toJson() =>
      $PlaylistTracksPrivilegesFreeTrialPrivilegeToJson(this);

  PlaylistTracksPrivilegesFreeTrialPrivilege copyWith(
      {bool? resConsumable, bool? userConsumable, dynamic listenType}) {
    return PlaylistTracksPrivilegesFreeTrialPrivilege()
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
class PlaylistTracksPrivilegesChargeInfoList {
  int? rate;
  dynamic chargeUrl;
  dynamic chargeMessage;
  int? chargeType;

  PlaylistTracksPrivilegesChargeInfoList();

  factory PlaylistTracksPrivilegesChargeInfoList.fromJson(
          Map<String, dynamic> json) =>
      $PlaylistTracksPrivilegesChargeInfoListFromJson(json);

  Map<String, dynamic> toJson() =>
      $PlaylistTracksPrivilegesChargeInfoListToJson(this);

  PlaylistTracksPrivilegesChargeInfoList copyWith(
      {int? rate, dynamic chargeUrl, dynamic chargeMessage, int? chargeType}) {
    return PlaylistTracksPrivilegesChargeInfoList()
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
