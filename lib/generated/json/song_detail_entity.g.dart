import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/song_detail_entity.dart';
import 'package:music/entity/song_item.dart';


SongDetailEntity $SongDetailEntityFromJson(Map<String, dynamic> json) {
	final SongDetailEntity songDetailEntity = SongDetailEntity();
	final List<SongDetailSongs>? songs = jsonConvert.convertListNotNull<SongDetailSongs>(json['songs']);
	if (songs != null) {
		songDetailEntity.songs = songs;
	}
	final List<SongDetailPrivileges>? privileges = jsonConvert.convertListNotNull<SongDetailPrivileges>(json['privileges']);
	if (privileges != null) {
		songDetailEntity.privileges = privileges;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		songDetailEntity.code = code;
	}
	return songDetailEntity;
}

Map<String, dynamic> $SongDetailEntityToJson(SongDetailEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['songs'] =  entity.songs?.map((v) => v.toJson()).toList();
	data['privileges'] =  entity.privileges?.map((v) => v.toJson()).toList();
	data['code'] = entity.code;
	return data;
}

SongDetailSongs $SongDetailSongsFromJson(Map<String, dynamic> json) {
	final SongDetailSongs songDetailSongs = SongDetailSongs();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		songDetailSongs.name = name;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		songDetailSongs.id = id;
	}
	final int? pst = jsonConvert.convert<int>(json['pst']);
	if (pst != null) {
		songDetailSongs.pst = pst;
	}
	final int? t = jsonConvert.convert<int>(json['t']);
	if (t != null) {
		songDetailSongs.t = t;
	}
	final List<SongDetailSongsAr>? ar = jsonConvert.convertListNotNull<SongDetailSongsAr>(json['ar']);
	if (ar != null) {
		songDetailSongs.ar = ar;
	}
	final List<String>? alia = jsonConvert.convertListNotNull<String>(json['alia']);
	if (alia != null) {
		songDetailSongs.alia = alia;
	}
	final int? pop = jsonConvert.convert<int>(json['pop']);
	if (pop != null) {
		songDetailSongs.pop = pop;
	}
	final int? st = jsonConvert.convert<int>(json['st']);
	if (st != null) {
		songDetailSongs.st = st;
	}
	final String? rt = jsonConvert.convert<String>(json['rt']);
	if (rt != null) {
		songDetailSongs.rt = rt;
	}
	final int? fee = jsonConvert.convert<int>(json['fee']);
	if (fee != null) {
		songDetailSongs.fee = fee;
	}
	final int? v = jsonConvert.convert<int>(json['v']);
	if (v != null) {
		songDetailSongs.v = v;
	}
	final dynamic crbt = jsonConvert.convert<dynamic>(json['crbt']);
	if (crbt != null) {
		songDetailSongs.crbt = crbt;
	}
	final String? cf = jsonConvert.convert<String>(json['cf']);
	if (cf != null) {
		songDetailSongs.cf = cf;
	}
	final SongDetailSongsAl? al = jsonConvert.convert<SongDetailSongsAl>(json['al']);
	if (al != null) {
		songDetailSongs.al = al;
	}
	final int? dt = jsonConvert.convert<int>(json['dt']);
	if (dt != null) {
		songDetailSongs.dt = dt;
	}
	final SongDetailSongsH? h = jsonConvert.convert<SongDetailSongsH>(json['h']);
	if (h != null) {
		songDetailSongs.h = h;
	}
	final SongDetailSongsM? m = jsonConvert.convert<SongDetailSongsM>(json['m']);
	if (m != null) {
		songDetailSongs.m = m;
	}
	final SongDetailSongsL? l = jsonConvert.convert<SongDetailSongsL>(json['l']);
	if (l != null) {
		songDetailSongs.l = l;
	}
	final SongDetailSongsSq? sq = jsonConvert.convert<SongDetailSongsSq>(json['sq']);
	if (sq != null) {
		songDetailSongs.sq = sq;
	}
	final dynamic hr = jsonConvert.convert<dynamic>(json['hr']);
	if (hr != null) {
		songDetailSongs.hr = hr;
	}
	final dynamic a = jsonConvert.convert<dynamic>(json['a']);
	if (a != null) {
		songDetailSongs.a = a;
	}
	final String? cd = jsonConvert.convert<String>(json['cd']);
	if (cd != null) {
		songDetailSongs.cd = cd;
	}
	final int? no = jsonConvert.convert<int>(json['no']);
	if (no != null) {
		songDetailSongs.no = no;
	}
	final dynamic rtUrl = jsonConvert.convert<dynamic>(json['rtUrl']);
	if (rtUrl != null) {
		songDetailSongs.rtUrl = rtUrl;
	}
	final int? ftype = jsonConvert.convert<int>(json['ftype']);
	if (ftype != null) {
		songDetailSongs.ftype = ftype;
	}
	final List<dynamic>? rtUrls = jsonConvert.convertListNotNull<dynamic>(json['rtUrls']);
	if (rtUrls != null) {
		songDetailSongs.rtUrls = rtUrls;
	}
	final int? djId = jsonConvert.convert<int>(json['djId']);
	if (djId != null) {
		songDetailSongs.djId = djId;
	}
	final int? copyright = jsonConvert.convert<int>(json['copyright']);
	if (copyright != null) {
		songDetailSongs.copyright = copyright;
	}
	final int? sId = jsonConvert.convert<int>(json['s_id']);
	if (sId != null) {
		songDetailSongs.sId = sId;
	}
	final int? mark = jsonConvert.convert<int>(json['mark']);
	if (mark != null) {
		songDetailSongs.mark = mark;
	}
	final int? originCoverType = jsonConvert.convert<int>(json['originCoverType']);
	if (originCoverType != null) {
		songDetailSongs.originCoverType = originCoverType;
	}
	final dynamic originSongSimpleData = jsonConvert.convert<dynamic>(json['originSongSimpleData']);
	if (originSongSimpleData != null) {
		songDetailSongs.originSongSimpleData = originSongSimpleData;
	}
	final dynamic tagPicList = jsonConvert.convert<dynamic>(json['tagPicList']);
	if (tagPicList != null) {
		songDetailSongs.tagPicList = tagPicList;
	}
	final bool? resourceState = jsonConvert.convert<bool>(json['resourceState']);
	if (resourceState != null) {
		songDetailSongs.resourceState = resourceState;
	}
	final int? version = jsonConvert.convert<int>(json['version']);
	if (version != null) {
		songDetailSongs.version = version;
	}
	final dynamic songJumpInfo = jsonConvert.convert<dynamic>(json['songJumpInfo']);
	if (songJumpInfo != null) {
		songDetailSongs.songJumpInfo = songJumpInfo;
	}
	final dynamic entertainmentTags = jsonConvert.convert<dynamic>(json['entertainmentTags']);
	if (entertainmentTags != null) {
		songDetailSongs.entertainmentTags = entertainmentTags;
	}
	final dynamic awardTags = jsonConvert.convert<dynamic>(json['awardTags']);
	if (awardTags != null) {
		songDetailSongs.awardTags = awardTags;
	}
	final int? single = jsonConvert.convert<int>(json['single']);
	if (single != null) {
		songDetailSongs.single = single;
	}
	final dynamic noCopyrightRcmd = jsonConvert.convert<dynamic>(json['noCopyrightRcmd']);
	if (noCopyrightRcmd != null) {
		songDetailSongs.noCopyrightRcmd = noCopyrightRcmd;
	}
	final int? cp = jsonConvert.convert<int>(json['cp']);
	if (cp != null) {
		songDetailSongs.cp = cp;
	}
	final int? rtype = jsonConvert.convert<int>(json['rtype']);
	if (rtype != null) {
		songDetailSongs.rtype = rtype;
	}
	final dynamic rurl = jsonConvert.convert<dynamic>(json['rurl']);
	if (rurl != null) {
		songDetailSongs.rurl = rurl;
	}
	final int? mst = jsonConvert.convert<int>(json['mst']);
	if (mst != null) {
		songDetailSongs.mst = mst;
	}
	final int? mv = jsonConvert.convert<int>(json['mv']);
	if (mv != null) {
		songDetailSongs.mv = mv;
	}
	final int? publishTime = jsonConvert.convert<int>(json['publishTime']);
	if (publishTime != null) {
		songDetailSongs.publishTime = publishTime;
	}
	return songDetailSongs;
}

