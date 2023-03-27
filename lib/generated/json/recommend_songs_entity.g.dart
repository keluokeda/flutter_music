import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/recommend_songs_entity.dart';

RecommendSongsEntity $RecommendSongsEntityFromJson(Map<String, dynamic> json) {
	final RecommendSongsEntity recommendSongsEntity = RecommendSongsEntity();
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		recommendSongsEntity.code = code;
	}
	final RecommendSongsData? data = jsonConvert.convert<RecommendSongsData>(json['data']);
	if (data != null) {
		recommendSongsEntity.data = data;
	}
	return recommendSongsEntity;
}

Map<String, dynamic> $RecommendSongsEntityToJson(RecommendSongsEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['code'] = entity.code;
	data['data'] = entity.data?.toJson();
	return data;
}

RecommendSongsData $RecommendSongsDataFromJson(Map<String, dynamic> json) {
	final RecommendSongsData recommendSongsData = RecommendSongsData();
	final List<RecommendSongsDataDailySongs>? dailySongs = jsonConvert.convertListNotNull<RecommendSongsDataDailySongs>(json['dailySongs']);
	if (dailySongs != null) {
		recommendSongsData.dailySongs = dailySongs;
	}
	final List<dynamic>? orderSongs = jsonConvert.convertListNotNull<dynamic>(json['orderSongs']);
	if (orderSongs != null) {
		recommendSongsData.orderSongs = orderSongs;
	}
	final List<RecommendSongsDataRecommendReasons>? recommendReasons = jsonConvert.convertListNotNull<RecommendSongsDataRecommendReasons>(json['recommendReasons']);
	if (recommendReasons != null) {
		recommendSongsData.recommendReasons = recommendReasons;
	}
	final dynamic mvResourceInfos = jsonConvert.convert<dynamic>(json['mvResourceInfos']);
	if (mvResourceInfos != null) {
		recommendSongsData.mvResourceInfos = mvResourceInfos;
	}
	return recommendSongsData;
}

Map<String, dynamic> $RecommendSongsDataToJson(RecommendSongsData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['dailySongs'] =  entity.dailySongs?.map((v) => v.toJson()).toList();
	data['orderSongs'] =  entity.orderSongs;
	data['recommendReasons'] =  entity.recommendReasons?.map((v) => v.toJson()).toList();
	data['mvResourceInfos'] = entity.mvResourceInfos;
	return data;
}

