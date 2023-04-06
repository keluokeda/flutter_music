import 'package:music/entity/song_item.dart';
import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/cloud_song_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class CloudSongEntity {
  List<CloudSongData>? data;
  int? count;
  String? size;
  String? maxSize;
  int? upgradeSign;
  bool? hasMore;
  int? code;

  CloudSongEntity();

  factory CloudSongEntity.fromJson(Map<String, dynamic> json) =>
      $CloudSongEntityFromJson(json);

  Map<String, dynamic> toJson() => $CloudSongEntityToJson(this);

  CloudSongEntity copyWith(
      {List<CloudSongData>? data,
      int? count,
      String? size,
      String? maxSize,
      int? upgradeSign,
      bool? hasMore,
      int? code}) {
    return CloudSongEntity()
      ..data = data ?? this.data
      ..count = count ?? this.count
      ..size = size ?? this.size
      ..maxSize = maxSize ?? this.maxSize
      ..upgradeSign = upgradeSign ?? this.upgradeSign
      ..hasMore = hasMore ?? this.hasMore
      ..code = code ?? this.code;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CloudSongData {
  CloudSongDataSimpleSong? simpleSong;
  String? coverId;
  int? fileSize;
  String? album;
  String? artist;
  String? lyricId;
  int? bitrate;
  int? songId;
  int? addTime;
  String? songName;
  int? cover;
  int? version;
  String? fileName;

  CloudSongData();

  factory CloudSongData.fromJson(Map<String, dynamic> json) =>
      $CloudSongDataFromJson(json);

  Map<String, dynamic> toJson() => $CloudSongDataToJson(this);

  CloudSongData copyWith(
      {CloudSongDataSimpleSong? simpleSong,
      String? coverId,
      int? fileSize,
      String? album,
      String? artist,
      String? lyricId,
      int? bitrate,
      int? songId,
      int? addTime,
      String? songName,
      int? cover,
      int? version,
      String? fileName}) {
    return CloudSongData()
      ..simpleSong = simpleSong ?? this.simpleSong
      ..coverId = coverId ?? this.coverId
      ..fileSize = fileSize ?? this.fileSize
      ..album = album ?? this.album
      ..artist = artist ?? this.artist
      ..lyricId = lyricId ?? this.lyricId
      ..bitrate = bitrate ?? this.bitrate
      ..songId = songId ?? this.songId
      ..addTime = addTime ?? this.addTime
      ..songName = songName ?? this.songName
      ..cover = cover ?? this.cover
      ..version = version ?? this.version
      ..fileName = fileName ?? this.fileName;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CloudSongDataSimpleSong {
  String? name;
  int? id;
  int? pst;
  int? t;
  List<CloudSongDataSimpleSongAr>? ar;
  List<String>? alia;
  int? pop;
  int? st;
  String? rt;
  int? fee;
  int? v;
  dynamic crbt;
  String? cf;
  CloudSongDataSimpleSongAl? al;
  int? dt;
  CloudSongDataSimpleSongH? h;
  CloudSongDataSimpleSongM? m;
  CloudSongDataSimpleSongL? l;
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
  int? single;
  dynamic noCopyrightRcmd;
  int? mv;
  int? mst;
  int? cp;
  int? rtype;
  dynamic rurl;
  int? publishTime;
  CloudSongDataSimpleSongPrivilege? privilege;

  SongItem toSongItem() {
    return SongItem(
        id ?? 0,
        name ?? '',
        (ar ?? []).map((e) => Singer(e.id ?? 0, e.name ?? '')).toList(),
        alia ?? [],
        Album(al?.id ?? 0, al?.name ?? '', al?.picUrl ?? ''),
        mv ?? 0);
  }

  CloudSongDataSimpleSong();

  factory CloudSongDataSimpleSong.fromJson(Map<String, dynamic> json) =>
      $CloudSongDataSimpleSongFromJson(json);

  Map<String, dynamic> toJson() => $CloudSongDataSimpleSongToJson(this);

  CloudSongDataSimpleSong copyWith(
      {String? name,
      int? id,
      int? pst,
      int? t,
      List<CloudSongDataSimpleSongAr>? ar,
      List<String>? alia,
      int? pop,
      int? st,
      String? rt,
      int? fee,
      int? v,
      dynamic crbt,
      String? cf,
      CloudSongDataSimpleSongAl? al,
      int? dt,
      CloudSongDataSimpleSongH? h,
      CloudSongDataSimpleSongM? m,
      CloudSongDataSimpleSongL? l,
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
      int? single,
      dynamic noCopyrightRcmd,
      int? mv,
      int? mst,
      int? cp,
      int? rtype,
      dynamic rurl,
      int? publishTime,
      CloudSongDataSimpleSongPrivilege? privilege}) {
    return CloudSongDataSimpleSong()
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
      ..single = single ?? this.single
      ..noCopyrightRcmd = noCopyrightRcmd ?? this.noCopyrightRcmd
      ..mv = mv ?? this.mv
      ..mst = mst ?? this.mst
      ..cp = cp ?? this.cp
      ..rtype = rtype ?? this.rtype
      ..rurl = rurl ?? this.rurl
      ..publishTime = publishTime ?? this.publishTime
      ..privilege = privilege ?? this.privilege;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CloudSongDataSimpleSongAr {
  int? id;
  String? name;
  List<dynamic>? tns;
  List<dynamic>? alias;

  CloudSongDataSimpleSongAr();

  factory CloudSongDataSimpleSongAr.fromJson(Map<String, dynamic> json) =>
      $CloudSongDataSimpleSongArFromJson(json);

  Map<String, dynamic> toJson() => $CloudSongDataSimpleSongArToJson(this);

  CloudSongDataSimpleSongAr copyWith(
      {int? id, String? name, List<dynamic>? tns, List<dynamic>? alias}) {
    return CloudSongDataSimpleSongAr()
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
class CloudSongDataSimpleSongAl {
  int? id;
  String? name;
  String? picUrl;
  List<dynamic>? tns;
  @JSONField(name: "pic_str")
  String? picStr;
  int? pic;

  CloudSongDataSimpleSongAl();

  factory CloudSongDataSimpleSongAl.fromJson(Map<String, dynamic> json) =>
      $CloudSongDataSimpleSongAlFromJson(json);

  Map<String, dynamic> toJson() => $CloudSongDataSimpleSongAlToJson(this);

  CloudSongDataSimpleSongAl copyWith(
      {int? id,
      String? name,
      String? picUrl,
      List<dynamic>? tns,
      String? picStr,
      int? pic}) {
    return CloudSongDataSimpleSongAl()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..picUrl = picUrl ?? this.picUrl
      ..tns = tns ?? this.tns
      ..picStr = picStr ?? this.picStr
      ..pic = pic ?? this.pic;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CloudSongDataSimpleSongH {
  int? br;
  int? fid;
  int? size;
  int? vd;

  CloudSongDataSimpleSongH();

  factory CloudSongDataSimpleSongH.fromJson(Map<String, dynamic> json) =>
      $CloudSongDataSimpleSongHFromJson(json);

  Map<String, dynamic> toJson() => $CloudSongDataSimpleSongHToJson(this);

  CloudSongDataSimpleSongH copyWith({int? br, int? fid, int? size, int? vd}) {
    return CloudSongDataSimpleSongH()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CloudSongDataSimpleSongM {
  int? br;
  int? fid;
  int? size;
  int? vd;

  CloudSongDataSimpleSongM();

  factory CloudSongDataSimpleSongM.fromJson(Map<String, dynamic> json) =>
      $CloudSongDataSimpleSongMFromJson(json);

  Map<String, dynamic> toJson() => $CloudSongDataSimpleSongMToJson(this);

  CloudSongDataSimpleSongM copyWith({int? br, int? fid, int? size, int? vd}) {
    return CloudSongDataSimpleSongM()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CloudSongDataSimpleSongL {
  int? br;
  int? fid;
  int? size;
  int? vd;

  CloudSongDataSimpleSongL();

  factory CloudSongDataSimpleSongL.fromJson(Map<String, dynamic> json) =>
      $CloudSongDataSimpleSongLFromJson(json);

  Map<String, dynamic> toJson() => $CloudSongDataSimpleSongLToJson(this);

  CloudSongDataSimpleSongL copyWith({int? br, int? fid, int? size, int? vd}) {
    return CloudSongDataSimpleSongL()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CloudSongDataSimpleSongPrivilege {
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
  CloudSongDataSimpleSongPrivilegeFreeTrialPrivilege? freeTrialPrivilege;
  List<CloudSongDataSimpleSongPrivilegeChargeInfoList>? chargeInfoList;

  CloudSongDataSimpleSongPrivilege();

  factory CloudSongDataSimpleSongPrivilege.fromJson(
          Map<String, dynamic> json) =>
      $CloudSongDataSimpleSongPrivilegeFromJson(json);

  Map<String, dynamic> toJson() =>
      $CloudSongDataSimpleSongPrivilegeToJson(this);

  CloudSongDataSimpleSongPrivilege copyWith(
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
      CloudSongDataSimpleSongPrivilegeFreeTrialPrivilege? freeTrialPrivilege,
      List<CloudSongDataSimpleSongPrivilegeChargeInfoList>? chargeInfoList}) {
    return CloudSongDataSimpleSongPrivilege()
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
class CloudSongDataSimpleSongPrivilegeFreeTrialPrivilege {
  bool? resConsumable;
  bool? userConsumable;
  dynamic listenType;

  CloudSongDataSimpleSongPrivilegeFreeTrialPrivilege();

  factory CloudSongDataSimpleSongPrivilegeFreeTrialPrivilege.fromJson(
          Map<String, dynamic> json) =>
      $CloudSongDataSimpleSongPrivilegeFreeTrialPrivilegeFromJson(json);

  Map<String, dynamic> toJson() =>
      $CloudSongDataSimpleSongPrivilegeFreeTrialPrivilegeToJson(this);

  CloudSongDataSimpleSongPrivilegeFreeTrialPrivilege copyWith(
      {bool? resConsumable, bool? userConsumable, dynamic listenType}) {
    return CloudSongDataSimpleSongPrivilegeFreeTrialPrivilege()
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
class CloudSongDataSimpleSongPrivilegeChargeInfoList {
  int? rate;
  dynamic chargeUrl;
  dynamic chargeMessage;
  int? chargeType;

  CloudSongDataSimpleSongPrivilegeChargeInfoList();

  factory CloudSongDataSimpleSongPrivilegeChargeInfoList.fromJson(
          Map<String, dynamic> json) =>
      $CloudSongDataSimpleSongPrivilegeChargeInfoListFromJson(json);

  Map<String, dynamic> toJson() =>
      $CloudSongDataSimpleSongPrivilegeChargeInfoListToJson(this);

  CloudSongDataSimpleSongPrivilegeChargeInfoList copyWith(
      {int? rate, dynamic chargeUrl, dynamic chargeMessage, int? chargeType}) {
    return CloudSongDataSimpleSongPrivilegeChargeInfoList()
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
