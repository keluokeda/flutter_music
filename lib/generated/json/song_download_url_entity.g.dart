import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/song_download_url_entity.dart';

SongDownloadUrlEntity $SongDownloadUrlEntityFromJson(Map<String, dynamic> json) {
	final SongDownloadUrlEntity songDownloadUrlEntity = SongDownloadUrlEntity();
	final SongDownloadUrlData? data = jsonConvert.convert<SongDownloadUrlData>(json['data']);
	if (data != null) {
		songDownloadUrlEntity.data = data;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		songDownloadUrlEntity.code = code;
	}
	return songDownloadUrlEntity;
}

Map<String, dynamic> $SongDownloadUrlEntityToJson(SongDownloadUrlEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['data'] = entity.data?.toJson();
	data['code'] = entity.code;
	return data;
}

SongDownloadUrlData $SongDownloadUrlDataFromJson(Map<String, dynamic> json) {
	final SongDownloadUrlData songDownloadUrlData = SongDownloadUrlData();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		songDownloadUrlData.id = id;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		songDownloadUrlData.url = url;
	}
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		songDownloadUrlData.br = br;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		songDownloadUrlData.size = size;
	}
	final String? md5 = jsonConvert.convert<String>(json['md5']);
	if (md5 != null) {
		songDownloadUrlData.md5 = md5;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		songDownloadUrlData.code = code;
	}
	final int? expi = jsonConvert.convert<int>(json['expi']);
	if (expi != null) {
		songDownloadUrlData.expi = expi;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		songDownloadUrlData.type = type;
	}
	final double? gain = jsonConvert.convert<double>(json['gain']);
	if (gain != null) {
		songDownloadUrlData.gain = gain;
	}
	final int? peak = jsonConvert.convert<int>(json['peak']);
	if (peak != null) {
		songDownloadUrlData.peak = peak;
	}
	final int? fee = jsonConvert.convert<int>(json['fee']);
	if (fee != null) {
		songDownloadUrlData.fee = fee;
	}
	final dynamic uf = jsonConvert.convert<dynamic>(json['uf']);
	if (uf != null) {
		songDownloadUrlData.uf = uf;
	}
	final int? payed = jsonConvert.convert<int>(json['payed']);
	if (payed != null) {
		songDownloadUrlData.payed = payed;
	}
	final int? flag = jsonConvert.convert<int>(json['flag']);
	if (flag != null) {
		songDownloadUrlData.flag = flag;
	}
	final bool? canExtend = jsonConvert.convert<bool>(json['canExtend']);
	if (canExtend != null) {
		songDownloadUrlData.canExtend = canExtend;
	}
	final dynamic freeTrialInfo = jsonConvert.convert<dynamic>(json['freeTrialInfo']);
	if (freeTrialInfo != null) {
		songDownloadUrlData.freeTrialInfo = freeTrialInfo;
	}
	final String? level = jsonConvert.convert<String>(json['level']);
	if (level != null) {
		songDownloadUrlData.level = level;
	}
	final String? encodeType = jsonConvert.convert<String>(json['encodeType']);
	if (encodeType != null) {
		songDownloadUrlData.encodeType = encodeType;
	}
	final SongDownloadUrlDataFreeTrialPrivilege? freeTrialPrivilege = jsonConvert.convert<SongDownloadUrlDataFreeTrialPrivilege>(json['freeTrialPrivilege']);
	if (freeTrialPrivilege != null) {
		songDownloadUrlData.freeTrialPrivilege = freeTrialPrivilege;
	}
	final SongDownloadUrlDataFreeTimeTrialPrivilege? freeTimeTrialPrivilege = jsonConvert.convert<SongDownloadUrlDataFreeTimeTrialPrivilege>(json['freeTimeTrialPrivilege']);
	if (freeTimeTrialPrivilege != null) {
		songDownloadUrlData.freeTimeTrialPrivilege = freeTimeTrialPrivilege;
	}
	final int? urlSource = jsonConvert.convert<int>(json['urlSource']);
	if (urlSource != null) {
		songDownloadUrlData.urlSource = urlSource;
	}
	final int? rightSource = jsonConvert.convert<int>(json['rightSource']);
	if (rightSource != null) {
		songDownloadUrlData.rightSource = rightSource;
	}
	final dynamic podcastCtrp = jsonConvert.convert<dynamic>(json['podcastCtrp']);
	if (podcastCtrp != null) {
		songDownloadUrlData.podcastCtrp = podcastCtrp;
	}
	final dynamic effectTypes = jsonConvert.convert<dynamic>(json['effectTypes']);
	if (effectTypes != null) {
		songDownloadUrlData.effectTypes = effectTypes;
	}
	final int? time = jsonConvert.convert<int>(json['time']);
	if (time != null) {
		songDownloadUrlData.time = time;
	}
	return songDownloadUrlData;
}

