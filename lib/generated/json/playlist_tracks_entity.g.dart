import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/playlist_tracks_entity.dart';
import 'package:music/entity/song_item.dart';


PlaylistTracksEntity $PlaylistTracksEntityFromJson(Map<String, dynamic> json) {
	final PlaylistTracksEntity playlistTracksEntity = PlaylistTracksEntity();
	final List<PlaylistTracksSongs>? songs = jsonConvert.convertListNotNull<PlaylistTracksSongs>(json['songs']);
	if (songs != null) {
		playlistTracksEntity.songs = songs;
	}
	final List<PlaylistTracksPrivileges>? privileges = jsonConvert.convertListNotNull<PlaylistTracksPrivileges>(json['privileges']);
	if (privileges != null) {
		playlistTracksEntity.privileges = privileges;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		playlistTracksEntity.code = code;
	}
	return playlistTracksEntity;
}

Map<String, dynamic> $PlaylistTracksEntityToJson(PlaylistTracksEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['songs'] =  entity.songs?.map((v) => v.toJson()).toList();
	data['privileges'] =  entity.privileges?.map((v) => v.toJson()).toList();
	data['code'] = entity.code;
	return data;
}

PlaylistTracksSongs $PlaylistTracksSongsFromJson(Map<String, dynamic> json) {
	final PlaylistTracksSongs playlistTracksSongs = PlaylistTracksSongs();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		playlistTracksSongs.name = name;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		playlistTracksSongs.id = id;
	}
	final int? pst = jsonConvert.convert<int>(json['pst']);
	if (pst != null) {
		playlistTracksSongs.pst = pst;
	}
	final int? t = jsonConvert.convert<int>(json['t']);
	if (t != null) {
		playlistTracksSongs.t = t;
	}
	final List<PlaylistTracksSongsAr>? ar = jsonConvert.convertListNotNull<PlaylistTracksSongsAr>(json['ar']);
	if (ar != null) {
		playlistTracksSongs.ar = ar;
	}
	final List<String>? alia = jsonConvert.convertListNotNull<String>(json['alia']);
	if (alia != null) {
		playlistTracksSongs.alia = alia;
	}
	final int? pop = jsonConvert.convert<int>(json['pop']);
	if (pop != null) {
		playlistTracksSongs.pop = pop;
	}
	final int? st = jsonConvert.convert<int>(json['st']);
	if (st != null) {
		playlistTracksSongs.st = st;
	}
	final String? rt = jsonConvert.convert<String>(json['rt']);
	if (rt != null) {
		playlistTracksSongs.rt = rt;
	}
	final int? fee = jsonConvert.convert<int>(json['fee']);
	if (fee != null) {
		playlistTracksSongs.fee = fee;
	}
	final int? v = jsonConvert.convert<int>(json['v']);
	if (v != null) {
		playlistTracksSongs.v = v;
	}
	final dynamic crbt = jsonConvert.convert<dynamic>(json['crbt']);
	if (crbt != null) {
		playlistTracksSongs.crbt = crbt;
	}
	final String? cf = jsonConvert.convert<String>(json['cf']);
	if (cf != null) {
		playlistTracksSongs.cf = cf;
	}
	final PlaylistTracksSongsAl? al = jsonConvert.convert<PlaylistTracksSongsAl>(json['al']);
	if (al != null) {
		playlistTracksSongs.al = al;
	}
	final int? dt = jsonConvert.convert<int>(json['dt']);
	if (dt != null) {
		playlistTracksSongs.dt = dt;
	}
	final PlaylistTracksSongsH? h = jsonConvert.convert<PlaylistTracksSongsH>(json['h']);
	if (h != null) {
		playlistTracksSongs.h = h;
	}
	final PlaylistTracksSongsM? m = jsonConvert.convert<PlaylistTracksSongsM>(json['m']);
	if (m != null) {
		playlistTracksSongs.m = m;
	}
	final PlaylistTracksSongsL? l = jsonConvert.convert<PlaylistTracksSongsL>(json['l']);
	if (l != null) {
		playlistTracksSongs.l = l;
	}
	final PlaylistTracksSongsSq? sq = jsonConvert.convert<PlaylistTracksSongsSq>(json['sq']);
	if (sq != null) {
		playlistTracksSongs.sq = sq;
	}
	final PlaylistTracksSongsHr? hr = jsonConvert.convert<PlaylistTracksSongsHr>(json['hr']);
	if (hr != null) {
		playlistTracksSongs.hr = hr;
	}
	final dynamic a = jsonConvert.convert<dynamic>(json['a']);
	if (a != null) {
		playlistTracksSongs.a = a;
	}
	final String? cd = jsonConvert.convert<String>(json['cd']);
	if (cd != null) {
		playlistTracksSongs.cd = cd;
	}
	final int? no = jsonConvert.convert<int>(json['no']);
	if (no != null) {
		playlistTracksSongs.no = no;
	}
	final dynamic rtUrl = jsonConvert.convert<dynamic>(json['rtUrl']);
	if (rtUrl != null) {
		playlistTracksSongs.rtUrl = rtUrl;
	}
	final int? ftype = jsonConvert.convert<int>(json['ftype']);
	if (ftype != null) {
		playlistTracksSongs.ftype = ftype;
	}
	final List<dynamic>? rtUrls = jsonConvert.convertListNotNull<dynamic>(json['rtUrls']);
	if (rtUrls != null) {
		playlistTracksSongs.rtUrls = rtUrls;
	}
	final int? djId = jsonConvert.convert<int>(json['djId']);
	if (djId != null) {
		playlistTracksSongs.djId = djId;
	}
	final int? copyright = jsonConvert.convert<int>(json['copyright']);
	if (copyright != null) {
		playlistTracksSongs.copyright = copyright;
	}
	final int? sId = jsonConvert.convert<int>(json['s_id']);
	if (sId != null) {
		playlistTracksSongs.sId = sId;
	}
	final int? mark = jsonConvert.convert<int>(json['mark']);
	if (mark != null) {
		playlistTracksSongs.mark = mark;
	}
	final int? originCoverType = jsonConvert.convert<int>(json['originCoverType']);
	if (originCoverType != null) {
		playlistTracksSongs.originCoverType = originCoverType;
	}
	final dynamic originSongSimpleData = jsonConvert.convert<dynamic>(json['originSongSimpleData']);
	if (originSongSimpleData != null) {
		playlistTracksSongs.originSongSimpleData = originSongSimpleData;
	}
	final dynamic tagPicList = jsonConvert.convert<dynamic>(json['tagPicList']);
	if (tagPicList != null) {
		playlistTracksSongs.tagPicList = tagPicList;
	}
	final bool? resourceState = jsonConvert.convert<bool>(json['resourceState']);
	if (resourceState != null) {
		playlistTracksSongs.resourceState = resourceState;
	}
	final int? version = jsonConvert.convert<int>(json['version']);
	if (version != null) {
		playlistTracksSongs.version = version;
	}
	final dynamic songJumpInfo = jsonConvert.convert<dynamic>(json['songJumpInfo']);
	if (songJumpInfo != null) {
		playlistTracksSongs.songJumpInfo = songJumpInfo;
	}
	final dynamic entertainmentTags = jsonConvert.convert<dynamic>(json['entertainmentTags']);
	if (entertainmentTags != null) {
		playlistTracksSongs.entertainmentTags = entertainmentTags;
	}
	final dynamic awardTags = jsonConvert.convert<dynamic>(json['awardTags']);
	if (awardTags != null) {
		playlistTracksSongs.awardTags = awardTags;
	}
	final int? single = jsonConvert.convert<int>(json['single']);
	if (single != null) {
		playlistTracksSongs.single = single;
	}
	final PlaylistTracksSongsNoCopyrightRcmd? noCopyrightRcmd = jsonConvert.convert<PlaylistTracksSongsNoCopyrightRcmd>(json['noCopyrightRcmd']);
	if (noCopyrightRcmd != null) {
		playlistTracksSongs.noCopyrightRcmd = noCopyrightRcmd;
	}
	final int? rtype = jsonConvert.convert<int>(json['rtype']);
	if (rtype != null) {
		playlistTracksSongs.rtype = rtype;
	}
	final dynamic rurl = jsonConvert.convert<dynamic>(json['rurl']);
	if (rurl != null) {
		playlistTracksSongs.rurl = rurl;
	}
	final int? mst = jsonConvert.convert<int>(json['mst']);
	if (mst != null) {
		playlistTracksSongs.mst = mst;
	}
	final int? cp = jsonConvert.convert<int>(json['cp']);
	if (cp != null) {
		playlistTracksSongs.cp = cp;
	}
	final int? mv = jsonConvert.convert<int>(json['mv']);
	if (mv != null) {
		playlistTracksSongs.mv = mv;
	}
	final int? publishTime = jsonConvert.convert<int>(json['publishTime']);
	if (publishTime != null) {
		playlistTracksSongs.publishTime = publishTime;
	}
	final List<String>? tns = jsonConvert.convertListNotNull<String>(json['tns']);
	if (tns != null) {
		playlistTracksSongs.tns = tns;
	}
	return playlistTracksSongs;
}

