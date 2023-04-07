import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/private_history_entity.dart';

PrivateHistoryEntity $PrivateHistoryEntityFromJson(Map<String, dynamic> json) {
	final PrivateHistoryEntity privateHistoryEntity = PrivateHistoryEntity();
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		privateHistoryEntity.code = code;
	}
	final bool? isArtist = jsonConvert.convert<bool>(json['isArtist']);
	if (isArtist != null) {
		privateHistoryEntity.isArtist = isArtist;
	}
	final bool? isSubed = jsonConvert.convert<bool>(json['isSubed']);
	if (isSubed != null) {
		privateHistoryEntity.isSubed = isSubed;
	}
	final String? hint = jsonConvert.convert<String>(json['hint']);
	if (hint != null) {
		privateHistoryEntity.hint = hint;
	}
	final bool? more = jsonConvert.convert<bool>(json['more']);
	if (more != null) {
		privateHistoryEntity.more = more;
	}
	final List<PrivateHistoryMsgs>? msgs = jsonConvert.convertListNotNull<PrivateHistoryMsgs>(json['msgs']);
	if (msgs != null) {
		privateHistoryEntity.msgs = msgs;
	}
	return privateHistoryEntity;
}

Map<String, dynamic> $PrivateHistoryEntityToJson(PrivateHistoryEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['code'] = entity.code;
	data['isArtist'] = entity.isArtist;
	data['isSubed'] = entity.isSubed;
	data['hint'] = entity.hint;
	data['more'] = entity.more;
	data['msgs'] =  entity.msgs?.map((v) => v.toJson()).toList();
	return data;
}

PrivateHistoryMsgs $PrivateHistoryMsgsFromJson(Map<String, dynamic> json) {
	final PrivateHistoryMsgs privateHistoryMsgs = PrivateHistoryMsgs();
	final PrivateHistoryMsgsFromUser? fromUser = jsonConvert.convert<PrivateHistoryMsgsFromUser>(json['fromUser']);
	if (fromUser != null) {
		privateHistoryMsgs.fromUser = fromUser;
	}
	final PrivateHistoryMsgsToUser? toUser = jsonConvert.convert<PrivateHistoryMsgsToUser>(json['toUser']);
	if (toUser != null) {
		privateHistoryMsgs.toUser = toUser;
	}
	final dynamic realFromUser = jsonConvert.convert<dynamic>(json['realFromUser']);
	if (realFromUser != null) {
		privateHistoryMsgs.realFromUser = realFromUser;
	}
	final String? msg = jsonConvert.convert<String>(json['msg']);
	if (msg != null) {
		privateHistoryMsgs.msg = msg;
	}
	final dynamic tipsInfo = jsonConvert.convert<dynamic>(json['tipsInfo']);
	if (tipsInfo != null) {
		privateHistoryMsgs.tipsInfo = tipsInfo;
	}
	final dynamic refPrivateMsgData = jsonConvert.convert<dynamic>(json['refPrivateMsgData']);
	if (refPrivateMsgData != null) {
		privateHistoryMsgs.refPrivateMsgData = refPrivateMsgData;
	}
	final int? batchId = jsonConvert.convert<int>(json['batchId']);
	if (batchId != null) {
		privateHistoryMsgs.batchId = batchId;
	}
	final int? time = jsonConvert.convert<int>(json['time']);
	if (time != null) {
		privateHistoryMsgs.time = time;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		privateHistoryMsgs.id = id;
	}
	return privateHistoryMsgs;
}

Map<String, dynamic> $PrivateHistoryMsgsToJson(PrivateHistoryMsgs entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['fromUser'] = entity.fromUser?.toJson();
	data['toUser'] = entity.toUser?.toJson();
	data['realFromUser'] = entity.realFromUser;
	data['msg'] = entity.msg;
	data['tipsInfo'] = entity.tipsInfo;
	data['refPrivateMsgData'] = entity.refPrivateMsgData;
	data['batchId'] = entity.batchId;
	data['time'] = entity.time;
	data['id'] = entity.id;
	return data;
}