Map<String, dynamic> $SongDetailSongsToJson(SongDetailSongs entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['pst'] = entity.pst;
	data['t'] = entity.t;
	data['ar'] =  entity.ar?.map((v) => v.toJson()).toList();
	data['alia'] =  entity.alia;
	data['pop'] = entity.pop;
	data['st'] = entity.st;
	data['rt'] = entity.rt;
	data['fee'] = entity.fee;
	data['v'] = entity.v;
	data['crbt'] = entity.crbt;
	data['cf'] = entity.cf;
	data['al'] = entity.al?.toJson();
	data['dt'] = entity.dt;
	data['h'] = entity.h?.toJson();
	data['m'] = entity.m?.toJson();
	data['l'] = entity.l?.toJson();
	data['sq'] = entity.sq?.toJson();
	data['hr'] = entity.hr;
	data['a'] = entity.a;
	data['cd'] = entity.cd;
	data['no'] = entity.no;
	data['rtUrl'] = entity.rtUrl;
	data['ftype'] = entity.ftype;
	data['rtUrls'] =  entity.rtUrls;
	data['djId'] = entity.djId;
	data['copyright'] = entity.copyright;
	data['s_id'] = entity.sId;
	data['mark'] = entity.mark;
	data['originCoverType'] = entity.originCoverType;
	data['originSongSimpleData'] = entity.originSongSimpleData;
	data['tagPicList'] = entity.tagPicList;
	data['resourceState'] = entity.resourceState;
	data['version'] = entity.version;
	data['songJumpInfo'] = entity.songJumpInfo;
	data['entertainmentTags'] = entity.entertainmentTags;
	data['awardTags'] = entity.awardTags;
	data['single'] = entity.single;
	data['noCopyrightRcmd'] = entity.noCopyrightRcmd;
	data['cp'] = entity.cp;
	data['rtype'] = entity.rtype;
	data['rurl'] = entity.rurl;
	data['mst'] = entity.mst;
	data['mv'] = entity.mv;
	data['publishTime'] = entity.publishTime;
	return data;
}

