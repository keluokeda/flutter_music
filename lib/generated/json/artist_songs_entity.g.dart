import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/artist_songs_entity.dart';
import 'package:music/entity/song_item.dart';


ArtistSongsEntity $ArtistSongsEntityFromJson(Map<String, dynamic> json) {
	final ArtistSongsEntity artistSongsEntity = ArtistSongsEntity();
	final ArtistSongsArtist? artist = jsonConvert.convert<ArtistSongsArtist>(json['artist']);
	if (artist != null) {
		artistSongsEntity.artist = artist;
	}
	final List<ArtistSongsHotSongs>? hotSongs = jsonConvert.convertListNotNull<ArtistSongsHotSongs>(json['hotSongs']);
	if (hotSongs != null) {
		artistSongsEntity.hotSongs = hotSongs;
	}
	final bool? more = jsonConvert.convert<bool>(json['more']);
	if (more != null) {
		artistSongsEntity.more = more;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		artistSongsEntity.code = code;
	}
	return artistSongsEntity;
}

Map<String, dynamic> $ArtistSongsEntityToJson(ArtistSongsEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['artist'] = entity.artist?.toJson();
	data['hotSongs'] =  entity.hotSongs?.map((v) => v.toJson()).toList();
	data['more'] = entity.more;
	data['code'] = entity.code;
	return data;
}

ArtistSongsArtist $ArtistSongsArtistFromJson(Map<String, dynamic> json) {
	final ArtistSongsArtist artistSongsArtist = ArtistSongsArtist();
	final int? img1v1Id = jsonConvert.convert<int>(json['img1v1Id']);
	if (img1v1Id != null) {
		artistSongsArtist.img1v1Id = img1v1Id;
	}
	final int? topicPerson = jsonConvert.convert<int>(json['topicPerson']);
	if (topicPerson != null) {
		artistSongsArtist.topicPerson = topicPerson;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		artistSongsArtist.followed = followed;
	}
	final List<dynamic>? alias = jsonConvert.convertListNotNull<dynamic>(json['alias']);
	if (alias != null) {
		artistSongsArtist.alias = alias;
	}
	final int? picId = jsonConvert.convert<int>(json['picId']);
	if (picId != null) {
		artistSongsArtist.picId = picId;
	}
	final String? trans = jsonConvert.convert<String>(json['trans']);
	if (trans != null) {
		artistSongsArtist.trans = trans;
	}
	final int? musicSize = jsonConvert.convert<int>(json['musicSize']);
	if (musicSize != null) {
		artistSongsArtist.musicSize = musicSize;
	}
	final int? albumSize = jsonConvert.convert<int>(json['albumSize']);
	if (albumSize != null) {
		artistSongsArtist.albumSize = albumSize;
	}
	final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
	if (briefDesc != null) {
		artistSongsArtist.briefDesc = briefDesc;
	}
	final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
	if (picUrl != null) {
		artistSongsArtist.picUrl = picUrl;
	}
	final String? img1v1Url = jsonConvert.convert<String>(json['img1v1Url']);
	if (img1v1Url != null) {
		artistSongsArtist.img1v1Url = img1v1Url;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		artistSongsArtist.name = name;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		artistSongsArtist.id = id;
	}
	final int? publishTime = jsonConvert.convert<int>(json['publishTime']);
	if (publishTime != null) {
		artistSongsArtist.publishTime = publishTime;
	}
	final int? accountId = jsonConvert.convert<int>(json['accountId']);
	if (accountId != null) {
		artistSongsArtist.accountId = accountId;
	}
	final String? picidStr = jsonConvert.convert<String>(json['picId_str']);
	if (picidStr != null) {
		artistSongsArtist.picidStr = picidStr;
	}
	final String? img1v1idStr = jsonConvert.convert<String>(json['img1v1Id_str']);
	if (img1v1idStr != null) {
		artistSongsArtist.img1v1idStr = img1v1idStr;
	}
	final int? mvSize = jsonConvert.convert<int>(json['mvSize']);
	if (mvSize != null) {
		artistSongsArtist.mvSize = mvSize;
	}
	return artistSongsArtist;
}