PrivateHistoryMsgsFromUser $PrivateHistoryMsgsFromUserFromJson(Map<String, dynamic> json) {
	final PrivateHistoryMsgsFromUser privateHistoryMsgsFromUser = PrivateHistoryMsgsFromUser();
	final int? gender = jsonConvert.convert<int>(json['gender']);
	if (gender != null) {
		privateHistoryMsgsFromUser.gender = gender;
	}
	final int? avatarImgId = jsonConvert.convert<int>(json['avatarImgId']);
	if (avatarImgId != null) {
		privateHistoryMsgsFromUser.avatarImgId = avatarImgId;
	}
	final String? detailDescription = jsonConvert.convert<String>(json['detailDescription']);
	if (detailDescription != null) {
		privateHistoryMsgsFromUser.detailDescription = detailDescription;
	}
	final bool? defaultAvatar = jsonConvert.convert<bool>(json['defaultAvatar']);
	if (defaultAvatar != null) {
		privateHistoryMsgsFromUser.defaultAvatar = defaultAvatar;
	}
	final int? djStatus = jsonConvert.convert<int>(json['djStatus']);
	if (djStatus != null) {
		privateHistoryMsgsFromUser.djStatus = djStatus;
	}
	final String? backgroundUrl = jsonConvert.convert<String>(json['backgroundUrl']);
	if (backgroundUrl != null) {
		privateHistoryMsgsFromUser.backgroundUrl = backgroundUrl;
	}
	final int? backgroundImgId = jsonConvert.convert<int>(json['backgroundImgId']);
	if (backgroundImgId != null) {
		privateHistoryMsgsFromUser.backgroundImgId = backgroundImgId;
	}
	final int? birthday = jsonConvert.convert<int>(json['birthday']);
	if (birthday != null) {
		privateHistoryMsgsFromUser.birthday = birthday;
	}
	final int? accountStatus = jsonConvert.convert<int>(json['accountStatus']);
	if (accountStatus != null) {
		privateHistoryMsgsFromUser.accountStatus = accountStatus;
	}
	final int? city = jsonConvert.convert<int>(json['city']);
	if (city != null) {
		privateHistoryMsgsFromUser.city = city;
	}
	final String? avatarImgIdStr = jsonConvert.convert<String>(json['avatarImgIdStr']);
	if (avatarImgIdStr != null) {
		privateHistoryMsgsFromUser.avatarImgIdStr = avatarImgIdStr;
	}
	final String? backgroundImgIdStr = jsonConvert.convert<String>(json['backgroundImgIdStr']);
	if (backgroundImgIdStr != null) {
		privateHistoryMsgsFromUser.backgroundImgIdStr = backgroundImgIdStr;
	}
	final int? userType = jsonConvert.convert<int>(json['userType']);
	if (userType != null) {
		privateHistoryMsgsFromUser.userType = userType;
	}
	final dynamic avatarDetail = jsonConvert.convert<dynamic>(json['avatarDetail']);
	if (avatarDetail != null) {
		privateHistoryMsgsFromUser.avatarDetail = avatarDetail;
	}
	final String? nickname = jsonConvert.convert<String>(json['nickname']);
	if (nickname != null) {
		privateHistoryMsgsFromUser.nickname = nickname;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		privateHistoryMsgsFromUser.followed = followed;
	}
	final String? avatarUrl = jsonConvert.convert<String>(json['avatarUrl']);
	if (avatarUrl != null) {
		privateHistoryMsgsFromUser.avatarUrl = avatarUrl;
	}
	final int? province = jsonConvert.convert<int>(json['province']);
	if (province != null) {
		privateHistoryMsgsFromUser.province = province;
	}
	final int? vipType = jsonConvert.convert<int>(json['vipType']);
	if (vipType != null) {
		privateHistoryMsgsFromUser.vipType = vipType;
	}
	final int? authStatus = jsonConvert.convert<int>(json['authStatus']);
	if (authStatus != null) {
		privateHistoryMsgsFromUser.authStatus = authStatus;
	}
	final dynamic expertTags = jsonConvert.convert<dynamic>(json['expertTags']);
	if (expertTags != null) {
		privateHistoryMsgsFromUser.expertTags = expertTags;
	}
	final dynamic remarkName = jsonConvert.convert<dynamic>(json['remarkName']);
	if (remarkName != null) {
		privateHistoryMsgsFromUser.remarkName = remarkName;
	}
	final dynamic experts = jsonConvert.convert<dynamic>(json['experts']);
	if (experts != null) {
		privateHistoryMsgsFromUser.experts = experts;
	}
	final bool? mutual = jsonConvert.convert<bool>(json['mutual']);
	if (mutual != null) {
		privateHistoryMsgsFromUser.mutual = mutual;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		privateHistoryMsgsFromUser.userId = userId;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		privateHistoryMsgsFromUser.description = description;
	}
	final String? signature = jsonConvert.convert<String>(json['signature']);
	if (signature != null) {
		privateHistoryMsgsFromUser.signature = signature;
	}
	final int? authority = jsonConvert.convert<int>(json['authority']);
	if (authority != null) {
		privateHistoryMsgsFromUser.authority = authority;
	}
	return privateHistoryMsgsFromUser;
}

