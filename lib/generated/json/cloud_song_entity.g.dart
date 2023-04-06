import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/cloud_song_entity.dart';

CloudSongEntity $CloudSongEntityFromJson(Map<String, dynamic> json) {
	final CloudSongEntity cloudSongEntity = CloudSongEntity();
	final List<CloudSongData>? data = jsonConvert.convertListNotNull<CloudSongData>(json['data']);
	if (data != null) {
		cloudSongEntity.data = data;
	}
	final int? count = jsonConvert.convert<int>(json['count']);
	if (count != null) {
		cloudSongEntity.count = count;
	}
	final String? size = jsonConvert.convert<String>(json['size']);
	if (size != null) {
		cloudSongEntity.size = size;
	}
	final String? maxSize = jsonConvert.convert<String>(json['maxSize']);
	if (maxSize != null) {
		cloudSongEntity.maxSize = maxSize;
	}
	final int? upgradeSign = jsonConvert.convert<int>(json['upgradeSign']);
	if (upgradeSign != null) {
		cloudSongEntity.upgradeSign = upgradeSign;
	}
	final bool? hasMore = jsonConvert.convert<bool>(json['hasMore']);
	if (hasMore != null) {
		cloudSongEntity.hasMore = hasMore;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		cloudSongEntity.code = code;
	}
	return cloudSongEntity;
}

Map<String, dynamic> $CloudSongEntityToJson(CloudSongEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['data'] =  entity.data?.map((v) => v.toJson()).toList();
	data['count'] = entity.count;
	data['size'] = entity.size;
	data['maxSize'] = entity.maxSize;
	data['upgradeSign'] = entity.upgradeSign;
	data['hasMore'] = entity.hasMore;
	data['code'] = entity.code;
	return data;
}

CloudSongData $CloudSongDataFromJson(Map<String, dynamic> json) {
	final CloudSongData cloudSongData = CloudSongData();
	final CloudSongDataSimpleSong? simpleSong = jsonConvert.convert<CloudSongDataSimpleSong>(json['simpleSong']);
	if (simpleSong != null) {
		cloudSongData.simpleSong = simpleSong;
	}
	final String? coverId = jsonConvert.convert<String>(json['coverId']);
	if (coverId != null) {
		cloudSongData.coverId = coverId;
	}
	final int? fileSize = jsonConvert.convert<int>(json['fileSize']);
	if (fileSize != null) {
		cloudSongData.fileSize = fileSize;
	}
	final String? album = jsonConvert.convert<String>(json['album']);
	if (album != null) {
		cloudSongData.album = album;
	}
	final String? artist = jsonConvert.convert<String>(json['artist']);
	if (artist != null) {
		cloudSongData.artist = artist;
	}
	final String? lyricId = jsonConvert.convert<String>(json['lyricId']);
	if (lyricId != null) {
		cloudSongData.lyricId = lyricId;
	}
	final int? bitrate = jsonConvert.convert<int>(json['bitrate']);
	if (bitrate != null) {
		cloudSongData.bitrate = bitrate;
	}
	final int? songId = jsonConvert.convert<int>(json['songId']);
	if (songId != null) {
		cloudSongData.songId = songId;
	}
	final int? addTime = jsonConvert.convert<int>(json['addTime']);
	if (addTime != null) {
		cloudSongData.addTime = addTime;
	}
	final String? songName = jsonConvert.convert<String>(json['songName']);
	if (songName != null) {
		cloudSongData.songName = songName;
	}
	final int? cover = jsonConvert.convert<int>(json['cover']);
	if (cover != null) {
		cloudSongData.cover = cover;
	}
	final int? version = jsonConvert.convert<int>(json['version']);
	if (version != null) {
		cloudSongData.version = version;
	}
	final String? fileName = jsonConvert.convert<String>(json['fileName']);
	if (fileName != null) {
		cloudSongData.fileName = fileName;
	}
	return cloudSongData;
}

Map<String, dynamic> $CloudSongDataToJson(CloudSongData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['simpleSong'] = entity.simpleSong?.toJson();
	data['coverId'] = entity.coverId;
	data['fileSize'] = entity.fileSize;
	data['album'] = entity.album;
	data['artist'] = entity.artist;
	data['lyricId'] = entity.lyricId;
	data['bitrate'] = entity.bitrate;
	data['songId'] = entity.songId;
	data['addTime'] = entity.addTime;
	data['songName'] = entity.songName;
	data['cover'] = entity.cover;
	data['version'] = entity.version;
	data['fileName'] = entity.fileName;
	return data;
}