SongDetailSongsAr $SongDetailSongsArFromJson(Map<String, dynamic> json) {
	final SongDetailSongsAr songDetailSongsAr = SongDetailSongsAr();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		songDetailSongsAr.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		songDetailSongsAr.name = name;
	}
	final List<dynamic>? tns = jsonConvert.convertListNotNull<dynamic>(json['tns']);
	if (tns != null) {
		songDetailSongsAr.tns = tns;
	}
	final List<dynamic>? alias = jsonConvert.convertListNotNull<dynamic>(json['alias']);
	if (alias != null) {
		songDetailSongsAr.alias = alias;
	}
	return songDetailSongsAr;
}

Map<String, dynamic> $SongDetailSongsArToJson(SongDetailSongsAr entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['tns'] =  entity.tns;
	data['alias'] =  entity.alias;
	return data;
}

SongDetailSongsAl $SongDetailSongsAlFromJson(Map<String, dynamic> json) {
	final SongDetailSongsAl songDetailSongsAl = SongDetailSongsAl();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		songDetailSongsAl.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		songDetailSongsAl.name = name;
	}
	final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
	if (picUrl != null) {
		songDetailSongsAl.picUrl = picUrl;
	}
	final List<dynamic>? tns = jsonConvert.convertListNotNull<dynamic>(json['tns']);
	if (tns != null) {
		songDetailSongsAl.tns = tns;
	}
	final String? picStr = jsonConvert.convert<String>(json['pic_str']);
	if (picStr != null) {
		songDetailSongsAl.picStr = picStr;
	}
	final int? pic = jsonConvert.convert<int>(json['pic']);
	if (pic != null) {
		songDetailSongsAl.pic = pic;
	}
	return songDetailSongsAl;
}