Map<String, dynamic> $PlaylistTracksSongsToJson(PlaylistTracksSongs entity) {
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
	data['awardTags'] = entity.awardTags;
	data['single'] = entity.single;
	data['noCopyrightRcmd'] = entity.noCopyrightRcmd?.toJson();
	data['rtype'] = entity.rtype;
	data['rurl'] = entity.rurl;
	data['mst'] = entity.mst;
	data['cp'] = entity.cp;
	data['mv'] = entity.mv;
	data['publishTime'] = entity.publishTime;
	data['tns'] =  entity.tns;
	return data;
}

PlaylistTracksSongsAr $PlaylistTracksSongsArFromJson(Map<String, dynamic> json) {
	final PlaylistTracksSongsAr playlistTracksSongsAr = PlaylistTracksSongsAr();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		playlistTracksSongsAr.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		playlistTracksSongsAr.name = name;
	}
	final List<dynamic>? tns = jsonConvert.convertListNotNull<dynamic>(json['tns']);
	if (tns != null) {
		playlistTracksSongsAr.tns = tns;
	}
	final List<dynamic>? alias = jsonConvert.convertListNotNull<dynamic>(json['alias']);
	if (alias != null) {
		playlistTracksSongsAr.alias = alias;
	}
	return playlistTracksSongsAr;
}