Map<String, dynamic> $ArtistSongsArtistToJson(ArtistSongsArtist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['img1v1Id'] = entity.img1v1Id;
	data['topicPerson'] = entity.topicPerson;
	data['followed'] = entity.followed;
	data['alias'] =  entity.alias;
	data['picId'] = entity.picId;
	data['trans'] = entity.trans;
	data['musicSize'] = entity.musicSize;
	data['albumSize'] = entity.albumSize;
	data['briefDesc'] = entity.briefDesc;
	data['picUrl'] = entity.picUrl;
	data['img1v1Url'] = entity.img1v1Url;
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['publishTime'] = entity.publishTime;
	data['accountId'] = entity.accountId;
	data['picId_str'] = entity.picidStr;
	data['img1v1Id_str'] = entity.img1v1idStr;
	data['mvSize'] = entity.mvSize;
	return data;
}

ArtistSongsHotSongs $ArtistSongsHotSongsFromJson(Map<String, dynamic> json) {
	final ArtistSongsHotSongs artistSongsHotSongs = ArtistSongsHotSongs();
	final List<dynamic>? rtUrls = jsonConvert.convertListNotNull<dynamic>(json['rtUrls']);
	if (rtUrls != null) {
		artistSongsHotSongs.rtUrls = rtUrls;
	}
	final List<ArtistSongsHotSongsAr>? ar = jsonConvert.convertListNotNull<ArtistSongsHotSongsAr>(json['ar']);
	if (ar != null) {
		artistSongsHotSongs.ar = ar;
	}
	final ArtistSongsHotSongsAl? al = jsonConvert.convert<ArtistSongsHotSongsAl>(json['al']);
	if (al != null) {
		artistSongsHotSongs.al = al;
	}
	final int? st = jsonConvert.convert<int>(json['st']);
	if (st != null) {
		artistSongsHotSongs.st = st;
	}
	final dynamic noCopyrightRcmd = jsonConvert.convert<dynamic>(json['noCopyrightRcmd']);
	if (noCopyrightRcmd != null) {
		artistSongsHotSongs.noCopyrightRcmd = noCopyrightRcmd;
	}
	final dynamic songJumpInfo = jsonConvert.convert<dynamic>(json['songJumpInfo']);
	if (songJumpInfo != null) {
		artistSongsHotSongs.songJumpInfo = songJumpInfo;
	}
	final int? rtype = jsonConvert.convert<int>(json['rtype']);
	if (rtype != null) {
		artistSongsHotSongs.rtype = rtype;
	}
	final dynamic rurl = jsonConvert.convert<dynamic>(json['rurl']);
	if (rurl != null) {
		artistSongsHotSongs.rurl = rurl;
	}
	final int? pst = jsonConvert.convert<int>(json['pst']);
	if (pst != null) {
		artistSongsHotSongs.pst = pst;
	}
	final List<String>? alia = jsonConvert.convertListNotNull<String>(json['alia']);
	if (alia != null) {
		artistSongsHotSongs.alia = alia;
	}
	final int? pop = jsonConvert.convert<int>(json['pop']);
	if (pop != null) {
		artistSongsHotSongs.pop = pop;
	}
	final String? rt = jsonConvert.convert<String>(json['rt']);
	if (rt != null) {
		artistSongsHotSongs.rt = rt;
	}
	final int? mst = jsonConvert.convert<int>(json['mst']);
	if (mst != null) {
		artistSongsHotSongs.mst = mst;
	}
	final int? cp = jsonConvert.convert<int>(json['cp']);
	if (cp != null) {
		artistSongsHotSongs.cp = cp;
	}
	final int? dt = jsonConvert.convert<int>(json['dt']);
	if (dt != null) {
		artistSongsHotSongs.dt = dt;
	}
	final dynamic crbt = jsonConvert.convert<dynamic>(json['crbt']);
	if (crbt != null) {
		artistSongsHotSongs.crbt = crbt;
	}
	final String? cf = jsonConvert.convert<String>(json['cf']);
	if (cf != null) {
		artistSongsHotSongs.cf = cf;
	}
	final dynamic rtUrl = jsonConvert.convert<dynamic>(json['rtUrl']);
	if (rtUrl != null) {
		artistSongsHotSongs.rtUrl = rtUrl;
	}
	final int? ftype = jsonConvert.convert<int>(json['ftype']);
	if (ftype != null) {
		artistSongsHotSongs.ftype = ftype;
	}
	final int? djId = jsonConvert.convert<int>(json['djId']);
	if (djId != null) {
		artistSongsHotSongs.djId = djId;
	}
	final int? no = jsonConvert.convert<int>(json['no']);
	if (no != null) {
		artistSongsHotSongs.no = no;
	}
	final int? fee = jsonConvert.convert<int>(json['fee']);
	if (fee != null) {
		artistSongsHotSongs.fee = fee;
	}
	final int? mv = jsonConvert.convert<int>(json['mv']);
	if (mv != null) {
		artistSongsHotSongs.mv = mv;
	}
	final int? t = jsonConvert.convert<int>(json['t']);
	if (t != null) {
		artistSongsHotSongs.t = t;
	}
	final int? v = jsonConvert.convert<int>(json['v']);
	if (v != null) {
		artistSongsHotSongs.v = v;
	}
	final ArtistSongsHotSongsH? h = jsonConvert.convert<ArtistSongsHotSongsH>(json['h']);
	if (h != null) {
		artistSongsHotSongs.h = h;
	}
	final ArtistSongsHotSongsL? l = jsonConvert.convert<ArtistSongsHotSongsL>(json['l']);
	if (l != null) {
		artistSongsHotSongs.l = l;
	}
	final ArtistSongsHotSongsSq? sq = jsonConvert.convert<ArtistSongsHotSongsSq>(json['sq']);
	if (sq != null) {
		artistSongsHotSongs.sq = sq;
	}
	final ArtistSongsHotSongsHr? hr = jsonConvert.convert<ArtistSongsHotSongsHr>(json['hr']);
	if (hr != null) {
		artistSongsHotSongs.hr = hr;
	}
	final String? cd = jsonConvert.convert<String>(json['cd']);
	if (cd != null) {
		artistSongsHotSongs.cd = cd;
	}
	final dynamic a = jsonConvert.convert<dynamic>(json['a']);
	if (a != null) {
		artistSongsHotSongs.a = a;
	}
	final ArtistSongsHotSongsM? m = jsonConvert.convert<ArtistSongsHotSongsM>(json['m']);
	if (m != null) {
		artistSongsHotSongs.m = m;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		artistSongsHotSongs.name = name;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		artistSongsHotSongs.id = id;
	}
	final ArtistSongsHotSongsPrivilege? privilege = jsonConvert.convert<ArtistSongsHotSongsPrivilege>(json['privilege']);
	if (privilege != null) {
		artistSongsHotSongs.privilege = privilege;
	}
	return artistSongsHotSongs;
}