RecommendSongsDataDailySongs $RecommendSongsDataDailySongsFromJson(Map<String, dynamic> json) {
	final RecommendSongsDataDailySongs recommendSongsDataDailySongs = RecommendSongsDataDailySongs();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		recommendSongsDataDailySongs.name = name;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		recommendSongsDataDailySongs.id = id;
	}
	final int? pst = jsonConvert.convert<int>(json['pst']);
	if (pst != null) {
		recommendSongsDataDailySongs.pst = pst;
	}
	final int? t = jsonConvert.convert<int>(json['t']);
	if (t != null) {
		recommendSongsDataDailySongs.t = t;
	}
	final List<RecommendSongsDataDailySongsAr>? ar = jsonConvert.convertListNotNull<RecommendSongsDataDailySongsAr>(json['ar']);
	if (ar != null) {
		recommendSongsDataDailySongs.ar = ar;
	}
	final List<String>? alia = jsonConvert.convertListNotNull<String>(json['alia']);
	if (alia != null) {
		recommendSongsDataDailySongs.alia = alia;
	}
	final int? pop = jsonConvert.convert<int>(json['pop']);
	if (pop != null) {
		recommendSongsDataDailySongs.pop = pop;
	}
	final int? st = jsonConvert.convert<int>(json['st']);
	if (st != null) {
		recommendSongsDataDailySongs.st = st;
	}
	final String? rt = jsonConvert.convert<String>(json['rt']);
	if (rt != null) {
		recommendSongsDataDailySongs.rt = rt;
	}
	final int? fee = jsonConvert.convert<int>(json['fee']);
	if (fee != null) {
		recommendSongsDataDailySongs.fee = fee;
	}
	final int? v = jsonConvert.convert<int>(json['v']);
	if (v != null) {
		recommendSongsDataDailySongs.v = v;
	}
	final dynamic crbt = jsonConvert.convert<dynamic>(json['crbt']);
	if (crbt != null) {
		recommendSongsDataDailySongs.crbt = crbt;
	}
	final String? cf = jsonConvert.convert<String>(json['cf']);
	if (cf != null) {
		recommendSongsDataDailySongs.cf = cf;
	}
	final RecommendSongsDataDailySongsAl? al = jsonConvert.convert<RecommendSongsDataDailySongsAl>(json['al']);
	if (al != null) {
		recommendSongsDataDailySongs.al = al;
	}
	final int? dt = jsonConvert.convert<int>(json['dt']);
	if (dt != null) {
		recommendSongsDataDailySongs.dt = dt;
	}
	final RecommendSongsDataDailySongsH? h = jsonConvert.convert<RecommendSongsDataDailySongsH>(json['h']);
	if (h != null) {
		recommendSongsDataDailySongs.h = h;
	}
	final RecommendSongsDataDailySongsM? m = jsonConvert.convert<RecommendSongsDataDailySongsM>(json['m']);
	if (m != null) {
		recommendSongsDataDailySongs.m = m;
	}
	final RecommendSongsDataDailySongsL? l = jsonConvert.convert<RecommendSongsDataDailySongsL>(json['l']);
	if (l != null) {
		recommendSongsDataDailySongs.l = l;
	}
	final RecommendSongsDataDailySongsSq? sq = jsonConvert.convert<RecommendSongsDataDailySongsSq>(json['sq']);
	if (sq != null) {
		recommendSongsDataDailySongs.sq = sq;
	}
	final RecommendSongsDataDailySongsHr? hr = jsonConvert.convert<RecommendSongsDataDailySongsHr>(json['hr']);
	if (hr != null) {
		recommendSongsDataDailySongs.hr = hr;
	}
	final dynamic a = jsonConvert.convert<dynamic>(json['a']);
	if (a != null) {
		recommendSongsDataDailySongs.a = a;
	}
	final String? cd = jsonConvert.convert<String>(json['cd']);
	if (cd != null) {
		recommendSongsDataDailySongs.cd = cd;
	}
	final int? no = jsonConvert.convert<int>(json['no']);
	if (no != null) {
		recommendSongsDataDailySongs.no = no;
	}
	final dynamic rtUrl = jsonConvert.convert<dynamic>(json['rtUrl']);
	if (rtUrl != null) {
		recommendSongsDataDailySongs.rtUrl = rtUrl;
	}
	final int? ftype = jsonConvert.convert<int>(json['ftype']);
	if (ftype != null) {
		recommendSongsDataDailySongs.ftype = ftype;
	}
	final List<dynamic>? rtUrls = jsonConvert.convertListNotNull<dynamic>(json['rtUrls']);
	if (rtUrls != null) {
		recommendSongsDataDailySongs.rtUrls = rtUrls;
	}
	final int? djId = jsonConvert.convert<int>(json['djId']);
	if (djId != null) {
		recommendSongsDataDailySongs.djId = djId;
	}
	final int? copyright = jsonConvert.convert<int>(json['copyright']);
	if (copyright != null) {
		recommendSongsDataDailySongs.copyright = copyright;
	}
	final int? sId = jsonConvert.convert<int>(json['s_id']);
	if (sId != null) {
		recommendSongsDataDailySongs.sId = sId;
	}
	final int? mark = jsonConvert.convert<int>(json['mark']);
	if (mark != null) {
		recommendSongsDataDailySongs.mark = mark;
	}
	final int? originCoverType = jsonConvert.convert<int>(json['originCoverType']);
	if (originCoverType != null) {
		recommendSongsDataDailySongs.originCoverType = originCoverType;
	}
	final dynamic originSongSimpleData = jsonConvert.convert<dynamic>(json['originSongSimpleData']);
	if (originSongSimpleData != null) {
		recommendSongsDataDailySongs.originSongSimpleData = originSongSimpleData;
	}
	final dynamic tagPicList = jsonConvert.convert<dynamic>(json['tagPicList']);
	if (tagPicList != null) {
		recommendSongsDataDailySongs.tagPicList = tagPicList;
	}
	final bool? resourceState = jsonConvert.convert<bool>(json['resourceState']);
	if (resourceState != null) {
		recommendSongsDataDailySongs.resourceState = resourceState;
	}
	final int? version = jsonConvert.convert<int>(json['version']);
	if (version != null) {
		recommendSongsDataDailySongs.version = version;
	}
	final dynamic songJumpInfo = jsonConvert.convert<dynamic>(json['songJumpInfo']);
	if (songJumpInfo != null) {
		recommendSongsDataDailySongs.songJumpInfo = songJumpInfo;
	}
	final dynamic entertainmentTags = jsonConvert.convert<dynamic>(json['entertainmentTags']);
	if (entertainmentTags != null) {
		recommendSongsDataDailySongs.entertainmentTags = entertainmentTags;
	}
	final int? single = jsonConvert.convert<int>(json['single']);
	if (single != null) {
		recommendSongsDataDailySongs.single = single;
	}
	final dynamic noCopyrightRcmd = jsonConvert.convert<dynamic>(json['noCopyrightRcmd']);
	if (noCopyrightRcmd != null) {
		recommendSongsDataDailySongs.noCopyrightRcmd = noCopyrightRcmd;
	}
	final int? rtype = jsonConvert.convert<int>(json['rtype']);
	if (rtype != null) {
		recommendSongsDataDailySongs.rtype = rtype;
	}
	final dynamic rurl = jsonConvert.convert<dynamic>(json['rurl']);
	if (rurl != null) {
		recommendSongsDataDailySongs.rurl = rurl;
	}
	final int? mst = jsonConvert.convert<int>(json['mst']);
	if (mst != null) {
		recommendSongsDataDailySongs.mst = mst;
	}
	final int? cp = jsonConvert.convert<int>(json['cp']);
	if (cp != null) {
		recommendSongsDataDailySongs.cp = cp;
	}
	final int? mv = jsonConvert.convert<int>(json['mv']);
	if (mv != null) {
		recommendSongsDataDailySongs.mv = mv;
	}
	final int? publishTime = jsonConvert.convert<int>(json['publishTime']);
	if (publishTime != null) {
		recommendSongsDataDailySongs.publishTime = publishTime;
	}
	final String? reason = jsonConvert.convert<String>(json['reason']);
	if (reason != null) {
		recommendSongsDataDailySongs.reason = reason;
	}
	final List<String>? tns = jsonConvert.convertListNotNull<String>(json['tns']);
	if (tns != null) {
		recommendSongsDataDailySongs.tns = tns;
	}
	final String? recommendReason = jsonConvert.convert<String>(json['recommendReason']);
	if (recommendReason != null) {
		recommendSongsDataDailySongs.recommendReason = recommendReason;
	}
	final RecommendSongsDataDailySongsPrivilege? privilege = jsonConvert.convert<RecommendSongsDataDailySongsPrivilege>(json['privilege']);
	if (privilege != null) {
		recommendSongsDataDailySongs.privilege = privilege;
	}
	final String? alg = jsonConvert.convert<String>(json['alg']);
	if (alg != null) {
		recommendSongsDataDailySongs.alg = alg;
	}
	final String? sCtrp = jsonConvert.convert<String>(json['s_ctrp']);
	if (sCtrp != null) {
		recommendSongsDataDailySongs.sCtrp = sCtrp;
	}
	return recommendSongsDataDailySongs;
}