Map<String, dynamic> $PlaylistTracksSongsArToJson(PlaylistTracksSongsAr entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['tns'] =  entity.tns;
	data['alias'] =  entity.alias;
	return data;
}

PlaylistTracksSongsAl $PlaylistTracksSongsAlFromJson(Map<String, dynamic> json) {
	final PlaylistTracksSongsAl playlistTracksSongsAl = PlaylistTracksSongsAl();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		playlistTracksSongsAl.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		playlistTracksSongsAl.name = name;
	}
	final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
	if (picUrl != null) {
		playlistTracksSongsAl.picUrl = picUrl;
	}
	final List<dynamic>? tns = jsonConvert.convertListNotNull<dynamic>(json['tns']);
	if (tns != null) {
		playlistTracksSongsAl.tns = tns;
	}
	final int? pic = jsonConvert.convert<int>(json['pic']);
	if (pic != null) {
		playlistTracksSongsAl.pic = pic;
	}
	return playlistTracksSongsAl;
}

Map<String, dynamic> $PlaylistTracksSongsAlToJson(PlaylistTracksSongsAl entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['picUrl'] = entity.picUrl;
	data['tns'] =  entity.tns;
	data['pic'] = entity.pic;
	return data;
}

PlaylistTracksSongsH $PlaylistTracksSongsHFromJson(Map<String, dynamic> json) {
	final PlaylistTracksSongsH playlistTracksSongsH = PlaylistTracksSongsH();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		playlistTracksSongsH.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		playlistTracksSongsH.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		playlistTracksSongsH.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		playlistTracksSongsH.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		playlistTracksSongsH.sr = sr;
	}
	return playlistTracksSongsH;
}