Map<String, dynamic> $ArtistSongsHotSongsToJson(ArtistSongsHotSongs entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['rtUrls'] =  entity.rtUrls;
	data['ar'] =  entity.ar?.map((v) => v.toJson()).toList();
	data['al'] = entity.al?.toJson();
	data['st'] = entity.st;
	data['noCopyrightRcmd'] = entity.noCopyrightRcmd;
	data['songJumpInfo'] = entity.songJumpInfo;
	data['rtype'] = entity.rtype;
	data['rurl'] = entity.rurl;
	data['pst'] = entity.pst;
	data['alia'] =  entity.alia;
	data['pop'] = entity.pop;
	data['rt'] = entity.rt;
	data['mst'] = entity.mst;
	data['cp'] = entity.cp;
	data['dt'] = entity.dt;
	data['crbt'] = entity.crbt;
	data['cf'] = entity.cf;
	data['rtUrl'] = entity.rtUrl;
	data['ftype'] = entity.ftype;
	data['djId'] = entity.djId;
	data['no'] = entity.no;
	data['fee'] = entity.fee;
	data['mv'] = entity.mv;
	data['t'] = entity.t;
	data['v'] = entity.v;
	data['h'] = entity.h?.toJson();
	data['l'] = entity.l?.toJson();
	data['sq'] = entity.sq?.toJson();
	data['hr'] = entity.hr?.toJson();
	data['cd'] = entity.cd;
	data['a'] = entity.a;
	data['m'] = entity.m?.toJson();
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['privilege'] = entity.privilege?.toJson();
	return data;
}

ArtistSongsHotSongsAr $ArtistSongsHotSongsArFromJson(Map<String, dynamic> json) {
	final ArtistSongsHotSongsAr artistSongsHotSongsAr = ArtistSongsHotSongsAr();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		artistSongsHotSongsAr.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		artistSongsHotSongsAr.name = name;
	}
	return artistSongsHotSongsAr;
}