Map<String, dynamic> $SongDownloadUrlDataToJson(SongDownloadUrlData entity) {
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

SongDownloadUrlDataFreeTrialPrivilege $SongDownloadUrlDataFreeTrialPrivilegeFromJson(Map<String, dynamic> json) {
	final SongDownloadUrlDataFreeTrialPrivilege songDownloadUrlDataFreeTrialPrivilege = SongDownloadUrlDataFreeTrialPrivilege();
	final bool? resConsumable = jsonConvert.convert<bool>(json['resConsumable']);
	if (resConsumable != null) {
		songDownloadUrlDataFreeTrialPrivilege.resConsumable = resConsumable;
	}
	final bool? userConsumable = jsonConvert.convert<bool>(json['userConsumable']);
	if (userConsumable != null) {
		songDownloadUrlDataFreeTrialPrivilege.userConsumable = userConsumable;
	}
	final dynamic listenType = jsonConvert.convert<dynamic>(json['listenType']);
	if (listenType != null) {
		songDownloadUrlDataFreeTrialPrivilege.listenType = listenType;
	}
	final dynamic cannotListenReason = jsonConvert.convert<dynamic>(json['cannotListenReason']);
	if (cannotListenReason != null) {
		songDownloadUrlDataFreeTrialPrivilege.cannotListenReason = cannotListenReason;
	}
	return songDownloadUrlDataFreeTrialPrivilege;
}

Map<String, dynamic> $SongDownloadUrlDataFreeTrialPrivilegeToJson(SongDownloadUrlDataFreeTrialPrivilege entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['resConsumable'] = entity.resConsumable;
	data['userConsumable'] = entity.userConsumable;
	data['listenType'] = entity.listenType;
	data['cannotListenReason'] = entity.cannotListenReason;
	return data;
}

SongDownloadUrlDataFreeTimeTrialPrivilege $SongDownloadUrlDataFreeTimeTrialPrivilegeFromJson(Map<String, dynamic> json) {
	final SongDownloadUrlDataFreeTimeTrialPrivilege songDownloadUrlDataFreeTimeTrialPrivilege = SongDownloadUrlDataFreeTimeTrialPrivilege();
	final bool? resConsumable = jsonConvert.convert<bool>(json['resConsumable']);
	if (resConsumable != null) {
		songDownloadUrlDataFreeTimeTrialPrivilege.resConsumable = resConsumable;
	}
	final bool? userConsumable = jsonConvert.convert<bool>(json['userConsumable']);
	if (userConsumable != null) {
		songDownloadUrlDataFreeTimeTrialPrivilege.userConsumable = userConsumable;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		songDownloadUrlDataFreeTimeTrialPrivilege.type = type;
	}
	final int? remainTime = jsonConvert.convert<int>(json['remainTime']);
	if (remainTime != null) {
		songDownloadUrlDataFreeTimeTrialPrivilege.remainTime = remainTime;
	}
	return songDownloadUrlDataFreeTimeTrialPrivilege;
}

Map<String, dynamic> $SongDownloadUrlDataFreeTimeTrialPrivilegeToJson(SongDownloadUrlDataFreeTimeTrialPrivilege entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['resConsumable'] = entity.resConsumable;
	data['userConsumable'] = entity.userConsumable;
	data['type'] = entity.type;
	data['remainTime'] = entity.remainTime;
	return data;
}