Map<String, dynamic> $PlaylistTracksSongsHToJson(PlaylistTracksSongsH entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

PlaylistTracksSongsM $PlaylistTracksSongsMFromJson(Map<String, dynamic> json) {
	final PlaylistTracksSongsM playlistTracksSongsM = PlaylistTracksSongsM();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		playlistTracksSongsM.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		playlistTracksSongsM.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		playlistTracksSongsM.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		playlistTracksSongsM.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		playlistTracksSongsM.sr = sr;
	}
	return playlistTracksSongsM;
}

Map<String, dynamic> $PlaylistTracksSongsMToJson(PlaylistTracksSongsM entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

PlaylistTracksSongsL $PlaylistTracksSongsLFromJson(Map<String, dynamic> json) {
	final PlaylistTracksSongsL playlistTracksSongsL = PlaylistTracksSongsL();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		playlistTracksSongsL.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		playlistTracksSongsL.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		playlistTracksSongsL.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		playlistTracksSongsL.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		playlistTracksSongsL.sr = sr;
	}
	return playlistTracksSongsL;
}

Map<String, dynamic> $PlaylistTracksSongsLToJson(PlaylistTracksSongsL entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

PlaylistTracksSongsSq $PlaylistTracksSongsSqFromJson(Map<String, dynamic> json) {
	final PlaylistTracksSongsSq playlistTracksSongsSq = PlaylistTracksSongsSq();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		playlistTracksSongsSq.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		playlistTracksSongsSq.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		playlistTracksSongsSq.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		playlistTracksSongsSq.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		playlistTracksSongsSq.sr = sr;
	}
	return playlistTracksSongsSq;
}

Map<String, dynamic> $PlaylistTracksSongsSqToJson(PlaylistTracksSongsSq entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

PlaylistTracksSongsHr $PlaylistTracksSongsHrFromJson(Map<String, dynamic> json) {
	final PlaylistTracksSongsHr playlistTracksSongsHr = PlaylistTracksSongsHr();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		playlistTracksSongsHr.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		playlistTracksSongsHr.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		playlistTracksSongsHr.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		playlistTracksSongsHr.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		playlistTracksSongsHr.sr = sr;
	}
	return playlistTracksSongsHr;
}

Map<String, dynamic> $PlaylistTracksSongsHrToJson(PlaylistTracksSongsHr entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

PlaylistTracksSongsNoCopyrightRcmd $PlaylistTracksSongsNoCopyrightRcmdFromJson(Map<String, dynamic> json) {
	final PlaylistTracksSongsNoCopyrightRcmd playlistTracksSongsNoCopyrightRcmd = PlaylistTracksSongsNoCopyrightRcmd();
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		playlistTracksSongsNoCopyrightRcmd.type = type;
	}
	final String? typeDesc = jsonConvert.convert<String>(json['typeDesc']);
	if (typeDesc != null) {
		playlistTracksSongsNoCopyrightRcmd.typeDesc = typeDesc;
	}
	final dynamic songId = jsonConvert.convert<dynamic>(json['songId']);
	if (songId != null) {
		playlistTracksSongsNoCopyrightRcmd.songId = songId;
	}
	return playlistTracksSongsNoCopyrightRcmd;
}

Map<String, dynamic> $PlaylistTracksSongsNoCopyrightRcmdToJson(PlaylistTracksSongsNoCopyrightRcmd entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['type'] = entity.type;
	data['typeDesc'] = entity.typeDesc;
	data['songId'] = entity.songId;
	return data;
}