Map<String, dynamic> $RecommendSongsDataDailySongsToJson(RecommendSongsDataDailySongs entity) {
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
	data['hr'] = entity.hr?.toJson();
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
	data['single'] = entity.single;
	data['noCopyrightRcmd'] = entity.noCopyrightRcmd;
	data['rtype'] = entity.rtype;
	data['rurl'] = entity.rurl;
	data['mst'] = entity.mst;
	data['cp'] = entity.cp;
	data['mv'] = entity.mv;
	data['publishTime'] = entity.publishTime;
	data['reason'] = entity.reason;
	data['tns'] =  entity.tns;
	data['recommendReason'] = entity.recommendReason;
	data['privilege'] = entity.privilege?.toJson();
	data['alg'] = entity.alg;
	data['s_ctrp'] = entity.sCtrp;
	return data;
}

RecommendSongsDataDailySongsAr $RecommendSongsDataDailySongsArFromJson(Map<String, dynamic> json) {
	final RecommendSongsDataDailySongsAr recommendSongsDataDailySongsAr = RecommendSongsDataDailySongsAr();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		recommendSongsDataDailySongsAr.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		recommendSongsDataDailySongsAr.name = name;
	}
	final List<dynamic>? tns = jsonConvert.convertListNotNull<dynamic>(json['tns']);
	if (tns != null) {
		recommendSongsDataDailySongsAr.tns = tns;
	}
	final List<dynamic>? alias = jsonConvert.convertListNotNull<dynamic>(json['alias']);
	if (alias != null) {
		recommendSongsDataDailySongsAr.alias = alias;
	}
	return recommendSongsDataDailySongsAr;
}