Map<String, dynamic> $PrivateHistoryMsgsFromUserToJson(PrivateHistoryMsgsFromUser entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['gender'] = entity.gender;
	data['avatarImgId'] = entity.avatarImgId;
	data['detailDescription'] = entity.detailDescription;
	data['defaultAvatar'] = entity.defaultAvatar;
	data['djStatus'] = entity.djStatus;
	data['backgroundUrl'] = entity.backgroundUrl;
	data['backgroundImgId'] = entity.backgroundImgId;
	data['birthday'] = entity.birthday;
	data['accountStatus'] = entity.accountStatus;
	data['city'] = entity.city;
	data['avatarImgIdStr'] = entity.avatarImgIdStr;
	data['backgroundImgIdStr'] = entity.backgroundImgIdStr;
	data['userType'] = entity.userType;
	data['avatarDetail'] = entity.avatarDetail;
	data['nickname'] = entity.nickname;
	data['followed'] = entity.followed;
	data['avatarUrl'] = entity.avatarUrl;
	data['province'] = entity.province;
	data['vipType'] = entity.vipType;
	data['authStatus'] = entity.authStatus;
	data['expertTags'] = entity.expertTags;
	data['remarkName'] = entity.remarkName;
	data['experts'] = entity.experts;
	data['mutual'] = entity.mutual;
	data['userId'] = entity.userId;
	data['description'] = entity.description;
	data['signature'] = entity.signature;
	data['authority'] = entity.authority;
	return data;
}

