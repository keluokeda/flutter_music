import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/album_detail_entity.dart';
import 'package:music/entity/song_item.dart';


AlbumDetailEntity $AlbumDetailEntityFromJson(Map<String, dynamic> json) {
	final AlbumDetailEntity albumDetailEntity = AlbumDetailEntity();
	final bool? resourceState = jsonConvert.convert<bool>(json['resourceState']);
	if (resourceState != null) {
		albumDetailEntity.resourceState = resourceState;
	}
	final List<AlbumDetailSongs>? songs = jsonConvert.convertListNotNull<AlbumDetailSongs>(json['songs']);
	if (songs != null) {
		albumDetailEntity.songs = songs;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		albumDetailEntity.code = code;
	}
	final AlbumDetailAlbum? album = jsonConvert.convert<AlbumDetailAlbum>(json['album']);
	if (album != null) {
		albumDetailEntity.album = album;
	}
	return albumDetailEntity;
}

Map<String, dynamic> $AlbumDetailEntityToJson(AlbumDetailEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['resourceState'] = entity.resourceState;
	data['songs'] =  entity.songs?.map((v) => v.toJson()).toList();
	data['code'] = entity.code;
	data['album'] = entity.album?.toJson();
	return data;
}

AlbumDetailSongs $AlbumDetailSongsFromJson(Map<String, dynamic> json) {
	final AlbumDetailSongs albumDetailSongs = AlbumDetailSongs();
	final List<dynamic>? rtUrls = jsonConvert.convertListNotNull<dynamic>(json['rtUrls']);
	if (rtUrls != null) {
		albumDetailSongs.rtUrls = rtUrls;
	}
	final List<AlbumDetailSongsAr>? ar = jsonConvert.convertListNotNull<AlbumDetailSongsAr>(json['ar']);
	if (ar != null) {
		albumDetailSongs.ar = ar;
	}
	final AlbumDetailSongsAl? al = jsonConvert.convert<AlbumDetailSongsAl>(json['al']);
	if (al != null) {
		albumDetailSongs.al = al;
	}
	final int? st = jsonConvert.convert<int>(json['st']);
	if (st != null) {
		albumDetailSongs.st = st;
	}
	final AlbumDetailSongsNoCopyrightRcmd? noCopyrightRcmd = jsonConvert.convert<AlbumDetailSongsNoCopyrightRcmd>(json['noCopyrightRcmd']);
	if (noCopyrightRcmd != null) {
		albumDetailSongs.noCopyrightRcmd = noCopyrightRcmd;
	}
	final dynamic songJumpInfo = jsonConvert.convert<dynamic>(json['songJumpInfo']);
	if (songJumpInfo != null) {
		albumDetailSongs.songJumpInfo = songJumpInfo;
	}
	final int? cp = jsonConvert.convert<int>(json['cp']);
	if (cp != null) {
		albumDetailSongs.cp = cp;
	}
	final dynamic crbt = jsonConvert.convert<dynamic>(json['crbt']);
	if (crbt != null) {
		albumDetailSongs.crbt = crbt;
	}
	final String? cf = jsonConvert.convert<String>(json['cf']);
	if (cf != null) {
		albumDetailSongs.cf = cf;
	}
	final int? dt = jsonConvert.convert<int>(json['dt']);
	if (dt != null) {
		albumDetailSongs.dt = dt;
	}
	final dynamic rtUrl = jsonConvert.convert<dynamic>(json['rtUrl']);
	if (rtUrl != null) {
		albumDetailSongs.rtUrl = rtUrl;
	}
	final int? ftype = jsonConvert.convert<int>(json['ftype']);
	if (ftype != null) {
		albumDetailSongs.ftype = ftype;
	}
	final int? rtype = jsonConvert.convert<int>(json['rtype']);
	if (rtype != null) {
		albumDetailSongs.rtype = rtype;
	}
	final dynamic rurl = jsonConvert.convert<dynamic>(json['rurl']);
	if (rurl != null) {
		albumDetailSongs.rurl = rurl;
	}
	final int? pst = jsonConvert.convert<int>(json['pst']);
	if (pst != null) {
		albumDetailSongs.pst = pst;
	}
	final List<String>? alia = jsonConvert.convertListNotNull<String>(json['alia']);
	if (alia != null) {
		albumDetailSongs.alia = alia;
	}
	final int? pop = jsonConvert.convert<int>(json['pop']);
	if (pop != null) {
		albumDetailSongs.pop = pop;
	}
	final String? rt = jsonConvert.convert<String>(json['rt']);
	if (rt != null) {
		albumDetailSongs.rt = rt;
	}
	final int? mst = jsonConvert.convert<int>(json['mst']);
	if (mst != null) {
		albumDetailSongs.mst = mst;
	}
	final String? cd = jsonConvert.convert<String>(json['cd']);
	if (cd != null) {
		albumDetailSongs.cd = cd;
	}
	final int? no = jsonConvert.convert<int>(json['no']);
	if (no != null) {
		albumDetailSongs.no = no;
	}
	final int? fee = jsonConvert.convert<int>(json['fee']);
	if (fee != null) {
		albumDetailSongs.fee = fee;
	}
	final int? djId = jsonConvert.convert<int>(json['djId']);
	if (djId != null) {
		albumDetailSongs.djId = djId;
	}
	final int? mv = jsonConvert.convert<int>(json['mv']);
	if (mv != null) {
		albumDetailSongs.mv = mv;
	}
	final int? t = jsonConvert.convert<int>(json['t']);
	if (t != null) {
		albumDetailSongs.t = t;
	}
	final int? v = jsonConvert.convert<int>(json['v']);
	if (v != null) {
		albumDetailSongs.v = v;
	}
	final AlbumDetailSongsH? h = jsonConvert.convert<AlbumDetailSongsH>(json['h']);
	if (h != null) {
		albumDetailSongs.h = h;
	}
	final AlbumDetailSongsL? l = jsonConvert.convert<AlbumDetailSongsL>(json['l']);
	if (l != null) {
		albumDetailSongs.l = l;
	}
	final AlbumDetailSongsSq? sq = jsonConvert.convert<AlbumDetailSongsSq>(json['sq']);
	if (sq != null) {
		albumDetailSongs.sq = sq;
	}
	final dynamic hr = jsonConvert.convert<dynamic>(json['hr']);
	if (hr != null) {
		albumDetailSongs.hr = hr;
	}
	final dynamic a = jsonConvert.convert<dynamic>(json['a']);
	if (a != null) {
		albumDetailSongs.a = a;
	}
	final AlbumDetailSongsM? m = jsonConvert.convert<AlbumDetailSongsM>(json['m']);
	if (m != null) {
		albumDetailSongs.m = m;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		albumDetailSongs.name = name;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		albumDetailSongs.id = id;
	}
	final AlbumDetailSongsPrivilege? privilege = jsonConvert.convert<AlbumDetailSongsPrivilege>(json['privilege']);
	if (privilege != null) {
		albumDetailSongs.privilege = privilege;
	}
	return albumDetailSongs;
}