Map<String, dynamic> $ArtistSongsHotSongsArToJson(ArtistSongsHotSongsAr entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	return data;
}

ArtistSongsHotSongsAl $ArtistSongsHotSongsAlFromJson(Map<String, dynamic> json) {
	final ArtistSongsHotSongsAl artistSongsHotSongsAl = ArtistSongsHotSongsAl();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		artistSongsHotSongsAl.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		artistSongsHotSongsAl.name = name;
	}
	final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
	if (picUrl != null) {
		artistSongsHotSongsAl.picUrl = picUrl;
	}
	final String? picStr = jsonConvert.convert<String>(json['pic_str']);
	if (picStr != null) {
		artistSongsHotSongsAl.picStr = picStr;
	}
	final int? pic = jsonConvert.convert<int>(json['pic']);
	if (pic != null) {
		artistSongsHotSongsAl.pic = pic;
	}
	return artistSongsHotSongsAl;
}

Map<String, dynamic> $ArtistSongsHotSongsAlToJson(ArtistSongsHotSongsAl entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['picUrl'] = entity.picUrl;
	data['pic_str'] = entity.picStr;
	data['pic'] = entity.pic;
	return data;
}

ArtistSongsHotSongsH $ArtistSongsHotSongsHFromJson(Map<String, dynamic> json) {
	final ArtistSongsHotSongsH artistSongsHotSongsH = ArtistSongsHotSongsH();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		artistSongsHotSongsH.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		artistSongsHotSongsH.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		artistSongsHotSongsH.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		artistSongsHotSongsH.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		artistSongsHotSongsH.sr = sr;
	}
	return artistSongsHotSongsH;
}

Map<String, dynamic> $ArtistSongsHotSongsHToJson(ArtistSongsHotSongsH entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

ArtistSongsHotSongsL $ArtistSongsHotSongsLFromJson(Map<String, dynamic> json) {
	final ArtistSongsHotSongsL artistSongsHotSongsL = ArtistSongsHotSongsL();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		artistSongsHotSongsL.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		artistSongsHotSongsL.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		artistSongsHotSongsL.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		artistSongsHotSongsL.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		artistSongsHotSongsL.sr = sr;
	}
	return artistSongsHotSongsL;
}

Map<String, dynamic> $ArtistSongsHotSongsLToJson(ArtistSongsHotSongsL entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

ArtistSongsHotSongsSq $ArtistSongsHotSongsSqFromJson(Map<String, dynamic> json) {
	final ArtistSongsHotSongsSq artistSongsHotSongsSq = ArtistSongsHotSongsSq();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		artistSongsHotSongsSq.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		artistSongsHotSongsSq.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		artistSongsHotSongsSq.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		artistSongsHotSongsSq.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		artistSongsHotSongsSq.sr = sr;
	}
	return artistSongsHotSongsSq;
}

Map<String, dynamic> $ArtistSongsHotSongsSqToJson(ArtistSongsHotSongsSq entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

ArtistSongsHotSongsHr $ArtistSongsHotSongsHrFromJson(Map<String, dynamic> json) {
	final ArtistSongsHotSongsHr artistSongsHotSongsHr = ArtistSongsHotSongsHr();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		artistSongsHotSongsHr.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		artistSongsHotSongsHr.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		artistSongsHotSongsHr.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		artistSongsHotSongsHr.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		artistSongsHotSongsHr.sr = sr;
	}
	return artistSongsHotSongsHr;
}

Map<String, dynamic> $ArtistSongsHotSongsHrToJson(ArtistSongsHotSongsHr entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

ArtistSongsHotSongsM $ArtistSongsHotSongsMFromJson(Map<String, dynamic> json) {
	final ArtistSongsHotSongsM artistSongsHotSongsM = ArtistSongsHotSongsM();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		artistSongsHotSongsM.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		artistSongsHotSongsM.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		artistSongsHotSongsM.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		artistSongsHotSongsM.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		artistSongsHotSongsM.sr = sr;
	}
	return artistSongsHotSongsM;
}