CloudSongDataSimpleSong $CloudSongDataSimpleSongFromJson(Map<String, dynamic> json) {
	final CloudSongDataSimpleSong cloudSongDataSimpleSong = CloudSongDataSimpleSong();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		cloudSongDataSimpleSong.name = name;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		cloudSongDataSimpleSong.id = id;
	}
	final int? pst = jsonConvert.convert<int>(json['pst']);
	if (pst != null) {
		cloudSongDataSimpleSong.pst = pst;
	}
	final int? t = jsonConvert.convert<int>(json['t']);
	if (t != null) {
		cloudSongDataSimpleSong.t = t;
	}
	final List<CloudSongDataSimpleSongAr>? ar = jsonConvert.convertListNotNull<CloudSongDataSimpleSongAr>(json['ar']);
	if (ar != null) {
		cloudSongDataSimpleSong.ar = ar;
	}
	final List<String>? alia = jsonConvert.convertListNotNull<String>(json['alia']);
	if (alia != null) {
		cloudSongDataSimpleSong.alia = alia;
	}
	final int? pop = jsonConvert.convert<int>(json['pop']);
	if (pop != null) {
		cloudSongDataSimpleSong.pop = pop;
	}
	final int? st = jsonConvert.convert<int>(json['st']);
	if (st != null) {
		cloudSongDataSimpleSong.st = st;
	}
	final String? rt = jsonConvert.convert<String>(json['rt']);
	if (rt != null) {
		cloudSongDataSimpleSong.rt = rt;
	}
	final int? fee = jsonConvert.convert<int>(json['fee']);
	if (fee != null) {
		cloudSongDataSimpleSong.fee = fee;
	}
	final int? v = jsonConvert.convert<int>(json['v']);
	if (v != null) {
		cloudSongDataSimpleSong.v = v;
	}
	final dynamic crbt = jsonConvert.convert<dynamic>(json['crbt']);
	if (crbt != null) {
		cloudSongDataSimpleSong.crbt = crbt;
	}
	final String? cf = jsonConvert.convert<String>(json['cf']);
	if (cf != null) {
		cloudSongDataSimpleSong.cf = cf;
	}
	final CloudSongDataSimpleSongAl? al = jsonConvert.convert<CloudSongDataSimpleSongAl>(json['al']);
	if (al != null) {
		cloudSongDataSimpleSong.al = al;
	}
	final int? dt = jsonConvert.convert<int>(json['dt']);
	if (dt != null) {
		cloudSongDataSimpleSong.dt = dt;
	}
	final CloudSongDataSimpleSongH? h = jsonConvert.convert<CloudSongDataSimpleSongH>(json['h']);
	if (h != null) {
		cloudSongDataSimpleSong.h = h;
	}
	final CloudSongDataSimpleSongM? m = jsonConvert.convert<CloudSongDataSimpleSongM>(json['m']);
	if (m != null) {
		cloudSongDataSimpleSong.m = m;
	}
	final CloudSongDataSimpleSongL? l = jsonConvert.convert<CloudSongDataSimpleSongL>(json['l']);
	if (l != null) {
		cloudSongDataSimpleSong.l = l;
	}
	final dynamic a = jsonConvert.convert<dynamic>(json['a']);
	if (a != null) {
		cloudSongDataSimpleSong.a = a;
	}
	final String? cd = jsonConvert.convert<String>(json['cd']);
	if (cd != null) {
		cloudSongDataSimpleSong.cd = cd;
	}
	final int? no = jsonConvert.convert<int>(json['no']);
	if (no != null) {
		cloudSongDataSimpleSong.no = no;
	}
	final dynamic rtUrl = jsonConvert.convert<dynamic>(json['rtUrl']);
	if (rtUrl != null) {
		cloudSongDataSimpleSong.rtUrl = rtUrl;
	}
	final int? ftype = jsonConvert.convert<int>(json['ftype']);
	if (ftype != null) {
		cloudSongDataSimpleSong.ftype = ftype;
	}
	final List<dynamic>? rtUrls = jsonConvert.convertListNotNull<dynamic>(json['rtUrls']);
	if (rtUrls != null) {
		cloudSongDataSimpleSong.rtUrls = rtUrls;
	}
	final int? djId = jsonConvert.convert<int>(json['djId']);
	if (djId != null) {
		cloudSongDataSimpleSong.djId = djId;
	}
	final int? copyright = jsonConvert.convert<int>(json['copyright']);
	if (copyright != null) {
		cloudSongDataSimpleSong.copyright = copyright;
	}
	final int? sId = jsonConvert.convert<int>(json['s_id']);
	if (sId != null) {
		cloudSongDataSimpleSong.sId = sId;
	}
	final int? mark = jsonConvert.convert<int>(json['mark']);
	if (mark != null) {
		cloudSongDataSimpleSong.mark = mark;
	}
	final int? originCoverType = jsonConvert.convert<int>(json['originCoverType']);
	if (originCoverType != null) {
		cloudSongDataSimpleSong.originCoverType = originCoverType;
	}
	final dynamic originSongSimpleData = jsonConvert.convert<dynamic>(json['originSongSimpleData']);
	if (originSongSimpleData != null) {
		cloudSongDataSimpleSong.originSongSimpleData = originSongSimpleData;
	}
	final int? single = jsonConvert.convert<int>(json['single']);
	if (single != null) {
		cloudSongDataSimpleSong.single = single;
	}
	final dynamic noCopyrightRcmd = jsonConvert.convert<dynamic>(json['noCopyrightRcmd']);
	if (noCopyrightRcmd != null) {
		cloudSongDataSimpleSong.noCopyrightRcmd = noCopyrightRcmd;
	}
	final int? mv = jsonConvert.convert<int>(json['mv']);
	if (mv != null) {
		cloudSongDataSimpleSong.mv = mv;
	}
	final int? mst = jsonConvert.convert<int>(json['mst']);
	if (mst != null) {
		cloudSongDataSimpleSong.mst = mst;
	}
	final int? cp = jsonConvert.convert<int>(json['cp']);
	if (cp != null) {
		cloudSongDataSimpleSong.cp = cp;
	}
	final int? rtype = jsonConvert.convert<int>(json['rtype']);
	if (rtype != null) {
		cloudSongDataSimpleSong.rtype = rtype;
	}
	final dynamic rurl = jsonConvert.convert<dynamic>(json['rurl']);
	if (rurl != null) {
		cloudSongDataSimpleSong.rurl = rurl;
	}
	final int? publishTime = jsonConvert.convert<int>(json['publishTime']);
	if (publishTime != null) {
		cloudSongDataSimpleSong.publishTime = publishTime;
	}
	final CloudSongDataSimpleSongPrivilege? privilege = jsonConvert.convert<CloudSongDataSimpleSongPrivilege>(json['privilege']);
	if (privilege != null) {
		cloudSongDataSimpleSong.privilege = privilege;
	}
	return cloudSongDataSimpleSong;
}