Map<String, dynamic> $SongDetailSongsAlToJson(SongDetailSongsAl entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['picUrl'] = entity.picUrl;
	data['tns'] =  entity.tns;
	data['pic_str'] = entity.picStr;
	data['pic'] = entity.pic;
	return data;
}

SongDetailSongsH $SongDetailSongsHFromJson(Map<String, dynamic> json) {
	final SongDetailSongsH songDetailSongsH = SongDetailSongsH();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		songDetailSongsH.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		songDetailSongsH.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		songDetailSongsH.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		songDetailSongsH.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		songDetailSongsH.sr = sr;
	}
	return songDetailSongsH;
}

Map<String, dynamic> $SongDetailSongsHToJson(SongDetailSongsH entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

SongDetailSongsM $SongDetailSongsMFromJson(Map<String, dynamic> json) {
	final SongDetailSongsM songDetailSongsM = SongDetailSongsM();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		songDetailSongsM.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		songDetailSongsM.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		songDetailSongsM.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		songDetailSongsM.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		songDetailSongsM.sr = sr;
	}
	return songDetailSongsM;
}

Map<String, dynamic> $SongDetailSongsMToJson(SongDetailSongsM entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

SongDetailSongsL $SongDetailSongsLFromJson(Map<String, dynamic> json) {
	final SongDetailSongsL songDetailSongsL = SongDetailSongsL();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		songDetailSongsL.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		songDetailSongsL.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		songDetailSongsL.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		songDetailSongsL.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		songDetailSongsL.sr = sr;
	}
	return songDetailSongsL;
}

Map<String, dynamic> $SongDetailSongsLToJson(SongDetailSongsL entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

SongDetailSongsSq $SongDetailSongsSqFromJson(Map<String, dynamic> json) {
	final SongDetailSongsSq songDetailSongsSq = SongDetailSongsSq();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		songDetailSongsSq.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		songDetailSongsSq.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		songDetailSongsSq.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		songDetailSongsSq.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		songDetailSongsSq.sr = sr;
	}
	return songDetailSongsSq;
}