Map<String, dynamic> $AlbumDetailSongsToJson(AlbumDetailSongs entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['rtUrls'] =  entity.rtUrls;
	data['ar'] =  entity.ar?.map((v) => v.toJson()).toList();
	data['al'] = entity.al?.toJson();
	data['st'] = entity.st;
	data['noCopyrightRcmd'] = entity.noCopyrightRcmd?.toJson();
	data['songJumpInfo'] = entity.songJumpInfo;
	data['cp'] = entity.cp;
	data['crbt'] = entity.crbt;
	data['cf'] = entity.cf;
	data['dt'] = entity.dt;
	data['rtUrl'] = entity.rtUrl;
	data['ftype'] = entity.ftype;
	data['rtype'] = entity.rtype;
	data['rurl'] = entity.rurl;
	data['pst'] = entity.pst;
	data['alia'] =  entity.alia;
	data['pop'] = entity.pop;
	data['rt'] = entity.rt;
	data['mst'] = entity.mst;
	data['cd'] = entity.cd;
	data['no'] = entity.no;
	data['fee'] = entity.fee;
	data['djId'] = entity.djId;
	data['mv'] = entity.mv;
	data['t'] = entity.t;
	data['v'] = entity.v;
	data['h'] = entity.h?.toJson();
	data['l'] = entity.l?.toJson();
	data['sq'] = entity.sq?.toJson();
	data['hr'] = entity.hr;
	data['a'] = entity.a;
	data['m'] = entity.m?.toJson();
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['privilege'] = entity.privilege?.toJson();
	return data;
}

AlbumDetailSongsAr $AlbumDetailSongsArFromJson(Map<String, dynamic> json) {
	final AlbumDetailSongsAr albumDetailSongsAr = AlbumDetailSongsAr();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		albumDetailSongsAr.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		albumDetailSongsAr.name = name;
	}
	return albumDetailSongsAr;
}

Map<String, dynamic> $AlbumDetailSongsArToJson(AlbumDetailSongsAr entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	return data;
}

AlbumDetailSongsAl $AlbumDetailSongsAlFromJson(Map<String, dynamic> json) {
	final AlbumDetailSongsAl albumDetailSongsAl = AlbumDetailSongsAl();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		albumDetailSongsAl.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		albumDetailSongsAl.name = name;
	}
	final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
	if (picUrl != null) {
		albumDetailSongsAl.picUrl = picUrl;
	}
	final String? picStr = jsonConvert.convert<String>(json['pic_str']);
	if (picStr != null) {
		albumDetailSongsAl.picStr = picStr;
	}
	final int? pic = jsonConvert.convert<int>(json['pic']);
	if (pic != null) {
		albumDetailSongsAl.pic = pic;
	}
	return albumDetailSongsAl;
}

Map<String, dynamic> $AlbumDetailSongsAlToJson(AlbumDetailSongsAl entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['picUrl'] = entity.picUrl;
	data['pic_str'] = entity.picStr;
	data['pic'] = entity.pic;
	return data;
}