PlaylistTracksPrivileges $PlaylistTracksPrivilegesFromJson(Map<String, dynamic> json) {
	final PlaylistTracksPrivileges playlistTracksPrivileges = PlaylistTracksPrivileges();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		playlistTracksPrivileges.id = id;
	}
	final int? fee = jsonConvert.convert<int>(json['fee']);
	if (fee != null) {
		playlistTracksPrivileges.fee = fee;
	}
	final int? payed = jsonConvert.convert<int>(json['payed']);
	if (payed != null) {
		playlistTracksPrivileges.payed = payed;
	}
	final int? st = jsonConvert.convert<int>(json['st']);
	if (st != null) {
		playlistTracksPrivileges.st = st;
	}
	final int? pl = jsonConvert.convert<int>(json['pl']);
	if (pl != null) {
		playlistTracksPrivileges.pl = pl;
	}
	final int? dl = jsonConvert.convert<int>(json['dl']);
	if (dl != null) {
		playlistTracksPrivileges.dl = dl;
	}
	final int? sp = jsonConvert.convert<int>(json['sp']);
	if (sp != null) {
		playlistTracksPrivileges.sp = sp;
	}
	final int? cp = jsonConvert.convert<int>(json['cp']);
	if (cp != null) {
		playlistTracksPrivileges.cp = cp;
	}
	final int? subp = jsonConvert.convert<int>(json['subp']);
	if (subp != null) {
		playlistTracksPrivileges.subp = subp;
	}
	final bool? cs = jsonConvert.convert<bool>(json['cs']);
	if (cs != null) {
		playlistTracksPrivileges.cs = cs;
	}
	final int? maxbr = jsonConvert.convert<int>(json['maxbr']);
	if (maxbr != null) {
		playlistTracksPrivileges.maxbr = maxbr;
	}
	final int? fl = jsonConvert.convert<int>(json['fl']);
	if (fl != null) {
		playlistTracksPrivileges.fl = fl;
	}
	final bool? toast = jsonConvert.convert<bool>(json['toast']);
	if (toast != null) {
		playlistTracksPrivileges.toast = toast;
	}
	final int? flag = jsonConvert.convert<int>(json['flag']);
	if (flag != null) {
		playlistTracksPrivileges.flag = flag;
	}
	final bool? preSell = jsonConvert.convert<bool>(json['preSell']);
	if (preSell != null) {
		playlistTracksPrivileges.preSell = preSell;
	}
	final int? playMaxbr = jsonConvert.convert<int>(json['playMaxbr']);
	if (playMaxbr != null) {
		playlistTracksPrivileges.playMaxbr = playMaxbr;
	}
	final int? downloadMaxbr = jsonConvert.convert<int>(json['downloadMaxbr']);
	if (downloadMaxbr != null) {
		playlistTracksPrivileges.downloadMaxbr = downloadMaxbr;
	}
	final String? maxBrLevel = jsonConvert.convert<String>(json['maxBrLevel']);
	if (maxBrLevel != null) {
		playlistTracksPrivileges.maxBrLevel = maxBrLevel;
	}
	final String? playMaxBrLevel = jsonConvert.convert<String>(json['playMaxBrLevel']);
	if (playMaxBrLevel != null) {
		playlistTracksPrivileges.playMaxBrLevel = playMaxBrLevel;
	}
	final String? downloadMaxBrLevel = jsonConvert.convert<String>(json['downloadMaxBrLevel']);
	if (downloadMaxBrLevel != null) {
		playlistTracksPrivileges.downloadMaxBrLevel = downloadMaxBrLevel;
	}
	final String? plLevel = jsonConvert.convert<String>(json['plLevel']);
	if (plLevel != null) {
		playlistTracksPrivileges.plLevel = plLevel;
	}
	final String? dlLevel = jsonConvert.convert<String>(json['dlLevel']);
	if (dlLevel != null) {
		playlistTracksPrivileges.dlLevel = dlLevel;
	}
	final String? flLevel = jsonConvert.convert<String>(json['flLevel']);
	if (flLevel != null) {
		playlistTracksPrivileges.flLevel = flLevel;
	}
	final dynamic rscl = jsonConvert.convert<dynamic>(json['rscl']);
	if (rscl != null) {
		playlistTracksPrivileges.rscl = rscl;
	}
	final PlaylistTracksPrivilegesFreeTrialPrivilege? freeTrialPrivilege = jsonConvert.convert<PlaylistTracksPrivilegesFreeTrialPrivilege>(json['freeTrialPrivilege']);
	if (freeTrialPrivilege != null) {
		playlistTracksPrivileges.freeTrialPrivilege = freeTrialPrivilege;
	}
	final List<PlaylistTracksPrivilegesChargeInfoList>? chargeInfoList = jsonConvert.convertListNotNull<PlaylistTracksPrivilegesChargeInfoList>(json['chargeInfoList']);
	if (chargeInfoList != null) {
		playlistTracksPrivileges.chargeInfoList = chargeInfoList;
	}
	return playlistTracksPrivileges;
}