Map<String, dynamic> $SongDetailSongsSqToJson(SongDetailSongsSq entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

SongDetailPrivileges $SongDetailPrivilegesFromJson(Map<String, dynamic> json) {
	final SongDetailPrivileges songDetailPrivileges = SongDetailPrivileges();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		songDetailPrivileges.id = id;
	}
	final int? fee = jsonConvert.convert<int>(json['fee']);
	if (fee != null) {
		songDetailPrivileges.fee = fee;
	}
	final int? payed = jsonConvert.convert<int>(json['payed']);
	if (payed != null) {
		songDetailPrivileges.payed = payed;
	}
	final int? st = jsonConvert.convert<int>(json['st']);
	if (st != null) {
		songDetailPrivileges.st = st;
	}
	final int? pl = jsonConvert.convert<int>(json['pl']);
	if (pl != null) {
		songDetailPrivileges.pl = pl;
	}
	final int? dl = jsonConvert.convert<int>(json['dl']);
	if (dl != null) {
		songDetailPrivileges.dl = dl;
	}
	final int? sp = jsonConvert.convert<int>(json['sp']);
	if (sp != null) {
		songDetailPrivileges.sp = sp;
	}
	final int? cp = jsonConvert.convert<int>(json['cp']);
	if (cp != null) {
		songDetailPrivileges.cp = cp;
	}
	final int? subp = jsonConvert.convert<int>(json['subp']);
	if (subp != null) {
		songDetailPrivileges.subp = subp;
	}
	final bool? cs = jsonConvert.convert<bool>(json['cs']);
	if (cs != null) {
		songDetailPrivileges.cs = cs;
	}
	final int? maxbr = jsonConvert.convert<int>(json['maxbr']);
	if (maxbr != null) {
		songDetailPrivileges.maxbr = maxbr;
	}
	final int? fl = jsonConvert.convert<int>(json['fl']);
	if (fl != null) {
		songDetailPrivileges.fl = fl;
	}
	final bool? toast = jsonConvert.convert<bool>(json['toast']);
	if (toast != null) {
		songDetailPrivileges.toast = toast;
	}
	final int? flag = jsonConvert.convert<int>(json['flag']);
	if (flag != null) {
		songDetailPrivileges.flag = flag;
	}
	final bool? preSell = jsonConvert.convert<bool>(json['preSell']);
	if (preSell != null) {
		songDetailPrivileges.preSell = preSell;
	}
	final int? playMaxbr = jsonConvert.convert<int>(json['playMaxbr']);
	if (playMaxbr != null) {
		songDetailPrivileges.playMaxbr = playMaxbr;
	}
	final int? downloadMaxbr = jsonConvert.convert<int>(json['downloadMaxbr']);
	if (downloadMaxbr != null) {
		songDetailPrivileges.downloadMaxbr = downloadMaxbr;
	}
	final String? maxBrLevel = jsonConvert.convert<String>(json['maxBrLevel']);
	if (maxBrLevel != null) {
		songDetailPrivileges.maxBrLevel = maxBrLevel;
	}
	final String? playMaxBrLevel = jsonConvert.convert<String>(json['playMaxBrLevel']);
	if (playMaxBrLevel != null) {
		songDetailPrivileges.playMaxBrLevel = playMaxBrLevel;
	}
	final String? downloadMaxBrLevel = jsonConvert.convert<String>(json['downloadMaxBrLevel']);
	if (downloadMaxBrLevel != null) {
		songDetailPrivileges.downloadMaxBrLevel = downloadMaxBrLevel;
	}
	final String? plLevel = jsonConvert.convert<String>(json['plLevel']);
	if (plLevel != null) {
		songDetailPrivileges.plLevel = plLevel;
	}
	final String? dlLevel = jsonConvert.convert<String>(json['dlLevel']);
	if (dlLevel != null) {
		songDetailPrivileges.dlLevel = dlLevel;
	}
	final String? flLevel = jsonConvert.convert<String>(json['flLevel']);
	if (flLevel != null) {
		songDetailPrivileges.flLevel = flLevel;
	}
	final dynamic rscl = jsonConvert.convert<dynamic>(json['rscl']);
	if (rscl != null) {
		songDetailPrivileges.rscl = rscl;
	}
	final SongDetailPrivilegesFreeTrialPrivilege? freeTrialPrivilege = jsonConvert.convert<SongDetailPrivilegesFreeTrialPrivilege>(json['freeTrialPrivilege']);
	if (freeTrialPrivilege != null) {
		songDetailPrivileges.freeTrialPrivilege = freeTrialPrivilege;
	}
	final List<SongDetailPrivilegesChargeInfoList>? chargeInfoList = jsonConvert.convertListNotNull<SongDetailPrivilegesChargeInfoList>(json['chargeInfoList']);
	if (chargeInfoList != null) {
		songDetailPrivileges.chargeInfoList = chargeInfoList;
	}
	return songDetailPrivileges;
}