Map<String, dynamic> $RecommendSongsDataDailySongsArToJson(RecommendSongsDataDailySongsAr entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['tns'] =  entity.tns;
	data['alias'] =  entity.alias;
	return data;
}

RecommendSongsDataDailySongsAl $RecommendSongsDataDailySongsAlFromJson(Map<String, dynamic> json) {
	final RecommendSongsDataDailySongsAl recommendSongsDataDailySongsAl = RecommendSongsDataDailySongsAl();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		recommendSongsDataDailySongsAl.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		recommendSongsDataDailySongsAl.name = name;
	}
	final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
	if (picUrl != null) {
		recommendSongsDataDailySongsAl.picUrl = picUrl;
	}
	final List<dynamic>? tns = jsonConvert.convertListNotNull<dynamic>(json['tns']);
	if (tns != null) {
		recommendSongsDataDailySongsAl.tns = tns;
	}
	final int? pic = jsonConvert.convert<int>(json['pic']);
	if (pic != null) {
		recommendSongsDataDailySongsAl.pic = pic;
	}
	return recommendSongsDataDailySongsAl;
}

Map<String, dynamic> $RecommendSongsDataDailySongsAlToJson(RecommendSongsDataDailySongsAl entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['picUrl'] = entity.picUrl;
	data['tns'] =  entity.tns;
	data['pic'] = entity.pic;
	return data;
}

RecommendSongsDataDailySongsH $RecommendSongsDataDailySongsHFromJson(Map<String, dynamic> json) {
	final RecommendSongsDataDailySongsH recommendSongsDataDailySongsH = RecommendSongsDataDailySongsH();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		recommendSongsDataDailySongsH.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		recommendSongsDataDailySongsH.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		recommendSongsDataDailySongsH.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		recommendSongsDataDailySongsH.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		recommendSongsDataDailySongsH.sr = sr;
	}
	return recommendSongsDataDailySongsH;
}

Map<String, dynamic> $RecommendSongsDataDailySongsHToJson(RecommendSongsDataDailySongsH entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

RecommendSongsDataDailySongsM $RecommendSongsDataDailySongsMFromJson(Map<String, dynamic> json) {
	final RecommendSongsDataDailySongsM recommendSongsDataDailySongsM = RecommendSongsDataDailySongsM();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		recommendSongsDataDailySongsM.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		recommendSongsDataDailySongsM.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		recommendSongsDataDailySongsM.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		recommendSongsDataDailySongsM.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		recommendSongsDataDailySongsM.sr = sr;
	}
	return recommendSongsDataDailySongsM;
}