Map<String, dynamic> $CloudSongDataSimpleSongToJson(CloudSongDataSimpleSong entity) {
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
	data['single'] = entity.single;
	data['noCopyrightRcmd'] = entity.noCopyrightRcmd;
	data['mv'] = entity.mv;
	data['mst'] = entity.mst;
	data['cp'] = entity.cp;
	data['rtype'] = entity.rtype;
	data['rurl'] = entity.rurl;
	data['publishTime'] = entity.publishTime;
	data['privilege'] = entity.privilege?.toJson();
	return data;
}

CloudSongDataSimpleSongAr $CloudSongDataSimpleSongArFromJson(Map<String, dynamic> json) {
	final CloudSongDataSimpleSongAr cloudSongDataSimpleSongAr = CloudSongDataSimpleSongAr();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		cloudSongDataSimpleSongAr.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		cloudSongDataSimpleSongAr.name = name;
	}
	final List<dynamic>? tns = jsonConvert.convertListNotNull<dynamic>(json['tns']);
	if (tns != null) {
		cloudSongDataSimpleSongAr.tns = tns;
	}
	final List<dynamic>? alias = jsonConvert.convertListNotNull<dynamic>(json['alias']);
	if (alias != null) {
		cloudSongDataSimpleSongAr.alias = alias;
	}
	return cloudSongDataSimpleSongAr;
}

