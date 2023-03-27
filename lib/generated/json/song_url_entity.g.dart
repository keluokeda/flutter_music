import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/song_url_entity.dart';

SongUrlEntity $SongUrlEntityFromJson(Map<String, dynamic> json) {
	final SongUrlEntity songUrlEntity = SongUrlEntity();
	final List<SongUrlData>? data = jsonConvert.convertListNotNull<SongUrlData>(json['data']);
	if (data != null) {
		songUrlEntity.data = data;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		songUrlEntity.code = code;
	}
	return songUrlEntity;
}

Map<String, dynamic> $SongUrlEntityToJson(SongUrlEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['data'] =  entity.data?.map((v) => v.toJson()).toList();
	data['code'] = entity.code;
	return data;
}

SongUrlData $SongUrlDataFromJson(Map<String, dynamic> json) {
	final SongUrlData songUrlData = SongUrlData();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		songUrlData.id = id;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		songUrlData.url = url;
	}
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		songUrlData.br = br;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		songUrlData.size = size;
	}
	final String? md5 = jsonConvert.convert<String>(json['md5']);
	if (md5 != null) {
		songUrlData.md5 = md5;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		songUrlData.code = code;
	}
	final int? expi = jsonConvert.convert<int>(json['expi']);
	if (expi != null) {
		songUrlData.expi = expi;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		songUrlData.type = type;
	}
	final double? gain = jsonConvert.convert<double>(json['gain']);
	if (gain != null) {
		songUrlData.gain = gain;
	}
	final int? peak = jsonConvert.convert<int>(json['peak']);
	if (peak != null) {
		songUrlData.peak = peak;
	}
	final int? fee = jsonConvert.convert<int>(json['fee']);
	if (fee != null) {
		songUrlData.fee = fee;
	}
	final dynamic uf = jsonConvert.convert<dynamic>(json['uf']);
	if (uf != null) {
		songUrlData.uf = uf;
	}
	final int? payed = jsonConvert.convert<int>(json['payed']);
	if (payed != null) {
		songUrlData.payed = payed;
	}
	final int? flag = jsonConvert.convert<int>(json['flag']);
	if (flag != null) {
		songUrlData.flag = flag;
	}
	final bool? canExtend = jsonConvert.convert<bool>(json['canExtend']);
	if (canExtend != null) {
		songUrlData.canExtend = canExtend;
	}
	final dynamic freeTrialInfo = jsonConvert.convert<dynamic>(json['freeTrialInfo']);
	if (freeTrialInfo != null) {
		songUrlData.freeTrialInfo = freeTrialInfo;
	}
	final String? level = jsonConvert.convert<String>(json['level']);
	if (level != null) {
		songUrlData.level = level;
	}
	final String? encodeType = jsonConvert.convert<String>(json['encodeType']);
	if (encodeType != null) {
		songUrlData.encodeType = encodeType;
	}
	final SongUrlDataFreeTrialPrivilege? freeTrialPrivilege = jsonConvert.convert<SongUrlDataFreeTrialPrivilege>(json['freeTrialPrivilege']);
	if (freeTrialPrivilege != null) {
		songUrlData.freeTrialPrivilege = freeTrialPrivilege;
	}
	final SongUrlDataFreeTimeTrialPrivilege? freeTimeTrialPrivilege = jsonConvert.convert<SongUrlDataFreeTimeTrialPrivilege>(json['freeTimeTrialPrivilege']);
	if (freeTimeTrialPrivilege != null) {
		songUrlData.freeTimeTrialPrivilege = freeTimeTrialPrivilege;
	}
	final int? urlSource = jsonConvert.convert<int>(json['urlSource']);
	if (urlSource != null) {
		songUrlData.urlSource = urlSource;
	}
	final int? rightSource = jsonConvert.convert<int>(json['rightSource']);
	if (rightSource != null) {
		songUrlData.rightSource = rightSource;
	}
	final dynamic podcastCtrp = jsonConvert.convert<dynamic>(json['podcastCtrp']);
	if (podcastCtrp != null) {
		songUrlData.podcastCtrp = podcastCtrp;
	}
	final dynamic effectTypes = jsonConvert.convert<dynamic>(json['effectTypes']);
	if (effectTypes != null) {
		songUrlData.effectTypes = effectTypes;
	}
	final int? time = jsonConvert.convert<int>(json['time']);
	if (time != null) {
		songUrlData.time = time;
	}
	return songUrlData;
}

