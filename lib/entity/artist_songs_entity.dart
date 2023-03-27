import 'package:music/entity/song_item.dart';
import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/artist_songs_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class ArtistSongsEntity {
  ArtistSongsArtist? artist;
  List<ArtistSongsHotSongs>? hotSongs;
  bool? more;
  int? code;

  ArtistSongsEntity();

  factory ArtistSongsEntity.fromJson(Map<String, dynamic> json) =>
      $ArtistSongsEntityFromJson(json);

  Map<String, dynamic> toJson() => $ArtistSongsEntityToJson(this);

  ArtistSongsEntity copyWith(
      {ArtistSongsArtist? artist,
      List<ArtistSongsHotSongs>? hotSongs,
      bool? more,
      int? code}) {
    return ArtistSongsEntity()
      ..artist = artist ?? this.artist
      ..hotSongs = hotSongs ?? this.hotSongs
      ..more = more ?? this.more
      ..code = code ?? this.code;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ArtistSongsArtist {
  int? img1v1Id;
  int? topicPerson;
  bool? followed;
  List<dynamic>? alias;
  int? picId;
  String? trans;
  int? musicSize;
  int? albumSize;
  String? briefDesc;
  String? picUrl;
  String? img1v1Url;
  String? name;
  int? id;
  int? publishTime;
  int? accountId;
  @JSONField(name: "picId_str")
  String? picidStr;
  @JSONField(name: "img1v1Id_str")
  String? img1v1idStr;
  int? mvSize;

  ArtistSongsArtist();

  factory ArtistSongsArtist.fromJson(Map<String, dynamic> json) =>
      $ArtistSongsArtistFromJson(json);

  Map<String, dynamic> toJson() => $ArtistSongsArtistToJson(this);

  ArtistSongsArtist copyWith(
      {int? img1v1Id,
      int? topicPerson,
      bool? followed,
      List<dynamic>? alias,
      int? picId,
      String? trans,
      int? musicSize,
      int? albumSize,
      String? briefDesc,
      String? picUrl,
      String? img1v1Url,
      String? name,
      int? id,
      int? publishTime,
      int? accountId,
      String? picidStr,
      String? img1v1idStr,
      int? mvSize}) {
    return ArtistSongsArtist()
      ..img1v1Id = img1v1Id ?? this.img1v1Id
      ..topicPerson = topicPerson ?? this.topicPerson
      ..followed = followed ?? this.followed
      ..alias = alias ?? this.alias
      ..picId = picId ?? this.picId
      ..trans = trans ?? this.trans
      ..musicSize = musicSize ?? this.musicSize
      ..albumSize = albumSize ?? this.albumSize
      ..briefDesc = briefDesc ?? this.briefDesc
      ..picUrl = picUrl ?? this.picUrl
      ..img1v1Url = img1v1Url ?? this.img1v1Url
      ..name = name ?? this.name
      ..id = id ?? this.id
      ..publishTime = publishTime ?? this.publishTime
      ..accountId = accountId ?? this.accountId
      ..picidStr = picidStr ?? this.picidStr
      ..img1v1idStr = img1v1idStr ?? this.img1v1idStr
      ..mvSize = mvSize ?? this.mvSize;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ArtistSongsHotSongs {
  List<dynamic>? rtUrls;
  List<ArtistSongsHotSongsAr>? ar;
  ArtistSongsHotSongsAl? al;
  int? st;
  dynamic noCopyrightRcmd;
  dynamic songJumpInfo;
  int? rtype;
  dynamic rurl;
  int? pst;
  List<String>? alia;
  int? pop;
  String? rt;
  int? mst;
  int? cp;
  int? dt;
  dynamic crbt;
  String? cf;
  dynamic rtUrl;
  int? ftype;
  int? djId;
  int? no;
  int? fee;
  int? mv;
  int? t;
  int? v;
  ArtistSongsHotSongsH? h;
  ArtistSongsHotSongsL? l;
  ArtistSongsHotSongsSq? sq;
  ArtistSongsHotSongsHr? hr;
  String? cd;
  dynamic a;
  ArtistSongsHotSongsM? m;
  String? name;
  int? id;
  ArtistSongsHotSongsPrivilege? privilege;

  ArtistSongsHotSongs();

  SongItem toSongItem() {
    return SongItem(
        id ?? 0,
        name ?? '',
        (ar ?? []).map((e) => Singer(e.id ?? 0, e.name ?? '')).toList(),
        alia ?? [],
        Album(al?.id ?? 0, al?.name ?? '', al?.picUrl ?? ''),
        mv ?? 0);
  }

  factory ArtistSongsHotSongs.fromJson(Map<String, dynamic> json) =>
      $ArtistSongsHotSongsFromJson(json);

  Map<String, dynamic> toJson() => $ArtistSongsHotSongsToJson(this);

  ArtistSongsHotSongs copyWith(
      {List<dynamic>? rtUrls,
      List<ArtistSongsHotSongsAr>? ar,
      ArtistSongsHotSongsAl? al,
      int? st,
      dynamic noCopyrightRcmd,
      dynamic songJumpInfo,
      int? rtype,
      dynamic rurl,
      int? pst,
      List<String>? alia,
      int? pop,
      String? rt,
      int? mst,
      int? cp,
      int? dt,
      dynamic crbt,
      String? cf,
      dynamic rtUrl,
      int? ftype,
      int? djId,
      int? no,
      int? fee,
      int? mv,
      int? t,
      int? v,
      ArtistSongsHotSongsH? h,
      ArtistSongsHotSongsL? l,
      ArtistSongsHotSongsSq? sq,
      ArtistSongsHotSongsHr? hr,
      String? cd,
      dynamic a,
      ArtistSongsHotSongsM? m,
      String? name,
      int? id,
      ArtistSongsHotSongsPrivilege? privilege}) {
    return ArtistSongsHotSongs()
      ..rtUrls = rtUrls ?? this.rtUrls
      ..ar = ar ?? this.ar
      ..al = al ?? this.al
      ..st = st ?? this.st
      ..noCopyrightRcmd = noCopyrightRcmd ?? this.noCopyrightRcmd
      ..songJumpInfo = songJumpInfo ?? this.songJumpInfo
      ..rtype = rtype ?? this.rtype
      ..rurl = rurl ?? this.rurl
      ..pst = pst ?? this.pst
      ..alia = alia ?? this.alia
      ..pop = pop ?? this.pop
      ..rt = rt ?? this.rt
      ..mst = mst ?? this.mst
      ..cp = cp ?? this.cp
      ..dt = dt ?? this.dt
      ..crbt = crbt ?? this.crbt
      ..cf = cf ?? this.cf
      ..rtUrl = rtUrl ?? this.rtUrl
      ..ftype = ftype ?? this.ftype
      ..djId = djId ?? this.djId
      ..no = no ?? this.no
      ..fee = fee ?? this.fee
      ..mv = mv ?? this.mv
      ..t = t ?? this.t
      ..v = v ?? this.v
      ..h = h ?? this.h
      ..l = l ?? this.l
      ..sq = sq ?? this.sq
      ..hr = hr ?? this.hr
      ..cd = cd ?? this.cd
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
class ArtistSongsHotSongsAr {
  int? id;
  String? name;

  ArtistSongsHotSongsAr();

  factory ArtistSongsHotSongsAr.fromJson(Map<String, dynamic> json) =>
      $ArtistSongsHotSongsArFromJson(json);

  Map<String, dynamic> toJson() => $ArtistSongsHotSongsArToJson(this);

  ArtistSongsHotSongsAr copyWith({int? id, String? name}) {
    return ArtistSongsHotSongsAr()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ArtistSongsHotSongsAl {
  int? id;
  String? name;
  String? picUrl;
  @JSONField(name: "pic_str")
  String? picStr;
  int? pic;

  ArtistSongsHotSongsAl();

  factory ArtistSongsHotSongsAl.fromJson(Map<String, dynamic> json) =>
      $ArtistSongsHotSongsAlFromJson(json);

  Map<String, dynamic> toJson() => $ArtistSongsHotSongsAlToJson(this);

  ArtistSongsHotSongsAl copyWith(
      {int? id, String? name, String? picUrl, String? picStr, int? pic}) {
    return ArtistSongsHotSongsAl()
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
class ArtistSongsHotSongsH {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  ArtistSongsHotSongsH();

  factory ArtistSongsHotSongsH.fromJson(Map<String, dynamic> json) =>
      $ArtistSongsHotSongsHFromJson(json);

  Map<String, dynamic> toJson() => $ArtistSongsHotSongsHToJson(this);

  ArtistSongsHotSongsH copyWith(
      {int? br, int? fid, int? size, int? vd, int? sr}) {
    return ArtistSongsHotSongsH()
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
class ArtistSongsHotSongsL {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  ArtistSongsHotSongsL();

  factory ArtistSongsHotSongsL.fromJson(Map<String, dynamic> json) =>
      $ArtistSongsHotSongsLFromJson(json);

  Map<String, dynamic> toJson() => $ArtistSongsHotSongsLToJson(this);

  ArtistSongsHotSongsL copyWith(
      {int? br, int? fid, int? size, int? vd, int? sr}) {
    return ArtistSongsHotSongsL()
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
class ArtistSongsHotSongsSq {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  ArtistSongsHotSongsSq();

  factory ArtistSongsHotSongsSq.fromJson(Map<String, dynamic> json) =>
      $ArtistSongsHotSongsSqFromJson(json);

  Map<String, dynamic> toJson() => $ArtistSongsHotSongsSqToJson(this);

  ArtistSongsHotSongsSq copyWith(
      {int? br, int? fid, int? size, int? vd, int? sr}) {
    return ArtistSongsHotSongsSq()
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
class ArtistSongsHotSongsHr {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  ArtistSongsHotSongsHr();

  factory ArtistSongsHotSongsHr.fromJson(Map<String, dynamic> json) =>
      $ArtistSongsHotSongsHrFromJson(json);

  Map<String, dynamic> toJson() => $ArtistSongsHotSongsHrToJson(this);

  ArtistSongsHotSongsHr copyWith(
      {int? br, int? fid, int? size, int? vd, int? sr}) {
    return ArtistSongsHotSongsHr()
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
class ArtistSongsHotSongsM {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  ArtistSongsHotSongsM();

  factory ArtistSongsHotSongsM.fromJson(Map<String, dynamic> json) =>
      $ArtistSongsHotSongsMFromJson(json);

  Map<String, dynamic> toJson() => $ArtistSongsHotSongsMToJson(this);

  ArtistSongsHotSongsM copyWith(
      {int? br, int? fid, int? size, int? vd, int? sr}) {
    return ArtistSongsHotSongsM()
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
class ArtistSongsHotSongsPrivilege {
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
  ArtistSongsHotSongsPrivilegeFreeTrialPrivilege? freeTrialPrivilege;
  List<ArtistSongsHotSongsPrivilegeChargeInfoList>? chargeInfoList;

  ArtistSongsHotSongsPrivilege();

  factory ArtistSongsHotSongsPrivilege.fromJson(Map<String, dynamic> json) =>
      $ArtistSongsHotSongsPrivilegeFromJson(json);

  Map<String, dynamic> toJson() => $ArtistSongsHotSongsPrivilegeToJson(this);

  ArtistSongsHotSongsPrivilege copyWith(
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
      ArtistSongsHotSongsPrivilegeFreeTrialPrivilege? freeTrialPrivilege,
      List<ArtistSongsHotSongsPrivilegeChargeInfoList>? chargeInfoList}) {
    return ArtistSongsHotSongsPrivilege()
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
class ArtistSongsHotSongsPrivilegeFreeTrialPrivilege {
  bool? resConsumable;
  bool? userConsumable;
  dynamic listenType;

  ArtistSongsHotSongsPrivilegeFreeTrialPrivilege();

  factory ArtistSongsHotSongsPrivilegeFreeTrialPrivilege.fromJson(
          Map<String, dynamic> json) =>
      $ArtistSongsHotSongsPrivilegeFreeTrialPrivilegeFromJson(json);

  Map<String, dynamic> toJson() =>
      $ArtistSongsHotSongsPrivilegeFreeTrialPrivilegeToJson(this);

  ArtistSongsHotSongsPrivilegeFreeTrialPrivilege copyWith(
      {bool? resConsumable, bool? userConsumable, dynamic listenType}) {
    return ArtistSongsHotSongsPrivilegeFreeTrialPrivilege()
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
class ArtistSongsHotSongsPrivilegeChargeInfoList {
  int? rate;
  dynamic chargeUrl;
  dynamic chargeMessage;
  int? chargeType;

  ArtistSongsHotSongsPrivilegeChargeInfoList();

  factory ArtistSongsHotSongsPrivilegeChargeInfoList.fromJson(
          Map<String, dynamic> json) =>
      $ArtistSongsHotSongsPrivilegeChargeInfoListFromJson(json);

  Map<String, dynamic> toJson() =>
      $ArtistSongsHotSongsPrivilegeChargeInfoListToJson(this);

  ArtistSongsHotSongsPrivilegeChargeInfoList copyWith(
      {int? rate, dynamic chargeUrl, dynamic chargeMessage, int? chargeType}) {
    return ArtistSongsHotSongsPrivilegeChargeInfoList()
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