PrivateHistoryMsgsToUser $PrivateHistoryMsgsToUserFromJson(Map<String, dynamic> json) {
	final PrivateHistoryMsgsToUser privateHistoryMsgsToUser = PrivateHistoryMsgsToUser();
	final int? gender = jsonConvert.convert<int>(json['gender']);
	if (gender != null) {
		privateHistoryMsgsToUser.gender = gender;
	}
	final int? avatarImgId = jsonConvert.convert<int>(json['avatarImgId']);
	if (avatarImgId != null) {
		privateHistoryMsgsToUser.avatarImgId = avatarImgId;
	}
	final String? detailDescription = jsonConvert.convert<String>(json['detailDescription']);
	if (detailDescription != null) {
		privateHistoryMsgsToUser.detailDescription = detailDescription;
	}
	final bool? defaultAvatar = jsonConvert.convert<bool>(json['defaultAvatar']);
	if (defaultAvatar != null) {
		privateHistoryMsgsToUser.defaultAvatar = defaultAvatar;
	}
	final int? djStatus = jsonConvert.convert<int>(json['djStatus']);
	if (djStatus != null) {
		privateHistoryMsgsToUser.djStatus = djStatus;
	}
	final String? backgroundUrl = jsonConvert.convert<String>(json['backgroundUrl']);
	if (backgroundUrl != null) {
		privateHistoryMsgsToUser.backgroundUrl = backgroundUrl;
	}
	final int? backgroundImgId = jsonConvert.convert<int>(json['backgroundImgId']);
	if (backgroundImgId != null) {
		privateHistoryMsgsToUser.backgroundImgId = backgroundImgId;
	}
	final int? birthday = jsonConvert.convert<int>(json['birthday']);
	if (birthday != null) {
		privateHistoryMsgsToUser.birthday = birthday;
	}
	final int? accountStatus = jsonConvert.convert<int>(json['accountStatus']);
	if (accountStatus != null) {
		privateHistoryMsgsToUser.accountStatus = accountStatus;
	}
	final int? city = jsonConvert.convert<int>(json['city']);
	if (city != null) {
		privateHistoryMsgsToUser.city = city;
	}
	final String? avatarImgIdStr = jsonConvert.convert<String>(json['avatarImgIdStr']);
	if (avatarImgIdStr != null) {
		privateHistoryMsgsToUser.avatarImgIdStr = avatarImgIdStr;
	}
	final String? backgroundImgIdStr = jsonConvert.convert<String>(json['backgroundImgIdStr']);
	if (backgroundImgIdStr != null) {
		privateHistoryMsgsToUser.backgroundImgIdStr = backgroundImgIdStr;
	}
	final int? userType = jsonConvert.convert<int>(json['userType']);
	if (userType != null) {
		privateHistoryMsgsToUser.userType = userType;
	}
	final dynamic avatarDetail = jsonConvert.convert<dynamic>(json['avatarDetail']);
	if (avatarDetail != null) {
		privateHistoryMsgsToUser.avatarDetail = avatarDetail;
	}
	final String? nickname = jsonConvert.convert<String>(json['nickname']);
	if (nickname != null) {
		privateHistoryMsgsToUser.nickname = nickname;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		privateHistoryMsgsToUser.followed = followed;
	}
	final String? avatarUrl = jsonConvert.convert<String>(json['avatarUrl']);
	if (avatarUrl != null) {
		privateHistoryMsgsToUser.avatarUrl = avatarUrl;
	}
	final int? province = jsonConvert.convert<int>(json['province']);
	if (province != null) {
		privateHistoryMsgsToUser.province = province;
	}
	final int? vipType = jsonConvert.convert<int>(json['vipType']);
	if (vipType != null) {
		privateHistoryMsgsToUser.vipType = vipType;
	}
	final int? authStatus = jsonConvert.convert<int>(json['authStatus']);
	if (authStatus != null) {
		privateHistoryMsgsToUser.authStatus = authStatus;
	}
	final dynamic expertTags = jsonConvert.convert<dynamic>(json['expertTags']);
	if (expertTags != null) {
		privateHistoryMsgsToUser.expertTags = expertTags;
	}
	final dynamic remarkName = jsonConvert.convert<dynamic>(json['remarkName']);
	if (remarkName != null) {
		privateHistoryMsgsToUser.remarkName = remarkName;
	}
	final dynamic experts = jsonConvert.convert<dynamic>(json['experts']);
	if (experts != null) {
		privateHistoryMsgsToUser.experts = experts;
	}
	final bool? mutual = jsonConvert.convert<bool>(json['mutual']);
	if (mutual != null) {
		privateHistoryMsgsToUser.mutual = mutual;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		privateHistoryMsgsToUser.userId = userId;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		privateHistoryMsgsToUser.description = description;
	}
	final String? signature = jsonConvert.convert<String>(json['signature']);
	if (signature != null) {
		privateHistoryMsgsToUser.signature = signature;
	}
	final int? authority = jsonConvert.convert<int>(json['authority']);
	if (authority != null) {
		privateHistoryMsgsToUser.authority = authority;
	}
	return privateHistoryMsgsToUser;
}

Map<String, dynamic> $PrivateHistoryMsgsToUserToJson(PrivateHistoryMsgsToUser entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['gender'] = entity.gender;
	data['avatarImgId'] = entity.avatarImgId;
	data['detailDescription'] = entity.detailDescription;
	data['defaultAvatar'] = entity.defaultAvatar;
	data['djStatus'] = entity.djStatus;
	data['backgroundUrl'] = entity.backgroundUrl;
	data['backgroundImgId'] = entity.backgroundImgId;
	data['birthday'] = entity.birthday;
	data['accountStatus'] = entity.accountStatus;
	data['city'] = entity.city;
	data['avatarImgIdStr'] = entity.avatarImgIdStr;
	data['backgroundImgIdStr'] = entity.backgroundImgIdStr;
	data['userType'] = entity.userType;
	data['avatarDetail'] = entity.avatarDetail;
	data['nickname'] = entity.nickname;
	data['followed'] = entity.followed;
	data['avatarUrl'] = entity.avatarUrl;
	data['province'] = entity.province;
	data['vipType'] = entity.vipType;
	data['authStatus'] = entity.authStatus;
	data['expertTags'] = entity.expertTags;
	data['remarkName'] = entity.remarkName;
	data['experts'] = entity.experts;
	data['mutual'] = entity.mutual;
	data['userId'] = entity.userId;
	data['description'] = entity.description;
	data['signature'] = entity.signature;
	data['authority'] = entity.authority;
	return data;
}