AlbumDetailSongsNoCopyrightRcmd $AlbumDetailSongsNoCopyrightRcmdFromJson(Map<String, dynamic> json) {
	final AlbumDetailSongsNoCopyrightRcmd albumDetailSongsNoCopyrightRcmd = AlbumDetailSongsNoCopyrightRcmd();
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		albumDetailSongsNoCopyrightRcmd.type = type;
	}
	final String? typeDesc = jsonConvert.convert<String>(json['typeDesc']);
	if (typeDesc != null) {
		albumDetailSongsNoCopyrightRcmd.typeDesc = typeDesc;
	}
	final dynamic songId = jsonConvert.convert<dynamic>(json['songId']);
	if (songId != null) {
		albumDetailSongsNoCopyrightRcmd.songId = songId;
	}
	return albumDetailSongsNoCopyrightRcmd;
}

Map<String, dynamic> $AlbumDetailSongsNoCopyrightRcmdToJson(AlbumDetailSongsNoCopyrightRcmd entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['type'] = entity.type;
	data['typeDesc'] = entity.typeDesc;
	data['songId'] = entity.songId;
	return data;
}

AlbumDetailSongsH $AlbumDetailSongsHFromJson(Map<String, dynamic> json) {
	final AlbumDetailSongsH albumDetailSongsH = AlbumDetailSongsH();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		albumDetailSongsH.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		albumDetailSongsH.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		albumDetailSongsH.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		albumDetailSongsH.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		albumDetailSongsH.sr = sr;
	}
	return albumDetailSongsH;
}

Map<String, dynamic> $AlbumDetailSongsHToJson(AlbumDetailSongsH entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

AlbumDetailSongsL $AlbumDetailSongsLFromJson(Map<String, dynamic> json) {
	final AlbumDetailSongsL albumDetailSongsL = AlbumDetailSongsL();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		albumDetailSongsL.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		albumDetailSongsL.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		albumDetailSongsL.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		albumDetailSongsL.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		albumDetailSongsL.sr = sr;
	}
	return albumDetailSongsL;
}

Map<String, dynamic> $AlbumDetailSongsLToJson(AlbumDetailSongsL entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

AlbumDetailSongsSq $AlbumDetailSongsSqFromJson(Map<String, dynamic> json) {
	final AlbumDetailSongsSq albumDetailSongsSq = AlbumDetailSongsSq();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		albumDetailSongsSq.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		albumDetailSongsSq.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		albumDetailSongsSq.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		albumDetailSongsSq.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		albumDetailSongsSq.sr = sr;
	}
	return albumDetailSongsSq;
}

Map<String, dynamic> $AlbumDetailSongsSqToJson(AlbumDetailSongsSq entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

AlbumDetailSongsM $AlbumDetailSongsMFromJson(Map<String, dynamic> json) {
	final AlbumDetailSongsM albumDetailSongsM = AlbumDetailSongsM();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		albumDetailSongsM.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		albumDetailSongsM.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		albumDetailSongsM.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		albumDetailSongsM.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		albumDetailSongsM.sr = sr;
	}
	return albumDetailSongsM;
}