Map<String, dynamic> $ArtistSongsHotSongsMToJson(ArtistSongsHotSongsM entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

ArtistSongsHotSongsPrivilege $ArtistSongsHotSongsPrivilegeFromJson(Map<String, dynamic> json) {
	final ArtistSongsHotSongsPrivilege artistSongsHotSongsPrivilege = ArtistSongsHotSongsPrivilege();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		artistSongsHotSongsPrivilege.id = id;
	}
	final int? fee = jsonConvert.convert<int>(json['fee']);
	if (fee != null) {
		artistSongsHotSongsPrivilege.fee = fee;
	}
	final int? payed = jsonConvert.convert<int>(json['payed']);
	if (payed != null) {
		artistSongsHotSongsPrivilege.payed = payed;
	}
	final int? st = jsonConvert.convert<int>(json['st']);
	if (st != null) {
		artistSongsHotSongsPrivilege.st = st;
	}
	final int? pl = jsonConvert.convert<int>(json['pl']);
	if (pl != null) {
		artistSongsHotSongsPrivilege.pl = pl;
	}
	final int? dl = jsonConvert.convert<int>(json['dl']);
	if (dl != null) {
		artistSongsHotSongsPrivilege.dl = dl;
	}
	final int? sp = jsonConvert.convert<int>(json['sp']);
	if (sp != null) {
		artistSongsHotSongsPrivilege.sp = sp;
	}
	final int? cp = jsonConvert.convert<int>(json['cp']);
	if (cp != null) {
		artistSongsHotSongsPrivilege.cp = cp;
	}
	final int? subp = jsonConvert.convert<int>(json['subp']);
	if (subp != null) {
		artistSongsHotSongsPrivilege.subp = subp;
	}
	final bool? cs = jsonConvert.convert<bool>(json['cs']);
	if (cs != null) {
		artistSongsHotSongsPrivilege.cs = cs;
	}
	final int? maxbr = jsonConvert.convert<int>(json['maxbr']);
	if (maxbr != null) {
		artistSongsHotSongsPrivilege.maxbr = maxbr;
	}
	final int? fl = jsonConvert.convert<int>(json['fl']);
	if (fl != null) {
		artistSongsHotSongsPrivilege.fl = fl;
	}
	final bool? toast = jsonConvert.convert<bool>(json['toast']);
	if (toast != null) {
		artistSongsHotSongsPrivilege.toast = toast;
	}
	final int? flag = jsonConvert.convert<int>(json['flag']);
	if (flag != null) {
		artistSongsHotSongsPrivilege.flag = flag;
	}
	final bool? preSell = jsonConvert.convert<bool>(json['preSell']);
	if (preSell != null) {
		artistSongsHotSongsPrivilege.preSell = preSell;
	}
	final int? playMaxbr = jsonConvert.convert<int>(json['playMaxbr']);
	if (playMaxbr != null) {
		artistSongsHotSongsPrivilege.playMaxbr = playMaxbr;
	}
	final int? downloadMaxbr = jsonConvert.convert<int>(json['downloadMaxbr']);
	if (downloadMaxbr != null) {
		artistSongsHotSongsPrivilege.downloadMaxbr = downloadMaxbr;
	}
	final String? maxBrLevel = jsonConvert.convert<String>(json['maxBrLevel']);
	if (maxBrLevel != null) {
		artistSongsHotSongsPrivilege.maxBrLevel = maxBrLevel;
	}
	final String? playMaxBrLevel = jsonConvert.convert<String>(json['playMaxBrLevel']);
	if (playMaxBrLevel != null) {
		artistSongsHotSongsPrivilege.playMaxBrLevel = playMaxBrLevel;
	}
	final String? downloadMaxBrLevel = jsonConvert.convert<String>(json['downloadMaxBrLevel']);
	if (downloadMaxBrLevel != null) {
		artistSongsHotSongsPrivilege.downloadMaxBrLevel = downloadMaxBrLevel;
	}
	final String? plLevel = jsonConvert.convert<String>(json['plLevel']);
	if (plLevel != null) {
		artistSongsHotSongsPrivilege.plLevel = plLevel;
	}
	final String? dlLevel = jsonConvert.convert<String>(json['dlLevel']);
	if (dlLevel != null) {
		artistSongsHotSongsPrivilege.dlLevel = dlLevel;
	}
	final String? flLevel = jsonConvert.convert<String>(json['flLevel']);
	if (flLevel != null) {
		artistSongsHotSongsPrivilege.flLevel = flLevel;
	}
	final dynamic rscl = jsonConvert.convert<dynamic>(json['rscl']);
	if (rscl != null) {
		artistSongsHotSongsPrivilege.rscl = rscl;
	}
	final ArtistSongsHotSongsPrivilegeFreeTrialPrivilege? freeTrialPrivilege = jsonConvert.convert<ArtistSongsHotSongsPrivilegeFreeTrialPrivilege>(json['freeTrialPrivilege']);
	if (freeTrialPrivilege != null) {
		artistSongsHotSongsPrivilege.freeTrialPrivilege = freeTrialPrivilege;
	}
	final List<ArtistSongsHotSongsPrivilegeChargeInfoList>? chargeInfoList = jsonConvert.convertListNotNull<ArtistSongsHotSongsPrivilegeChargeInfoList>(json['chargeInfoList']);
	if (chargeInfoList != null) {
		artistSongsHotSongsPrivilege.chargeInfoList = chargeInfoList;
	}
	return artistSongsHotSongsPrivilege;
}