Map<String, dynamic> $SongUrlDataToJson(SongUrlData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['url'] = entity.url;
	data['br'] = entity.br;
	data['size'] = entity.size;
	data['md5'] = entity.md5;
	data['code'] = entity.code;
	data['expi'] = entity.expi;
	data['type'] = entity.type;
	data['gain'] = entity.gain;
	data['peak'] = entity.peak;
	data['fee'] = entity.fee;
	data['uf'] = entity.uf;
	data['payed'] = entity.payed;
	data['flag'] = entity.flag;
	data['canExtend'] = entity.canExtend;
	data['freeTrialInfo'] = entity.freeTrialInfo;
	data['level'] = entity.level;
	data['encodeType'] = entity.encodeType;
	data['freeTrialPrivilege'] = entity.freeTrialPrivilege?.toJson();
	data['freeTimeTrialPrivilege'] = entity.freeTimeTrialPrivilege?.toJson();
	data['urlSource'] = entity.urlSource;
	data['rightSource'] = entity.rightSource;
	data['podcastCtrp'] = entity.podcastCtrp;
	data['effectTypes'] = entity.effectTypes;
	data['time'] = entity.time;
	return data;
}

SongUrlDataFreeTrialPrivilege $SongUrlDataFreeTrialPrivilegeFromJson(Map<String, dynamic> json) {
	final SongUrlDataFreeTrialPrivilege songUrlDataFreeTrialPrivilege = SongUrlDataFreeTrialPrivilege();
	final bool? resConsumable = jsonConvert.convert<bool>(json['resConsumable']);
	if (resConsumable != null) {
		songUrlDataFreeTrialPrivilege.resConsumable = resConsumable;
	}
	final bool? userConsumable = jsonConvert.convert<bool>(json['userConsumable']);
	if (userConsumable != null) {
		songUrlDataFreeTrialPrivilege.userConsumable = userConsumable;
	}
	final dynamic listenType = jsonConvert.convert<dynamic>(json['listenType']);
	if (listenType != null) {
		songUrlDataFreeTrialPrivilege.listenType = listenType;
	}
	final dynamic cannotListenReason = jsonConvert.convert<dynamic>(json['cannotListenReason']);
	if (cannotListenReason != null) {
		songUrlDataFreeTrialPrivilege.cannotListenReason = cannotListenReason;
	}
	return songUrlDataFreeTrialPrivilege;
}

Map<String, dynamic> $SongUrlDataFreeTrialPrivilegeToJson(SongUrlDataFreeTrialPrivilege entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['resConsumable'] = entity.resConsumable;
	data['userConsumable'] = entity.userConsumable;
	data['listenType'] = entity.listenType;
	data['cannotListenReason'] = entity.cannotListenReason;
	return data;
}

SongUrlDataFreeTimeTrialPrivilege $SongUrlDataFreeTimeTrialPrivilegeFromJson(Map<String, dynamic> json) {
	final SongUrlDataFreeTimeTrialPrivilege songUrlDataFreeTimeTrialPrivilege = SongUrlDataFreeTimeTrialPrivilege();
	final bool? resConsumable = jsonConvert.convert<bool>(json['resConsumable']);
	if (resConsumable != null) {
		songUrlDataFreeTimeTrialPrivilege.resConsumable = resConsumable;
	}
	final bool? userConsumable = jsonConvert.convert<bool>(json['userConsumable']);
	if (userConsumable != null) {
		songUrlDataFreeTimeTrialPrivilege.userConsumable = userConsumable;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		songUrlDataFreeTimeTrialPrivilege.type = type;
	}
	final int? remainTime = jsonConvert.convert<int>(json['remainTime']);
	if (remainTime != null) {
		songUrlDataFreeTimeTrialPrivilege.remainTime = remainTime;
	}
	return songUrlDataFreeTimeTrialPrivilege;
}

Map<String, dynamic> $SongUrlDataFreeTimeTrialPrivilegeToJson(SongUrlDataFreeTimeTrialPrivilege entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['resConsumable'] = entity.resConsumable;
	data['userConsumable'] = entity.userConsumable;
	data['type'] = entity.type;
	data['remainTime'] = entity.remainTime;
	return data;
}