Map<String, dynamic> $CloudSongDataSimpleSongArToJson(CloudSongDataSimpleSongAr entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['tns'] =  entity.tns;
	data['alias'] =  entity.alias;
	return data;
}

CloudSongDataSimpleSongAl $CloudSongDataSimpleSongAlFromJson(Map<String, dynamic> json) {
	final CloudSongDataSimpleSongAl cloudSongDataSimpleSongAl = CloudSongDataSimpleSongAl();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		cloudSongDataSimpleSongAl.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		cloudSongDataSimpleSongAl.name = name;
	}
	final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
	if (picUrl != null) {
		cloudSongDataSimpleSongAl.picUrl = picUrl;
	}
	final List<dynamic>? tns = jsonConvert.convertListNotNull<dynamic>(json['tns']);
	if (tns != null) {
		cloudSongDataSimpleSongAl.tns = tns;
	}
	final String? picStr = jsonConvert.convert<String>(json['pic_str']);
	if (picStr != null) {
		cloudSongDataSimpleSongAl.picStr = picStr;
	}
	final int? pic = jsonConvert.convert<int>(json['pic']);
	if (pic != null) {
		cloudSongDataSimpleSongAl.pic = pic;
	}
	return cloudSongDataSimpleSongAl;
}

Map<String, dynamic> $CloudSongDataSimpleSongAlToJson(CloudSongDataSimpleSongAl entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['picUrl'] = entity.picUrl;
	data['tns'] =  entity.tns;
	data['pic_str'] = entity.picStr;
	data['pic'] = entity.pic;
	return data;
}

CloudSongDataSimpleSongH $CloudSongDataSimpleSongHFromJson(Map<String, dynamic> json) {
	final CloudSongDataSimpleSongH cloudSongDataSimpleSongH = CloudSongDataSimpleSongH();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		cloudSongDataSimpleSongH.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		cloudSongDataSimpleSongH.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		cloudSongDataSimpleSongH.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		cloudSongDataSimpleSongH.vd = vd;
	}
	return cloudSongDataSimpleSongH;
}

Map<String, dynamic> $CloudSongDataSimpleSongHToJson(CloudSongDataSimpleSongH entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	return data;
}

CloudSongDataSimpleSongM $CloudSongDataSimpleSongMFromJson(Map<String, dynamic> json) {
	final CloudSongDataSimpleSongM cloudSongDataSimpleSongM = CloudSongDataSimpleSongM();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		cloudSongDataSimpleSongM.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		cloudSongDataSimpleSongM.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		cloudSongDataSimpleSongM.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		cloudSongDataSimpleSongM.vd = vd;
	}
	return cloudSongDataSimpleSongM;
}

Map<String, dynamic> $CloudSongDataSimpleSongMToJson(CloudSongDataSimpleSongM entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	return data;
}

CloudSongDataSimpleSongL $CloudSongDataSimpleSongLFromJson(Map<String, dynamic> json) {
	final CloudSongDataSimpleSongL cloudSongDataSimpleSongL = CloudSongDataSimpleSongL();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		cloudSongDataSimpleSongL.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		cloudSongDataSimpleSongL.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		cloudSongDataSimpleSongL.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		cloudSongDataSimpleSongL.vd = vd;
	}
	return cloudSongDataSimpleSongL;
}

Map<String, dynamic> $CloudSongDataSimpleSongLToJson(CloudSongDataSimpleSongL entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	return data;
}