Map<String, dynamic> $RecommendSongsDataDailySongsMToJson(RecommendSongsDataDailySongsM entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

RecommendSongsDataDailySongsL $RecommendSongsDataDailySongsLFromJson(Map<String, dynamic> json) {
	final RecommendSongsDataDailySongsL recommendSongsDataDailySongsL = RecommendSongsDataDailySongsL();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		recommendSongsDataDailySongsL.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		recommendSongsDataDailySongsL.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		recommendSongsDataDailySongsL.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		recommendSongsDataDailySongsL.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		recommendSongsDataDailySongsL.sr = sr;
	}
	return recommendSongsDataDailySongsL;
}

Map<String, dynamic> $RecommendSongsDataDailySongsLToJson(RecommendSongsDataDailySongsL entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

RecommendSongsDataDailySongsSq $RecommendSongsDataDailySongsSqFromJson(Map<String, dynamic> json) {
	final RecommendSongsDataDailySongsSq recommendSongsDataDailySongsSq = RecommendSongsDataDailySongsSq();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		recommendSongsDataDailySongsSq.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		recommendSongsDataDailySongsSq.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		recommendSongsDataDailySongsSq.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		recommendSongsDataDailySongsSq.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		recommendSongsDataDailySongsSq.sr = sr;
	}
	return recommendSongsDataDailySongsSq;
}

Map<String, dynamic> $RecommendSongsDataDailySongsSqToJson(RecommendSongsDataDailySongsSq entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

RecommendSongsDataDailySongsHr $RecommendSongsDataDailySongsHrFromJson(Map<String, dynamic> json) {
	final RecommendSongsDataDailySongsHr recommendSongsDataDailySongsHr = RecommendSongsDataDailySongsHr();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		recommendSongsDataDailySongsHr.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		recommendSongsDataDailySongsHr.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		recommendSongsDataDailySongsHr.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		recommendSongsDataDailySongsHr.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		recommendSongsDataDailySongsHr.sr = sr;
	}
	return recommendSongsDataDailySongsHr;
}