Map<String, dynamic> $AlbumDetailSongsMToJson(AlbumDetailSongsM entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

AlbumDetailSongsPrivilege $AlbumDetailSongsPrivilegeFromJson(Map<String, dynamic> json) {
	final AlbumDetailSongsPrivilege albumDetailSongsPrivilege = AlbumDetailSongsPrivilege();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		albumDetailSongsPrivilege.id = id;
	}
	final int? fee = jsonConvert.convert<int>(json['fee']);
	if (fee != null) {
		albumDetailSongsPrivilege.fee = fee;
	}
	final int? payed = jsonConvert.convert<int>(json['payed']);
	if (payed != null) {
		albumDetailSongsPrivilege.payed = payed;
	}
	final int? st = jsonConvert.convert<int>(json['st']);
	if (st != null) {
		albumDetailSongsPrivilege.st = st;
	}
	final int? pl = jsonConvert.convert<int>(json['pl']);
	if (pl != null) {
		albumDetailSongsPrivilege.pl = pl;
	}
	final int? dl = jsonConvert.convert<int>(json['dl']);
	if (dl != null) {
		albumDetailSongsPrivilege.dl = dl;
	}
	final int? sp = jsonConvert.convert<int>(json['sp']);
	if (sp != null) {
		albumDetailSongsPrivilege.sp = sp;
	}
	final int? cp = jsonConvert.convert<int>(json['cp']);
	if (cp != null) {
		albumDetailSongsPrivilege.cp = cp;
	}
	final int? subp = jsonConvert.convert<int>(json['subp']);
	if (subp != null) {
		albumDetailSongsPrivilege.subp = subp;
	}
	final bool? cs = jsonConvert.convert<bool>(json['cs']);
	if (cs != null) {
		albumDetailSongsPrivilege.cs = cs;
	}
	final int? maxbr = jsonConvert.convert<int>(json['maxbr']);
	if (maxbr != null) {
		albumDetailSongsPrivilege.maxbr = maxbr;
	}
	final int? fl = jsonConvert.convert<int>(json['fl']);
	if (fl != null) {
		albumDetailSongsPrivilege.fl = fl;
	}
	final bool? toast = jsonConvert.convert<bool>(json['toast']);
	if (toast != null) {
		albumDetailSongsPrivilege.toast = toast;
	}
	final int? flag = jsonConvert.convert<int>(json['flag']);
	if (flag != null) {
		albumDetailSongsPrivilege.flag = flag;
	}
	final bool? preSell = jsonConvert.convert<bool>(json['preSell']);
	if (preSell != null) {
		albumDetailSongsPrivilege.preSell = preSell;
	}
	final int? playMaxbr = jsonConvert.convert<int>(json['playMaxbr']);
	if (playMaxbr != null) {
		albumDetailSongsPrivilege.playMaxbr = playMaxbr;
	}
	final int? downloadMaxbr = jsonConvert.convert<int>(json['downloadMaxbr']);
	if (downloadMaxbr != null) {
		albumDetailSongsPrivilege.downloadMaxbr = downloadMaxbr;
	}
	final String? maxBrLevel = jsonConvert.convert<String>(json['maxBrLevel']);
	if (maxBrLevel != null) {
		albumDetailSongsPrivilege.maxBrLevel = maxBrLevel;
	}
	final String? playMaxBrLevel = jsonConvert.convert<String>(json['playMaxBrLevel']);
	if (playMaxBrLevel != null) {
		albumDetailSongsPrivilege.playMaxBrLevel = playMaxBrLevel;
	}
	final String? downloadMaxBrLevel = jsonConvert.convert<String>(json['downloadMaxBrLevel']);
	if (downloadMaxBrLevel != null) {
		albumDetailSongsPrivilege.downloadMaxBrLevel = downloadMaxBrLevel;
	}
	final String? plLevel = jsonConvert.convert<String>(json['plLevel']);
	if (plLevel != null) {
		albumDetailSongsPrivilege.plLevel = plLevel;
	}
	final String? dlLevel = jsonConvert.convert<String>(json['dlLevel']);
	if (dlLevel != null) {
		albumDetailSongsPrivilege.dlLevel = dlLevel;
	}
	final String? flLevel = jsonConvert.convert<String>(json['flLevel']);
	if (flLevel != null) {
		albumDetailSongsPrivilege.flLevel = flLevel;
	}
	final dynamic rscl = jsonConvert.convert<dynamic>(json['rscl']);
	if (rscl != null) {
		albumDetailSongsPrivilege.rscl = rscl;
	}
	final AlbumDetailSongsPrivilegeFreeTrialPrivilege? freeTrialPrivilege = jsonConvert.convert<AlbumDetailSongsPrivilegeFreeTrialPrivilege>(json['freeTrialPrivilege']);
	if (freeTrialPrivilege != null) {
		albumDetailSongsPrivilege.freeTrialPrivilege = freeTrialPrivilege;
	}
	final List<AlbumDetailSongsPrivilegeChargeInfoList>? chargeInfoList = jsonConvert.convertListNotNull<AlbumDetailSongsPrivilegeChargeInfoList>(json['chargeInfoList']);
	if (chargeInfoList != null) {
		albumDetailSongsPrivilege.chargeInfoList = chargeInfoList;
	}
	return albumDetailSongsPrivilege;
}