CloudSongDataSimpleSongPrivilege $CloudSongDataSimpleSongPrivilegeFromJson(Map<String, dynamic> json) {
	final CloudSongDataSimpleSongPrivilege cloudSongDataSimpleSongPrivilege = CloudSongDataSimpleSongPrivilege();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		cloudSongDataSimpleSongPrivilege.id = id;
	}
	final int? fee = jsonConvert.convert<int>(json['fee']);
	if (fee != null) {
		cloudSongDataSimpleSongPrivilege.fee = fee;
	}
	final int? payed = jsonConvert.convert<int>(json['payed']);
	if (payed != null) {
		cloudSongDataSimpleSongPrivilege.payed = payed;
	}
	final int? st = jsonConvert.convert<int>(json['st']);
	if (st != null) {
		cloudSongDataSimpleSongPrivilege.st = st;
	}
	final int? pl = jsonConvert.convert<int>(json['pl']);
	if (pl != null) {
		cloudSongDataSimpleSongPrivilege.pl = pl;
	}
	final int? dl = jsonConvert.convert<int>(json['dl']);
	if (dl != null) {
		cloudSongDataSimpleSongPrivilege.dl = dl;
	}
	final int? sp = jsonConvert.convert<int>(json['sp']);
	if (sp != null) {
		cloudSongDataSimpleSongPrivilege.sp = sp;
	}
	final int? cp = jsonConvert.convert<int>(json['cp']);
	if (cp != null) {
		cloudSongDataSimpleSongPrivilege.cp = cp;
	}
	final int? subp = jsonConvert.convert<int>(json['subp']);
	if (subp != null) {
		cloudSongDataSimpleSongPrivilege.subp = subp;
	}
	final bool? cs = jsonConvert.convert<bool>(json['cs']);
	if (cs != null) {
		cloudSongDataSimpleSongPrivilege.cs = cs;
	}
	final int? maxbr = jsonConvert.convert<int>(json['maxbr']);
	if (maxbr != null) {
		cloudSongDataSimpleSongPrivilege.maxbr = maxbr;
	}
	final int? fl = jsonConvert.convert<int>(json['fl']);
	if (fl != null) {
		cloudSongDataSimpleSongPrivilege.fl = fl;
	}
	final bool? toast = jsonConvert.convert<bool>(json['toast']);
	if (toast != null) {
		cloudSongDataSimpleSongPrivilege.toast = toast;
	}
	final int? flag = jsonConvert.convert<int>(json['flag']);
	if (flag != null) {
		cloudSongDataSimpleSongPrivilege.flag = flag;
	}
	final bool? preSell = jsonConvert.convert<bool>(json['preSell']);
	if (preSell != null) {
		cloudSongDataSimpleSongPrivilege.preSell = preSell;
	}
	final int? playMaxbr = jsonConvert.convert<int>(json['playMaxbr']);
	if (playMaxbr != null) {
		cloudSongDataSimpleSongPrivilege.playMaxbr = playMaxbr;
	}
	final int? downloadMaxbr = jsonConvert.convert<int>(json['downloadMaxbr']);
	if (downloadMaxbr != null) {
		cloudSongDataSimpleSongPrivilege.downloadMaxbr = downloadMaxbr;
	}
	final String? maxBrLevel = jsonConvert.convert<String>(json['maxBrLevel']);
	if (maxBrLevel != null) {
		cloudSongDataSimpleSongPrivilege.maxBrLevel = maxBrLevel;
	}
	final String? playMaxBrLevel = jsonConvert.convert<String>(json['playMaxBrLevel']);
	if (playMaxBrLevel != null) {
		cloudSongDataSimpleSongPrivilege.playMaxBrLevel = playMaxBrLevel;
	}
	final String? downloadMaxBrLevel = jsonConvert.convert<String>(json['downloadMaxBrLevel']);
	if (downloadMaxBrLevel != null) {
		cloudSongDataSimpleSongPrivilege.downloadMaxBrLevel = downloadMaxBrLevel;
	}
	final String? plLevel = jsonConvert.convert<String>(json['plLevel']);
	if (plLevel != null) {
		cloudSongDataSimpleSongPrivilege.plLevel = plLevel;
	}
	final String? dlLevel = jsonConvert.convert<String>(json['dlLevel']);
	if (dlLevel != null) {
		cloudSongDataSimpleSongPrivilege.dlLevel = dlLevel;
	}
	final String? flLevel = jsonConvert.convert<String>(json['flLevel']);
	if (flLevel != null) {
		cloudSongDataSimpleSongPrivilege.flLevel = flLevel;
	}
	final dynamic rscl = jsonConvert.convert<dynamic>(json['rscl']);
	if (rscl != null) {
		cloudSongDataSimpleSongPrivilege.rscl = rscl;
	}
	final CloudSongDataSimpleSongPrivilegeFreeTrialPrivilege? freeTrialPrivilege = jsonConvert.convert<CloudSongDataSimpleSongPrivilegeFreeTrialPrivilege>(json['freeTrialPrivilege']);
	if (freeTrialPrivilege != null) {
		cloudSongDataSimpleSongPrivilege.freeTrialPrivilege = freeTrialPrivilege;
	}
	final List<CloudSongDataSimpleSongPrivilegeChargeInfoList>? chargeInfoList = jsonConvert.convertListNotNull<CloudSongDataSimpleSongPrivilegeChargeInfoList>(json['chargeInfoList']);
	if (chargeInfoList != null) {
		cloudSongDataSimpleSongPrivilege.chargeInfoList = chargeInfoList;
	}
	return cloudSongDataSimpleSongPrivilege;
}