Map<String, dynamic> $RecommendSongsDataDailySongsHrToJson(RecommendSongsDataDailySongsHr entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

RecommendSongsDataDailySongsPrivilege $RecommendSongsDataDailySongsPrivilegeFromJson(Map<String, dynamic> json) {
	final RecommendSongsDataDailySongsPrivilege recommendSongsDataDailySongsPrivilege = RecommendSongsDataDailySongsPrivilege();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		recommendSongsDataDailySongsPrivilege.id = id;
	}
	final int? fee = jsonConvert.convert<int>(json['fee']);
	if (fee != null) {
		recommendSongsDataDailySongsPrivilege.fee = fee;
	}
	final int? payed = jsonConvert.convert<int>(json['payed']);
	if (payed != null) {
		recommendSongsDataDailySongsPrivilege.payed = payed;
	}
	final int? st = jsonConvert.convert<int>(json['st']);
	if (st != null) {
		recommendSongsDataDailySongsPrivilege.st = st;
	}
	final int? pl = jsonConvert.convert<int>(json['pl']);
	if (pl != null) {
		recommendSongsDataDailySongsPrivilege.pl = pl;
	}
	final int? dl = jsonConvert.convert<int>(json['dl']);
	if (dl != null) {
		recommendSongsDataDailySongsPrivilege.dl = dl;
	}
	final int? sp = jsonConvert.convert<int>(json['sp']);
	if (sp != null) {
		recommendSongsDataDailySongsPrivilege.sp = sp;
	}
	final int? cp = jsonConvert.convert<int>(json['cp']);
	if (cp != null) {
		recommendSongsDataDailySongsPrivilege.cp = cp;
	}
	final int? subp = jsonConvert.convert<int>(json['subp']);
	if (subp != null) {
		recommendSongsDataDailySongsPrivilege.subp = subp;
	}
	final bool? cs = jsonConvert.convert<bool>(json['cs']);
	if (cs != null) {
		recommendSongsDataDailySongsPrivilege.cs = cs;
	}
	final int? maxbr = jsonConvert.convert<int>(json['maxbr']);
	if (maxbr != null) {
		recommendSongsDataDailySongsPrivilege.maxbr = maxbr;
	}
	final int? fl = jsonConvert.convert<int>(json['fl']);
	if (fl != null) {
		recommendSongsDataDailySongsPrivilege.fl = fl;
	}
	final bool? toast = jsonConvert.convert<bool>(json['toast']);
	if (toast != null) {
		recommendSongsDataDailySongsPrivilege.toast = toast;
	}
	final int? flag = jsonConvert.convert<int>(json['flag']);
	if (flag != null) {
		recommendSongsDataDailySongsPrivilege.flag = flag;
	}
	final bool? preSell = jsonConvert.convert<bool>(json['preSell']);
	if (preSell != null) {
		recommendSongsDataDailySongsPrivilege.preSell = preSell;
	}
	final int? playMaxbr = jsonConvert.convert<int>(json['playMaxbr']);
	if (playMaxbr != null) {
		recommendSongsDataDailySongsPrivilege.playMaxbr = playMaxbr;
	}
	final int? downloadMaxbr = jsonConvert.convert<int>(json['downloadMaxbr']);
	if (downloadMaxbr != null) {
		recommendSongsDataDailySongsPrivilege.downloadMaxbr = downloadMaxbr;
	}
	final String? maxBrLevel = jsonConvert.convert<String>(json['maxBrLevel']);
	if (maxBrLevel != null) {
		recommendSongsDataDailySongsPrivilege.maxBrLevel = maxBrLevel;
	}
	final String? playMaxBrLevel = jsonConvert.convert<String>(json['playMaxBrLevel']);
	if (playMaxBrLevel != null) {
		recommendSongsDataDailySongsPrivilege.playMaxBrLevel = playMaxBrLevel;
	}
	final String? downloadMaxBrLevel = jsonConvert.convert<String>(json['downloadMaxBrLevel']);
	if (downloadMaxBrLevel != null) {
		recommendSongsDataDailySongsPrivilege.downloadMaxBrLevel = downloadMaxBrLevel;
	}
	final String? plLevel = jsonConvert.convert<String>(json['plLevel']);
	if (plLevel != null) {
		recommendSongsDataDailySongsPrivilege.plLevel = plLevel;
	}
	final String? dlLevel = jsonConvert.convert<String>(json['dlLevel']);
	if (dlLevel != null) {
		recommendSongsDataDailySongsPrivilege.dlLevel = dlLevel;
	}
	final String? flLevel = jsonConvert.convert<String>(json['flLevel']);
	if (flLevel != null) {
		recommendSongsDataDailySongsPrivilege.flLevel = flLevel;
	}
	final dynamic rscl = jsonConvert.convert<dynamic>(json['rscl']);
	if (rscl != null) {
		recommendSongsDataDailySongsPrivilege.rscl = rscl;
	}
	final RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege? freeTrialPrivilege = jsonConvert.convert<RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege>(json['freeTrialPrivilege']);
	if (freeTrialPrivilege != null) {
		recommendSongsDataDailySongsPrivilege.freeTrialPrivilege = freeTrialPrivilege;
	}
	final List<RecommendSongsDataDailySongsPrivilegeChargeInfoList>? chargeInfoList = jsonConvert.convertListNotNull<RecommendSongsDataDailySongsPrivilegeChargeInfoList>(json['chargeInfoList']);
	if (chargeInfoList != null) {
		recommendSongsDataDailySongsPrivilege.chargeInfoList = chargeInfoList;
	}
	return recommendSongsDataDailySongsPrivilege;
}