Map<String, dynamic> $ArtistSongsHotSongsPrivilegeToJson(ArtistSongsHotSongsPrivilege entity) {
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

ArtistSongsHotSongsPrivilegeFreeTrialPrivilege $ArtistSongsHotSongsPrivilegeFreeTrialPrivilegeFromJson(Map<String, dynamic> json) {
	final ArtistSongsHotSongsPrivilegeFreeTrialPrivilege artistSongsHotSongsPrivilegeFreeTrialPrivilege = ArtistSongsHotSongsPrivilegeFreeTrialPrivilege();
	final bool? resConsumable = jsonConvert.convert<bool>(json['resConsumable']);
	if (resConsumable != null) {
		artistSongsHotSongsPrivilegeFreeTrialPrivilege.resConsumable = resConsumable;
	}
	final bool? userConsumable = jsonConvert.convert<bool>(json['userConsumable']);
	if (userConsumable != null) {
		artistSongsHotSongsPrivilegeFreeTrialPrivilege.userConsumable = userConsumable;
	}
	final dynamic listenType = jsonConvert.convert<dynamic>(json['listenType']);
	if (listenType != null) {
		artistSongsHotSongsPrivilegeFreeTrialPrivilege.listenType = listenType;
	}
	return artistSongsHotSongsPrivilegeFreeTrialPrivilege;
}

Map<String, dynamic> $ArtistSongsHotSongsPrivilegeFreeTrialPrivilegeToJson(ArtistSongsHotSongsPrivilegeFreeTrialPrivilege entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['resConsumable'] = entity.resConsumable;
	data['userConsumable'] = entity.userConsumable;
	data['listenType'] = entity.listenType;
	return data;
}

ArtistSongsHotSongsPrivilegeChargeInfoList $ArtistSongsHotSongsPrivilegeChargeInfoListFromJson(Map<String, dynamic> json) {
	final ArtistSongsHotSongsPrivilegeChargeInfoList artistSongsHotSongsPrivilegeChargeInfoList = ArtistSongsHotSongsPrivilegeChargeInfoList();
	final int? rate = jsonConvert.convert<int>(json['rate']);
	if (rate != null) {
		artistSongsHotSongsPrivilegeChargeInfoList.rate = rate;
	}
	final dynamic chargeUrl = jsonConvert.convert<dynamic>(json['chargeUrl']);
	if (chargeUrl != null) {
		artistSongsHotSongsPrivilegeChargeInfoList.chargeUrl = chargeUrl;
	}
	final dynamic chargeMessage = jsonConvert.convert<dynamic>(json['chargeMessage']);
	if (chargeMessage != null) {
		artistSongsHotSongsPrivilegeChargeInfoList.chargeMessage = chargeMessage;
	}
	final int? chargeType = jsonConvert.convert<int>(json['chargeType']);
	if (chargeType != null) {
		artistSongsHotSongsPrivilegeChargeInfoList.chargeType = chargeType;
	}
	return artistSongsHotSongsPrivilegeChargeInfoList;
}

Map<String, dynamic> $ArtistSongsHotSongsPrivilegeChargeInfoListToJson(ArtistSongsHotSongsPrivilegeChargeInfoList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['rate'] = entity.rate;
	data['chargeUrl'] = entity.chargeUrl;
	data['chargeMessage'] = entity.chargeMessage;
	data['chargeType'] = entity.chargeType;
	return data;
}