Map<String, dynamic> $SongDetailPrivilegesToJson(SongDetailPrivileges entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['fee'] = entity.fee;
	data['payed'] = entity.payed;
	data['st'] = entity.st;
	data['pl'] = entity.pl;
	data['dl'] = entity.dl;
	data['sp'] = entity.sp;
	data['cp'] = entity.cp;
	data['subp'] = entity.subp;
	data['cs'] = entity.cs;
	data['maxbr'] = entity.maxbr;
	data['fl'] = entity.fl;
	data['toast'] = entity.toast;
	data['flag'] = entity.flag;
	data['preSell'] = entity.preSell;
	data['playMaxbr'] = entity.playMaxbr;
	data['downloadMaxbr'] = entity.downloadMaxbr;
	data['maxBrLevel'] = entity.maxBrLevel;
	data['playMaxBrLevel'] = entity.playMaxBrLevel;
	data['downloadMaxBrLevel'] = entity.downloadMaxBrLevel;
	data['plLevel'] = entity.plLevel;
	data['dlLevel'] = entity.dlLevel;
	data['flLevel'] = entity.flLevel;
	data['rscl'] = entity.rscl;
	data['freeTrialPrivilege'] = entity.freeTrialPrivilege?.toJson();
	data['chargeInfoList'] =  entity.chargeInfoList?.map((v) => v.toJson()).toList();
	return data;
}

SongDetailPrivilegesFreeTrialPrivilege $SongDetailPrivilegesFreeTrialPrivilegeFromJson(Map<String, dynamic> json) {
	final SongDetailPrivilegesFreeTrialPrivilege songDetailPrivilegesFreeTrialPrivilege = SongDetailPrivilegesFreeTrialPrivilege();
	final bool? resConsumable = jsonConvert.convert<bool>(json['resConsumable']);
	if (resConsumable != null) {
		songDetailPrivilegesFreeTrialPrivilege.resConsumable = resConsumable;
	}
	final bool? userConsumable = jsonConvert.convert<bool>(json['userConsumable']);
	if (userConsumable != null) {
		songDetailPrivilegesFreeTrialPrivilege.userConsumable = userConsumable;
	}
	final dynamic listenType = jsonConvert.convert<dynamic>(json['listenType']);
	if (listenType != null) {
		songDetailPrivilegesFreeTrialPrivilege.listenType = listenType;
	}
	return songDetailPrivilegesFreeTrialPrivilege;
}

Map<String, dynamic> $SongDetailPrivilegesFreeTrialPrivilegeToJson(SongDetailPrivilegesFreeTrialPrivilege entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['resConsumable'] = entity.resConsumable;
	data['userConsumable'] = entity.userConsumable;
	data['listenType'] = entity.listenType;
	return data;
}

SongDetailPrivilegesChargeInfoList $SongDetailPrivilegesChargeInfoListFromJson(Map<String, dynamic> json) {
	final SongDetailPrivilegesChargeInfoList songDetailPrivilegesChargeInfoList = SongDetailPrivilegesChargeInfoList();
	final int? rate = jsonConvert.convert<int>(json['rate']);
	if (rate != null) {
		songDetailPrivilegesChargeInfoList.rate = rate;
	}
	final dynamic chargeUrl = jsonConvert.convert<dynamic>(json['chargeUrl']);
	if (chargeUrl != null) {
		songDetailPrivilegesChargeInfoList.chargeUrl = chargeUrl;
	}
	final dynamic chargeMessage = jsonConvert.convert<dynamic>(json['chargeMessage']);
	if (chargeMessage != null) {
		songDetailPrivilegesChargeInfoList.chargeMessage = chargeMessage;
	}
	final int? chargeType = jsonConvert.convert<int>(json['chargeType']);
	if (chargeType != null) {
		songDetailPrivilegesChargeInfoList.chargeType = chargeType;
	}
	return songDetailPrivilegesChargeInfoList;
}

Map<String, dynamic> $SongDetailPrivilegesChargeInfoListToJson(SongDetailPrivilegesChargeInfoList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['rate'] = entity.rate;
	data['chargeUrl'] = entity.chargeUrl;
	data['chargeMessage'] = entity.chargeMessage;
	data['chargeType'] = entity.chargeType;
	return data;
}