Map<String, dynamic> $PlaylistTracksPrivilegesToJson(PlaylistTracksPrivileges entity) {
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

PlaylistTracksPrivilegesFreeTrialPrivilege $PlaylistTracksPrivilegesFreeTrialPrivilegeFromJson(Map<String, dynamic> json) {
	final PlaylistTracksPrivilegesFreeTrialPrivilege playlistTracksPrivilegesFreeTrialPrivilege = PlaylistTracksPrivilegesFreeTrialPrivilege();
	final bool? resConsumable = jsonConvert.convert<bool>(json['resConsumable']);
	if (resConsumable != null) {
		playlistTracksPrivilegesFreeTrialPrivilege.resConsumable = resConsumable;
	}
	final bool? userConsumable = jsonConvert.convert<bool>(json['userConsumable']);
	if (userConsumable != null) {
		playlistTracksPrivilegesFreeTrialPrivilege.userConsumable = userConsumable;
	}
	final dynamic listenType = jsonConvert.convert<dynamic>(json['listenType']);
	if (listenType != null) {
		playlistTracksPrivilegesFreeTrialPrivilege.listenType = listenType;
	}
	return playlistTracksPrivilegesFreeTrialPrivilege;
}

Map<String, dynamic> $PlaylistTracksPrivilegesFreeTrialPrivilegeToJson(PlaylistTracksPrivilegesFreeTrialPrivilege entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['resConsumable'] = entity.resConsumable;
	data['userConsumable'] = entity.userConsumable;
	data['listenType'] = entity.listenType;
	return data;
}

PlaylistTracksPrivilegesChargeInfoList $PlaylistTracksPrivilegesChargeInfoListFromJson(Map<String, dynamic> json) {
	final PlaylistTracksPrivilegesChargeInfoList playlistTracksPrivilegesChargeInfoList = PlaylistTracksPrivilegesChargeInfoList();
	final int? rate = jsonConvert.convert<int>(json['rate']);
	if (rate != null) {
		playlistTracksPrivilegesChargeInfoList.rate = rate;
	}
	final dynamic chargeUrl = jsonConvert.convert<dynamic>(json['chargeUrl']);
	if (chargeUrl != null) {
		playlistTracksPrivilegesChargeInfoList.chargeUrl = chargeUrl;
	}
	final dynamic chargeMessage = jsonConvert.convert<dynamic>(json['chargeMessage']);
	if (chargeMessage != null) {
		playlistTracksPrivilegesChargeInfoList.chargeMessage = chargeMessage;
	}
	final int? chargeType = jsonConvert.convert<int>(json['chargeType']);
	if (chargeType != null) {
		playlistTracksPrivilegesChargeInfoList.chargeType = chargeType;
	}
	return playlistTracksPrivilegesChargeInfoList;
}

Map<String, dynamic> $PlaylistTracksPrivilegesChargeInfoListToJson(PlaylistTracksPrivilegesChargeInfoList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['rate'] = entity.rate;
	data['chargeUrl'] = entity.chargeUrl;
	data['chargeMessage'] = entity.chargeMessage;
	data['chargeType'] = entity.chargeType;
	return data;
}