Map<String, dynamic> $RecommendSongsDataDailySongsPrivilegeToJson(RecommendSongsDataDailySongsPrivilege entity) {
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

RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege $RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilegeFromJson(Map<String, dynamic> json) {
	final RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege recommendSongsDataDailySongsPrivilegeFreeTrialPrivilege = RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege();
	final bool? resConsumable = jsonConvert.convert<bool>(json['resConsumable']);
	if (resConsumable != null) {
		recommendSongsDataDailySongsPrivilegeFreeTrialPrivilege.resConsumable = resConsumable;
	}
	final bool? userConsumable = jsonConvert.convert<bool>(json['userConsumable']);
	if (userConsumable != null) {
		recommendSongsDataDailySongsPrivilegeFreeTrialPrivilege.userConsumable = userConsumable;
	}
	final int? listenType = jsonConvert.convert<int>(json['listenType']);
	if (listenType != null) {
		recommendSongsDataDailySongsPrivilegeFreeTrialPrivilege.listenType = listenType;
	}
	return recommendSongsDataDailySongsPrivilegeFreeTrialPrivilege;
}

Map<String, dynamic> $RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilegeToJson(RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['resConsumable'] = entity.resConsumable;
	data['userConsumable'] = entity.userConsumable;
	data['listenType'] = entity.listenType;
	return data;
}

RecommendSongsDataDailySongsPrivilegeChargeInfoList $RecommendSongsDataDailySongsPrivilegeChargeInfoListFromJson(Map<String, dynamic> json) {
	final RecommendSongsDataDailySongsPrivilegeChargeInfoList recommendSongsDataDailySongsPrivilegeChargeInfoList = RecommendSongsDataDailySongsPrivilegeChargeInfoList();
	final int? rate = jsonConvert.convert<int>(json['rate']);
	if (rate != null) {
		recommendSongsDataDailySongsPrivilegeChargeInfoList.rate = rate;
	}
	final dynamic chargeUrl = jsonConvert.convert<dynamic>(json['chargeUrl']);
	if (chargeUrl != null) {
		recommendSongsDataDailySongsPrivilegeChargeInfoList.chargeUrl = chargeUrl;
	}
	final dynamic chargeMessage = jsonConvert.convert<dynamic>(json['chargeMessage']);
	if (chargeMessage != null) {
		recommendSongsDataDailySongsPrivilegeChargeInfoList.chargeMessage = chargeMessage;
	}
	final int? chargeType = jsonConvert.convert<int>(json['chargeType']);
	if (chargeType != null) {
		recommendSongsDataDailySongsPrivilegeChargeInfoList.chargeType = chargeType;
	}
	return recommendSongsDataDailySongsPrivilegeChargeInfoList;
}

Map<String, dynamic> $RecommendSongsDataDailySongsPrivilegeChargeInfoListToJson(RecommendSongsDataDailySongsPrivilegeChargeInfoList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['rate'] = entity.rate;
	data['chargeUrl'] = entity.chargeUrl;
	data['chargeMessage'] = entity.chargeMessage;
	data['chargeType'] = entity.chargeType;
	return data;
}

RecommendSongsDataRecommendReasons $RecommendSongsDataRecommendReasonsFromJson(Map<String, dynamic> json) {
	final RecommendSongsDataRecommendReasons recommendSongsDataRecommendReasons = RecommendSongsDataRecommendReasons();
	final int? songId = jsonConvert.convert<int>(json['songId']);
	if (songId != null) {
		recommendSongsDataRecommendReasons.songId = songId;
	}
	final String? reason = jsonConvert.convert<String>(json['reason']);
	if (reason != null) {
		recommendSongsDataRecommendReasons.reason = reason;
	}
	final String? reasonId = jsonConvert.convert<String>(json['reasonId']);
	if (reasonId != null) {
		recommendSongsDataRecommendReasons.reasonId = reasonId;
	}
	final dynamic targetUrl = jsonConvert.convert<dynamic>(json['targetUrl']);
	if (targetUrl != null) {
		recommendSongsDataRecommendReasons.targetUrl = targetUrl;
	}
	return recommendSongsDataRecommendReasons;
}

Map<String, dynamic> $RecommendSongsDataRecommendReasonsToJson(RecommendSongsDataRecommendReasons entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['songId'] = entity.songId;
	data['reason'] = entity.reason;
	data['reasonId'] = entity.reasonId;
	data['targetUrl'] = entity.targetUrl;
	return data;
}