Map<String, dynamic> $AlbumDetailSongsPrivilegeToJson(AlbumDetailSongsPrivilege entity) {
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

AlbumDetailSongsPrivilegeFreeTrialPrivilege $AlbumDetailSongsPrivilegeFreeTrialPrivilegeFromJson(Map<String, dynamic> json) {
	final AlbumDetailSongsPrivilegeFreeTrialPrivilege albumDetailSongsPrivilegeFreeTrialPrivilege = AlbumDetailSongsPrivilegeFreeTrialPrivilege();
	final bool? resConsumable = jsonConvert.convert<bool>(json['resConsumable']);
	if (resConsumable != null) {
		albumDetailSongsPrivilegeFreeTrialPrivilege.resConsumable = resConsumable;
	}
	final bool? userConsumable = jsonConvert.convert<bool>(json['userConsumable']);
	if (userConsumable != null) {
		albumDetailSongsPrivilegeFreeTrialPrivilege.userConsumable = userConsumable;
	}
	final dynamic listenType = jsonConvert.convert<dynamic>(json['listenType']);
	if (listenType != null) {
		albumDetailSongsPrivilegeFreeTrialPrivilege.listenType = listenType;
	}
	return albumDetailSongsPrivilegeFreeTrialPrivilege;
}

Map<String, dynamic> $AlbumDetailSongsPrivilegeFreeTrialPrivilegeToJson(AlbumDetailSongsPrivilegeFreeTrialPrivilege entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['resConsumable'] = entity.resConsumable;
	data['userConsumable'] = entity.userConsumable;
	data['listenType'] = entity.listenType;
	return data;
}

AlbumDetailSongsPrivilegeChargeInfoList $AlbumDetailSongsPrivilegeChargeInfoListFromJson(Map<String, dynamic> json) {
	final AlbumDetailSongsPrivilegeChargeInfoList albumDetailSongsPrivilegeChargeInfoList = AlbumDetailSongsPrivilegeChargeInfoList();
	final int? rate = jsonConvert.convert<int>(json['rate']);
	if (rate != null) {
		albumDetailSongsPrivilegeChargeInfoList.rate = rate;
	}
	final dynamic chargeUrl = jsonConvert.convert<dynamic>(json['chargeUrl']);
	if (chargeUrl != null) {
		albumDetailSongsPrivilegeChargeInfoList.chargeUrl = chargeUrl;
	}
	final dynamic chargeMessage = jsonConvert.convert<dynamic>(json['chargeMessage']);
	if (chargeMessage != null) {
		albumDetailSongsPrivilegeChargeInfoList.chargeMessage = chargeMessage;
	}
	final int? chargeType = jsonConvert.convert<int>(json['chargeType']);
	if (chargeType != null) {
		albumDetailSongsPrivilegeChargeInfoList.chargeType = chargeType;
	}
	return albumDetailSongsPrivilegeChargeInfoList;
}

Map<String, dynamic> $AlbumDetailSongsPrivilegeChargeInfoListToJson(AlbumDetailSongsPrivilegeChargeInfoList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['rate'] = entity.rate;
	data['chargeUrl'] = entity.chargeUrl;
	data['chargeMessage'] = entity.chargeMessage;
	data['chargeType'] = entity.chargeType;
	return data;
}

AlbumDetailAlbum $AlbumDetailAlbumFromJson(Map<String, dynamic> json) {
	final AlbumDetailAlbum albumDetailAlbum = AlbumDetailAlbum();
	final List<dynamic>? songs = jsonConvert.convertListNotNull<dynamic>(json['songs']);
	if (songs != null) {
		albumDetailAlbum.songs = songs;
	}
	final bool? paid = jsonConvert.convert<bool>(json['paid']);
	if (paid != null) {
		albumDetailAlbum.paid = paid;
	}
	final bool? onSale = jsonConvert.convert<bool>(json['onSale']);
	if (onSale != null) {
		albumDetailAlbum.onSale = onSale;
	}
	final int? mark = jsonConvert.convert<int>(json['mark']);
	if (mark != null) {
		albumDetailAlbum.mark = mark;
	}
	final dynamic awardTags = jsonConvert.convert<dynamic>(json['awardTags']);
	if (awardTags != null) {
		albumDetailAlbum.awardTags = awardTags;
	}
	final int? companyId = jsonConvert.convert<int>(json['companyId']);
	if (companyId != null) {
		albumDetailAlbum.companyId = companyId;
	}
	final String? blurPicUrl = jsonConvert.convert<String>(json['blurPicUrl']);
	if (blurPicUrl != null) {
		albumDetailAlbum.blurPicUrl = blurPicUrl;
	}
	final int? pic = jsonConvert.convert<int>(json['pic']);
	if (pic != null) {
		albumDetailAlbum.pic = pic;
	}
	final List<dynamic>? alias = jsonConvert.convertListNotNull<dynamic>(json['alias']);
	if (alias != null) {
		albumDetailAlbum.alias = alias;
	}
	final List<AlbumDetailAlbumArtists>? artists = jsonConvert.convertListNotNull<AlbumDetailAlbumArtists>(json['artists']);
	if (artists != null) {
		albumDetailAlbum.artists = artists;
	}
	final int? copyrightId = jsonConvert.convert<int>(json['copyrightId']);
	if (copyrightId != null) {
		albumDetailAlbum.copyrightId = copyrightId;
	}
	final int? picId = jsonConvert.convert<int>(json['picId']);
	if (picId != null) {
		albumDetailAlbum.picId = picId;
	}
	final AlbumDetailAlbumArtist? artist = jsonConvert.convert<AlbumDetailAlbumArtist>(json['artist']);
	if (artist != null) {
		albumDetailAlbum.artist = artist;
	}
	final int? publishTime = jsonConvert.convert<int>(json['publishTime']);
	if (publishTime != null) {
		albumDetailAlbum.publishTime = publishTime;
	}
	final String? company = jsonConvert.convert<String>(json['company']);
	if (company != null) {
		albumDetailAlbum.company = company;
	}
	final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
	if (briefDesc != null) {
		albumDetailAlbum.briefDesc = briefDesc;
	}
	final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
	if (picUrl != null) {
		albumDetailAlbum.picUrl = picUrl;
	}
	final String? commentThreadId = jsonConvert.convert<String>(json['commentThreadId']);
	if (commentThreadId != null) {
		albumDetailAlbum.commentThreadId = commentThreadId;
	}
	final String? tags = jsonConvert.convert<String>(json['tags']);
	if (tags != null) {
		albumDetailAlbum.tags = tags;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		albumDetailAlbum.description = description;
	}
	final int? status = jsonConvert.convert<int>(json['status']);
	if (status != null) {
		albumDetailAlbum.status = status;
	}
	final String? subType = jsonConvert.convert<String>(json['subType']);
	if (subType != null) {
		albumDetailAlbum.subType = subType;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		albumDetailAlbum.name = name;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		albumDetailAlbum.id = id;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		albumDetailAlbum.type = type;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		albumDetailAlbum.size = size;
	}
	final String? picidStr = jsonConvert.convert<String>(json['picId_str']);
	if (picidStr != null) {
		albumDetailAlbum.picidStr = picidStr;
	}
	final AlbumDetailAlbumInfo? info = jsonConvert.convert<AlbumDetailAlbumInfo>(json['info']);
	if (info != null) {
		albumDetailAlbum.info = info;
	}
	return albumDetailAlbum;
}

Map<String, dynamic> $AlbumDetailAlbumToJson(AlbumDetailAlbum entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['songs'] =  entity.songs;
	data['paid'] = entity.paid;
	data['onSale'] = entity.onSale;
	data['mark'] = entity.mark;
	data['awardTags'] = entity.awardTags;
	data['companyId'] = entity.companyId;
	data['blurPicUrl'] = entity.blurPicUrl;
	data['pic'] = entity.pic;
	data['alias'] =  entity.alias;
	data['artists'] =  entity.artists?.map((v) => v.toJson()).toList();
	data['copyrightId'] = entity.copyrightId;
	data['picId'] = entity.picId;
	data['artist'] = entity.artist?.toJson();
	data['publishTime'] = entity.publishTime;
	data['company'] = entity.company;
	data['briefDesc'] = entity.briefDesc;
	data['picUrl'] = entity.picUrl;
	data['commentThreadId'] = entity.commentThreadId;
	data['tags'] = entity.tags;
	data['description'] = entity.description;
	data['status'] = entity.status;
	data['subType'] = entity.subType;
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['type'] = entity.type;
	data['size'] = entity.size;
	data['picId_str'] = entity.picidStr;
	data['info'] = entity.info?.toJson();
	return data;
}

AlbumDetailAlbumArtists $AlbumDetailAlbumArtistsFromJson(Map<String, dynamic> json) {
	final AlbumDetailAlbumArtists albumDetailAlbumArtists = AlbumDetailAlbumArtists();
	final int? img1v1Id = jsonConvert.convert<int>(json['img1v1Id']);
	if (img1v1Id != null) {
		albumDetailAlbumArtists.img1v1Id = img1v1Id;
	}
	final int? topicPerson = jsonConvert.convert<int>(json['topicPerson']);
	if (topicPerson != null) {
		albumDetailAlbumArtists.topicPerson = topicPerson;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		albumDetailAlbumArtists.followed = followed;
	}
	final List<dynamic>? alias = jsonConvert.convertListNotNull<dynamic>(json['alias']);
	if (alias != null) {
		albumDetailAlbumArtists.alias = alias;
	}
	final int? picId = jsonConvert.convert<int>(json['picId']);
	if (picId != null) {
		albumDetailAlbumArtists.picId = picId;
	}
	final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
	if (briefDesc != null) {
		albumDetailAlbumArtists.briefDesc = briefDesc;
	}
	final int? musicSize = jsonConvert.convert<int>(json['musicSize']);
	if (musicSize != null) {
		albumDetailAlbumArtists.musicSize = musicSize;
	}
	final int? albumSize = jsonConvert.convert<int>(json['albumSize']);
	if (albumSize != null) {
		albumDetailAlbumArtists.albumSize = albumSize;
	}
	final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
	if (picUrl != null) {
		albumDetailAlbumArtists.picUrl = picUrl;
	}
	final String? img1v1Url = jsonConvert.convert<String>(json['img1v1Url']);
	if (img1v1Url != null) {
		albumDetailAlbumArtists.img1v1Url = img1v1Url;
	}
	final String? trans = jsonConvert.convert<String>(json['trans']);
	if (trans != null) {
		albumDetailAlbumArtists.trans = trans;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		albumDetailAlbumArtists.name = name;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		albumDetailAlbumArtists.id = id;
	}
	final String? img1v1idStr = jsonConvert.convert<String>(json['img1v1Id_str']);
	if (img1v1idStr != null) {
		albumDetailAlbumArtists.img1v1idStr = img1v1idStr;
	}
	return albumDetailAlbumArtists;
}

Map<String, dynamic> $AlbumDetailAlbumArtistsToJson(AlbumDetailAlbumArtists entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['img1v1Id'] = entity.img1v1Id;
	data['topicPerson'] = entity.topicPerson;
	data['followed'] = entity.followed;
	data['alias'] =  entity.alias;
	data['picId'] = entity.picId;
	data['briefDesc'] = entity.briefDesc;
	data['musicSize'] = entity.musicSize;
	data['albumSize'] = entity.albumSize;
	data['picUrl'] = entity.picUrl;
	data['img1v1Url'] = entity.img1v1Url;
	data['trans'] = entity.trans;
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['img1v1Id_str'] = entity.img1v1idStr;
	return data;
}

AlbumDetailAlbumArtist $AlbumDetailAlbumArtistFromJson(Map<String, dynamic> json) {
	final AlbumDetailAlbumArtist albumDetailAlbumArtist = AlbumDetailAlbumArtist();
	final int? img1v1Id = jsonConvert.convert<int>(json['img1v1Id']);
	if (img1v1Id != null) {
		albumDetailAlbumArtist.img1v1Id = img1v1Id;
	}
	final int? topicPerson = jsonConvert.convert<int>(json['topicPerson']);
	if (topicPerson != null) {
		albumDetailAlbumArtist.topicPerson = topicPerson;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		albumDetailAlbumArtist.followed = followed;
	}
	final List<dynamic>? alias = jsonConvert.convertListNotNull<dynamic>(json['alias']);
	if (alias != null) {
		albumDetailAlbumArtist.alias = alias;
	}
	final int? picId = jsonConvert.convert<int>(json['picId']);
	if (picId != null) {
		albumDetailAlbumArtist.picId = picId;
	}
	final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
	if (briefDesc != null) {
		albumDetailAlbumArtist.briefDesc = briefDesc;
	}
	final int? musicSize = jsonConvert.convert<int>(json['musicSize']);
	if (musicSize != null) {
		albumDetailAlbumArtist.musicSize = musicSize;
	}
	final int? albumSize = jsonConvert.convert<int>(json['albumSize']);
	if (albumSize != null) {
		albumDetailAlbumArtist.albumSize = albumSize;
	}
	final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
	if (picUrl != null) {
		albumDetailAlbumArtist.picUrl = picUrl;
	}
	final String? img1v1Url = jsonConvert.convert<String>(json['img1v1Url']);
	if (img1v1Url != null) {
		albumDetailAlbumArtist.img1v1Url = img1v1Url;
	}
	final String? trans = jsonConvert.convert<String>(json['trans']);
	if (trans != null) {
		albumDetailAlbumArtist.trans = trans;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		albumDetailAlbumArtist.name = name;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		albumDetailAlbumArtist.id = id;
	}
	final String? picidStr = jsonConvert.convert<String>(json['picId_str']);
	if (picidStr != null) {
		albumDetailAlbumArtist.picidStr = picidStr;
	}
	final String? img1v1idStr = jsonConvert.convert<String>(json['img1v1Id_str']);
	if (img1v1idStr != null) {
		albumDetailAlbumArtist.img1v1idStr = img1v1idStr;
	}
	return albumDetailAlbumArtist;
}

Map<String, dynamic> $AlbumDetailAlbumArtistToJson(AlbumDetailAlbumArtist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['img1v1Id'] = entity.img1v1Id;
	data['topicPerson'] = entity.topicPerson;
	data['followed'] = entity.followed;
	data['alias'] =  entity.alias;
	data['picId'] = entity.picId;
	data['briefDesc'] = entity.briefDesc;
	data['musicSize'] = entity.musicSize;
	data['albumSize'] = entity.albumSize;
	data['picUrl'] = entity.picUrl;
	data['img1v1Url'] = entity.img1v1Url;
	data['trans'] = entity.trans;
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['picId_str'] = entity.picidStr;
	data['img1v1Id_str'] = entity.img1v1idStr;
	return data;
}

AlbumDetailAlbumInfo $AlbumDetailAlbumInfoFromJson(Map<String, dynamic> json) {
	final AlbumDetailAlbumInfo albumDetailAlbumInfo = AlbumDetailAlbumInfo();
	final AlbumDetailAlbumInfoCommentThread? commentThread = jsonConvert.convert<AlbumDetailAlbumInfoCommentThread>(json['commentThread']);
	if (commentThread != null) {
		albumDetailAlbumInfo.commentThread = commentThread;
	}
	final dynamic latestLikedUsers = jsonConvert.convert<dynamic>(json['latestLikedUsers']);
	if (latestLikedUsers != null) {
		albumDetailAlbumInfo.latestLikedUsers = latestLikedUsers;
	}
	final bool? liked = jsonConvert.convert<bool>(json['liked']);
	if (liked != null) {
		albumDetailAlbumInfo.liked = liked;
	}
	final dynamic comments = jsonConvert.convert<dynamic>(json['comments']);
	if (comments != null) {
		albumDetailAlbumInfo.comments = comments;
	}
	final int? resourceType = jsonConvert.convert<int>(json['resourceType']);
	if (resourceType != null) {
		albumDetailAlbumInfo.resourceType = resourceType;
	}
	final int? resourceId = jsonConvert.convert<int>(json['resourceId']);
	if (resourceId != null) {
		albumDetailAlbumInfo.resourceId = resourceId;
	}
	final int? commentCount = jsonConvert.convert<int>(json['commentCount']);
	if (commentCount != null) {
		albumDetailAlbumInfo.commentCount = commentCount;
	}
	final int? likedCount = jsonConvert.convert<int>(json['likedCount']);
	if (likedCount != null) {
		albumDetailAlbumInfo.likedCount = likedCount;
	}
	final int? shareCount = jsonConvert.convert<int>(json['shareCount']);
	if (shareCount != null) {
		albumDetailAlbumInfo.shareCount = shareCount;
	}
	final String? threadId = jsonConvert.convert<String>(json['threadId']);
	if (threadId != null) {
		albumDetailAlbumInfo.threadId = threadId;
	}
	return albumDetailAlbumInfo;
}

Map<String, dynamic> $AlbumDetailAlbumInfoToJson(AlbumDetailAlbumInfo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['commentThread'] = entity.commentThread?.toJson();
	data['latestLikedUsers'] = entity.latestLikedUsers;
	data['liked'] = entity.liked;
	data['comments'] = entity.comments;
	data['resourceType'] = entity.resourceType;
	data['resourceId'] = entity.resourceId;
	data['commentCount'] = entity.commentCount;
	data['likedCount'] = entity.likedCount;
	data['shareCount'] = entity.shareCount;
	data['threadId'] = entity.threadId;
	return data;
}

AlbumDetailAlbumInfoCommentThread $AlbumDetailAlbumInfoCommentThreadFromJson(Map<String, dynamic> json) {
	final AlbumDetailAlbumInfoCommentThread albumDetailAlbumInfoCommentThread = AlbumDetailAlbumInfoCommentThread();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		albumDetailAlbumInfoCommentThread.id = id;
	}
	final AlbumDetailAlbumInfoCommentThreadResourceInfo? resourceInfo = jsonConvert.convert<AlbumDetailAlbumInfoCommentThreadResourceInfo>(json['resourceInfo']);
	if (resourceInfo != null) {
		albumDetailAlbumInfoCommentThread.resourceInfo = resourceInfo;
	}
	final int? resourceType = jsonConvert.convert<int>(json['resourceType']);
	if (resourceType != null) {
		albumDetailAlbumInfoCommentThread.resourceType = resourceType;
	}
	final int? commentCount = jsonConvert.convert<int>(json['commentCount']);
	if (commentCount != null) {
		albumDetailAlbumInfoCommentThread.commentCount = commentCount;
	}
	final int? likedCount = jsonConvert.convert<int>(json['likedCount']);
	if (likedCount != null) {
		albumDetailAlbumInfoCommentThread.likedCount = likedCount;
	}
	final int? shareCount = jsonConvert.convert<int>(json['shareCount']);
	if (shareCount != null) {
		albumDetailAlbumInfoCommentThread.shareCount = shareCount;
	}
	final int? hotCount = jsonConvert.convert<int>(json['hotCount']);
	if (hotCount != null) {
		albumDetailAlbumInfoCommentThread.hotCount = hotCount;
	}
	final dynamic latestLikedUsers = jsonConvert.convert<dynamic>(json['latestLikedUsers']);
	if (latestLikedUsers != null) {
		albumDetailAlbumInfoCommentThread.latestLikedUsers = latestLikedUsers;
	}
	final int? resourceOwnerId = jsonConvert.convert<int>(json['resourceOwnerId']);
	if (resourceOwnerId != null) {
		albumDetailAlbumInfoCommentThread.resourceOwnerId = resourceOwnerId;
	}
	final String? resourceTitle = jsonConvert.convert<String>(json['resourceTitle']);
	if (resourceTitle != null) {
		albumDetailAlbumInfoCommentThread.resourceTitle = resourceTitle;
	}
	final int? resourceId = jsonConvert.convert<int>(json['resourceId']);
	if (resourceId != null) {
		albumDetailAlbumInfoCommentThread.resourceId = resourceId;
	}
	return albumDetailAlbumInfoCommentThread;
}

