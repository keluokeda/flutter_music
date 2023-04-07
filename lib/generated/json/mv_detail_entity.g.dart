import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/mv_detail_entity.dart';

MvDetailEntity $MvDetailEntityFromJson(Map<String, dynamic> json) {
	final MvDetailEntity mvDetailEntity = MvDetailEntity();
	final String? loadingPic = jsonConvert.convert<String>(json['loadingPic']);
	if (loadingPic != null) {
		mvDetailEntity.loadingPic = loadingPic;
	}
	final String? bufferPic = jsonConvert.convert<String>(json['bufferPic']);
	if (bufferPic != null) {
		mvDetailEntity.bufferPic = bufferPic;
	}
	final String? loadingPicFS = jsonConvert.convert<String>(json['loadingPicFS']);
	if (loadingPicFS != null) {
		mvDetailEntity.loadingPicFS = loadingPicFS;
	}
	final String? bufferPicFS = jsonConvert.convert<String>(json['bufferPicFS']);
	if (bufferPicFS != null) {
		mvDetailEntity.bufferPicFS = bufferPicFS;
	}
	final bool? subed = jsonConvert.convert<bool>(json['subed']);
	if (subed != null) {
		mvDetailEntity.subed = subed;
	}
	final MvDetailMp? mp = jsonConvert.convert<MvDetailMp>(json['mp']);
	if (mp != null) {
		mvDetailEntity.mp = mp;
	}
	final MvDetailData? data = jsonConvert.convert<MvDetailData>(json['data']);
	if (data != null) {
		mvDetailEntity.data = data;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		mvDetailEntity.code = code;
	}
	return mvDetailEntity;
}

Map<String, dynamic> $MvDetailEntityToJson(MvDetailEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['loadingPic'] = entity.loadingPic;
	data['bufferPic'] = entity.bufferPic;
	data['loadingPicFS'] = entity.loadingPicFS;
	data['bufferPicFS'] = entity.bufferPicFS;
	data['subed'] = entity.subed;
	data['mp'] = entity.mp?.toJson();
	data['data'] = entity.data?.toJson();
	data['code'] = entity.code;
	return data;
}

MvDetailMp $MvDetailMpFromJson(Map<String, dynamic> json) {
	final MvDetailMp mvDetailMp = MvDetailMp();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		mvDetailMp.id = id;
	}
	final int? fee = jsonConvert.convert<int>(json['fee']);
	if (fee != null) {
		mvDetailMp.fee = fee;
	}
	final int? mvFee = jsonConvert.convert<int>(json['mvFee']);
	if (mvFee != null) {
		mvDetailMp.mvFee = mvFee;
	}
	final int? payed = jsonConvert.convert<int>(json['payed']);
	if (payed != null) {
		mvDetailMp.payed = payed;
	}
	final int? pl = jsonConvert.convert<int>(json['pl']);
	if (pl != null) {
		mvDetailMp.pl = pl;
	}
	final int? dl = jsonConvert.convert<int>(json['dl']);
	if (dl != null) {
		mvDetailMp.dl = dl;
	}
	final int? cp = jsonConvert.convert<int>(json['cp']);
	if (cp != null) {
		mvDetailMp.cp = cp;
	}
	final int? sid = jsonConvert.convert<int>(json['sid']);
	if (sid != null) {
		mvDetailMp.sid = sid;
	}
	final int? st = jsonConvert.convert<int>(json['st']);
	if (st != null) {
		mvDetailMp.st = st;
	}
	final bool? normal = jsonConvert.convert<bool>(json['normal']);
	if (normal != null) {
		mvDetailMp.normal = normal;
	}
	final bool? unauthorized = jsonConvert.convert<bool>(json['unauthorized']);
	if (unauthorized != null) {
		mvDetailMp.unauthorized = unauthorized;
	}
	final dynamic msg = jsonConvert.convert<dynamic>(json['msg']);
	if (msg != null) {
		mvDetailMp.msg = msg;
	}
	return mvDetailMp;
}

Map<String, dynamic> $MvDetailMpToJson(MvDetailMp entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['fee'] = entity.fee;
	data['mvFee'] = entity.mvFee;
	data['payed'] = entity.payed;
	data['pl'] = entity.pl;
	data['dl'] = entity.dl;
	data['cp'] = entity.cp;
	data['sid'] = entity.sid;
	data['st'] = entity.st;
	data['normal'] = entity.normal;
	data['unauthorized'] = entity.unauthorized;
	data['msg'] = entity.msg;
	return data;
}