Map<String, dynamic> $CloudSongDataSimpleSongPrivilegeToJson(CloudSongDataSimpleSongPrivilege entity) {
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

CloudSongDataSimpleSongPrivilegeFreeTrialPrivilege $CloudSongDataSimpleSongPrivilegeFreeTrialPrivilegeFromJson(Map<String, dynamic> json) {
	final CloudSongDataSimpleSongPrivilegeFreeTrialPrivilege cloudSongDataSimpleSongPrivilegeFreeTrialPrivilege = CloudSongDataSimpleSongPrivilegeFreeTrialPrivilege();
	final bool? resConsumable = jsonConvert.convert<bool>(json['resConsumable']);
	if (resConsumable != null) {
		cloudSongDataSimpleSongPrivilegeFreeTrialPrivilege.resConsumable = resConsumable;
	}
	final bool? userConsumable = jsonConvert.convert<bool>(json['userConsumable']);
	if (userConsumable != null) {
		cloudSongDataSimpleSongPrivilegeFreeTrialPrivilege.userConsumable = userConsumable;
	}
	final dynamic listenType = jsonConvert.convert<dynamic>(json['listenType']);
	if (listenType != null) {
		cloudSongDataSimpleSongPrivilegeFreeTrialPrivilege.listenType = listenType;
	}
	return cloudSongDataSimpleSongPrivilegeFreeTrialPrivilege;
}

Map<String, dynamic> $CloudSongDataSimpleSongPrivilegeFreeTrialPrivilegeToJson(CloudSongDataSimpleSongPrivilegeFreeTrialPrivilege entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['resConsumable'] = entity.resConsumable;
	data['userConsumable'] = entity.userConsumable;
	data['listenType'] = entity.listenType;
	return data;
}

CloudSongDataSimpleSongPrivilegeChargeInfoList $CloudSongDataSimpleSongPrivilegeChargeInfoListFromJson(Map<String, dynamic> json) {
	final CloudSongDataSimpleSongPrivilegeChargeInfoList cloudSongDataSimpleSongPrivilegeChargeInfoList = CloudSongDataSimpleSongPrivilegeChargeInfoList();
	final int? rate = jsonConvert.convert<int>(json['rate']);
	if (rate != null) {
		cloudSongDataSimpleSongPrivilegeChargeInfoList.rate = rate;
	}
	final dynamic chargeUrl = jsonConvert.convert<dynamic>(json['chargeUrl']);
	if (chargeUrl != null) {
		cloudSongDataSimpleSongPrivilegeChargeInfoList.chargeUrl = chargeUrl;
	}
	final dynamic chargeMessage = jsonConvert.convert<dynamic>(json['chargeMessage']);
	if (chargeMessage != null) {
		cloudSongDataSimpleSongPrivilegeChargeInfoList.chargeMessage = chargeMessage;
	}
	final int? chargeType = jsonConvert.convert<int>(json['chargeType']);
	if (chargeType != null) {
		cloudSongDataSimpleSongPrivilegeChargeInfoList.chargeType = chargeType;
	}
	return cloudSongDataSimpleSongPrivilegeChargeInfoList;
}

Map<String, dynamic> $CloudSongDataSimpleSongPrivilegeChargeInfoListToJson(CloudSongDataSimpleSongPrivilegeChargeInfoList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['rate'] = entity.rate;
	data['chargeUrl'] = entity.chargeUrl;
	data['chargeMessage'] = entity.chargeMessage;
	data['chargeType'] = entity.chargeType;
	return data;
}