Map<String, dynamic> $AlbumDetailAlbumInfoCommentThreadToJson(AlbumDetailAlbumInfoCommentThread entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['resourceInfo'] = entity.resourceInfo?.toJson();
	data['resourceType'] = entity.resourceType;
	data['commentCount'] = entity.commentCount;
	data['likedCount'] = entity.likedCount;
	data['shareCount'] = entity.shareCount;
	data['hotCount'] = entity.hotCount;
	data['latestLikedUsers'] = entity.latestLikedUsers;
	data['resourceOwnerId'] = entity.resourceOwnerId;
	data['resourceTitle'] = entity.resourceTitle;
	data['resourceId'] = entity.resourceId;
	return data;
}

AlbumDetailAlbumInfoCommentThreadResourceInfo $AlbumDetailAlbumInfoCommentThreadResourceInfoFromJson(Map<String, dynamic> json) {
	final AlbumDetailAlbumInfoCommentThreadResourceInfo albumDetailAlbumInfoCommentThreadResourceInfo = AlbumDetailAlbumInfoCommentThreadResourceInfo();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		albumDetailAlbumInfoCommentThreadResourceInfo.id = id;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		albumDetailAlbumInfoCommentThreadResourceInfo.userId = userId;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		albumDetailAlbumInfoCommentThreadResourceInfo.name = name;
	}
	final String? imgUrl = jsonConvert.convert<String>(json['imgUrl']);
	if (imgUrl != null) {
		albumDetailAlbumInfoCommentThreadResourceInfo.imgUrl = imgUrl;
	}
	final dynamic creator = jsonConvert.convert<dynamic>(json['creator']);
	if (creator != null) {
		albumDetailAlbumInfoCommentThreadResourceInfo.creator = creator;
	}
	final dynamic encodedId = jsonConvert.convert<dynamic>(json['encodedId']);
	if (encodedId != null) {
		albumDetailAlbumInfoCommentThreadResourceInfo.encodedId = encodedId;
	}
	final dynamic subTitle = jsonConvert.convert<dynamic>(json['subTitle']);
	if (subTitle != null) {
		albumDetailAlbumInfoCommentThreadResourceInfo.subTitle = subTitle;
	}
	final dynamic webUrl = jsonConvert.convert<dynamic>(json['webUrl']);
	if (webUrl != null) {
		albumDetailAlbumInfoCommentThreadResourceInfo.webUrl = webUrl;
	}
	return albumDetailAlbumInfoCommentThreadResourceInfo;
}

Map<String, dynamic> $AlbumDetailAlbumInfoCommentThreadResourceInfoToJson(AlbumDetailAlbumInfoCommentThreadResourceInfo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['userId'] = entity.userId;
	data['name'] = entity.name;
	data['imgUrl'] = entity.imgUrl;
	data['creator'] = entity.creator;
	data['encodedId'] = entity.encodedId;
	data['subTitle'] = entity.subTitle;
	data['webUrl'] = entity.webUrl;
	return data;
}