MvDetailData $MvDetailDataFromJson(Map<String, dynamic> json) {
	final MvDetailData mvDetailData = MvDetailData();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		mvDetailData.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		mvDetailData.name = name;
	}
	final int? artistId = jsonConvert.convert<int>(json['artistId']);
	if (artistId != null) {
		mvDetailData.artistId = artistId;
	}
	final String? artistName = jsonConvert.convert<String>(json['artistName']);
	if (artistName != null) {
		mvDetailData.artistName = artistName;
	}
	final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
	if (briefDesc != null) {
		mvDetailData.briefDesc = briefDesc;
	}
	final String? desc = jsonConvert.convert<String>(json['desc']);
	if (desc != null) {
		mvDetailData.desc = desc;
	}
	final String? cover = jsonConvert.convert<String>(json['cover']);
	if (cover != null) {
		mvDetailData.cover = cover;
	}
	final String? coveridStr = jsonConvert.convert<String>(json['coverId_str']);
	if (coveridStr != null) {
		mvDetailData.coveridStr = coveridStr;
	}
	final int? coverId = jsonConvert.convert<int>(json['coverId']);
	if (coverId != null) {
		mvDetailData.coverId = coverId;
	}
	final int? playCount = jsonConvert.convert<int>(json['playCount']);
	if (playCount != null) {
		mvDetailData.playCount = playCount;
	}
	final int? subCount = jsonConvert.convert<int>(json['subCount']);
	if (subCount != null) {
		mvDetailData.subCount = subCount;
	}
	final int? shareCount = jsonConvert.convert<int>(json['shareCount']);
	if (shareCount != null) {
		mvDetailData.shareCount = shareCount;
	}
	final int? commentCount = jsonConvert.convert<int>(json['commentCount']);
	if (commentCount != null) {
		mvDetailData.commentCount = commentCount;
	}
	final int? duration = jsonConvert.convert<int>(json['duration']);
	if (duration != null) {
		mvDetailData.duration = duration;
	}
	final int? nType = jsonConvert.convert<int>(json['nType']);
	if (nType != null) {
		mvDetailData.nType = nType;
	}
	final String? publishTime = jsonConvert.convert<String>(json['publishTime']);
	if (publishTime != null) {
		mvDetailData.publishTime = publishTime;
	}
	final dynamic price = jsonConvert.convert<dynamic>(json['price']);
	if (price != null) {
		mvDetailData.price = price;
	}
	final List<MvDetailDataBrs>? brs = jsonConvert.convertListNotNull<MvDetailDataBrs>(json['brs']);
	if (brs != null) {
		mvDetailData.brs = brs;
	}
	final List<MvDetailDataArtists>? artists = jsonConvert.convertListNotNull<MvDetailDataArtists>(json['artists']);
	if (artists != null) {
		mvDetailData.artists = artists;
	}
	final String? commentThreadId = jsonConvert.convert<String>(json['commentThreadId']);
	if (commentThreadId != null) {
		mvDetailData.commentThreadId = commentThreadId;
	}
	final List<dynamic>? videoGroup = jsonConvert.convertListNotNull<dynamic>(json['videoGroup']);
	if (videoGroup != null) {
		mvDetailData.videoGroup = videoGroup;
	}
	return mvDetailData;
}

Map<String, dynamic> $MvDetailDataToJson(MvDetailData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['artistId'] = entity.artistId;
	data['artistName'] = entity.artistName;
	data['briefDesc'] = entity.briefDesc;
	data['desc'] = entity.desc;
	data['cover'] = entity.cover;
	data['coverId_str'] = entity.coveridStr;
	data['coverId'] = entity.coverId;
	data['playCount'] = entity.playCount;
	data['subCount'] = entity.subCount;
	data['shareCount'] = entity.shareCount;
	data['commentCount'] = entity.commentCount;
	data['duration'] = entity.duration;
	data['nType'] = entity.nType;
	data['publishTime'] = entity.publishTime;
	data['price'] = entity.price;
	data['brs'] =  entity.brs?.map((v) => v.toJson()).toList();
	data['artists'] =  entity.artists?.map((v) => v.toJson()).toList();
	data['commentThreadId'] = entity.commentThreadId;
	data['videoGroup'] =  entity.videoGroup;
	return data;
}

MvDetailDataBrs $MvDetailDataBrsFromJson(Map<String, dynamic> json) {
	final MvDetailDataBrs mvDetailDataBrs = MvDetailDataBrs();
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		mvDetailDataBrs.size = size;
	}
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		mvDetailDataBrs.br = br;
	}
	final int? point = jsonConvert.convert<int>(json['point']);
	if (point != null) {
		mvDetailDataBrs.point = point;
	}
	return mvDetailDataBrs;
}

Map<String, dynamic> $MvDetailDataBrsToJson(MvDetailDataBrs entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['size'] = entity.size;
	data['br'] = entity.br;
	data['point'] = entity.point;
	return data;
}

MvDetailDataArtists $MvDetailDataArtistsFromJson(Map<String, dynamic> json) {
	final MvDetailDataArtists mvDetailDataArtists = MvDetailDataArtists();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		mvDetailDataArtists.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		mvDetailDataArtists.name = name;
	}
	final String? img1v1Url = jsonConvert.convert<String>(json['img1v1Url']);
	if (img1v1Url != null) {
		mvDetailDataArtists.img1v1Url = img1v1Url;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		mvDetailDataArtists.followed = followed;
	}
	return mvDetailDataArtists;
}

Map<String, dynamic> $MvDetailDataArtistsToJson(MvDetailDataArtists entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['img1v1Url'] = entity.img1v1Url;
	data['followed'] = entity.followed;
	return data;
}