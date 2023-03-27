import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/message_list_entity.dart';

MessageListEntity $MessageListEntityFromJson(Map<String, dynamic> json) {
	final MessageListEntity messageListEntity = MessageListEntity();
	final List<MessageListMsgs>? msgs = jsonConvert.convertListNotNull<MessageListMsgs>(json['msgs']);
	if (msgs != null) {
		messageListEntity.msgs = msgs;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		messageListEntity.code = code;
	}
	final bool? more = jsonConvert.convert<bool>(json['more']);
	if (more != null) {
		messageListEntity.more = more;
	}
	final int? newMsgCount = jsonConvert.convert<int>(json['newMsgCount']);
	if (newMsgCount != null) {
		messageListEntity.newMsgCount = newMsgCount;
	}
	return messageListEntity;
}

Map<String, dynamic> $MessageListEntityToJson(MessageListEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['msgs'] =  entity.msgs?.map((v) => v.toJson()).toList();
	data['code'] = entity.code;
	data['more'] = entity.more;
	data['newMsgCount'] = entity.newMsgCount;
	return data;
}

MessageListMsgs $MessageListMsgsFromJson(Map<String, dynamic> json) {
	final MessageListMsgs messageListMsgs = MessageListMsgs();
	final MessageListMsgsUser? user = jsonConvert.convert<MessageListMsgsUser>(json['user']);
	if (user != null) {
		messageListMsgs.user = user;
	}
	final MessageListMsgsFromUser? fromUser = jsonConvert.convert<MessageListMsgsFromUser>(json['fromUser']);
	if (fromUser != null) {
		messageListMsgs.fromUser = fromUser;
	}
	final MessageListMsgsToUser? toUser = jsonConvert.convert<MessageListMsgsToUser>(json['toUser']);
	if (toUser != null) {
		messageListMsgs.toUser = toUser;
	}
	final bool? noticeAccountFlag = jsonConvert.convert<bool>(json['noticeAccountFlag']);
	if (noticeAccountFlag != null) {
		messageListMsgs.noticeAccountFlag = noticeAccountFlag;
	}
	final dynamic noticeAccount = jsonConvert.convert<dynamic>(json['noticeAccount']);
	if (noticeAccount != null) {
		messageListMsgs.noticeAccount = noticeAccount;
	}
	final String? lastMsg = jsonConvert.convert<String>(json['lastMsg']);
	if (lastMsg != null) {
		messageListMsgs.lastMsg = lastMsg;
	}
	final int? lastMsgTime = jsonConvert.convert<int>(json['lastMsgTime']);
	if (lastMsgTime != null) {
		messageListMsgs.lastMsgTime = lastMsgTime;
	}
	final int? newMsgCount = jsonConvert.convert<int>(json['newMsgCount']);
	if (newMsgCount != null) {
		messageListMsgs.newMsgCount = newMsgCount;
	}
	final dynamic lastMsgUserId = jsonConvert.convert<dynamic>(json['lastMsgUserId']);
	if (lastMsgUserId != null) {
		messageListMsgs.lastMsgUserId = lastMsgUserId;
	}
	final int? msgSenderType = jsonConvert.convert<int>(json['msgSenderType']);
	if (msgSenderType != null) {
		messageListMsgs.msgSenderType = msgSenderType;
	}
	final int? lastMsgId = jsonConvert.convert<int>(json['lastMsgId']);
	if (lastMsgId != null) {
		messageListMsgs.lastMsgId = lastMsgId;
	}
	return messageListMsgs;
}

Map<String, dynamic> $MessageListMsgsToJson(MessageListMsgs entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['user'] = entity.user?.toJson();
	data['fromUser'] = entity.fromUser?.toJson();
	data['toUser'] = entity.toUser?.toJson();
	data['noticeAccountFlag'] = entity.noticeAccountFlag;
	data['noticeAccount'] = entity.noticeAccount;
	data['lastMsg'] = entity.lastMsg;
	data['lastMsgTime'] = entity.lastMsgTime;
	data['newMsgCount'] = entity.newMsgCount;
	data['lastMsgUserId'] = entity.lastMsgUserId;
	data['msgSenderType'] = entity.msgSenderType;
	data['lastMsgId'] = entity.lastMsgId;
	return data;
}

MessageListMsgsUser $MessageListMsgsUserFromJson(Map<String, dynamic> json) {
	final MessageListMsgsUser messageListMsgsUser = MessageListMsgsUser();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		messageListMsgsUser.id = id;
	}
	final int? toUserId = jsonConvert.convert<int>(json['toUserId']);
	if (toUserId != null) {
		messageListMsgsUser.toUserId = toUserId;
	}
	final int? fromUserId = jsonConvert.convert<int>(json['fromUserId']);
	if (fromUserId != null) {
		messageListMsgsUser.fromUserId = fromUserId;
	}
	final int? msgCount = jsonConvert.convert<int>(json['msgCount']);
	if (msgCount != null) {
		messageListMsgsUser.msgCount = msgCount;
	}
	final int? newMsgCount = jsonConvert.convert<int>(json['newMsgCount']);
	if (newMsgCount != null) {
		messageListMsgsUser.newMsgCount = newMsgCount;
	}
	final int? lastMsgTime = jsonConvert.convert<int>(json['lastMsgTime']);
	if (lastMsgTime != null) {
		messageListMsgsUser.lastMsgTime = lastMsgTime;
	}
	final String? lastMsg = jsonConvert.convert<String>(json['lastMsg']);
	if (lastMsg != null) {
		messageListMsgsUser.lastMsg = lastMsg;
	}
	return messageListMsgsUser;
}

Map<String, dynamic> $MessageListMsgsUserToJson(MessageListMsgsUser entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['toUserId'] = entity.toUserId;
	data['fromUserId'] = entity.fromUserId;
	data['msgCount'] = entity.msgCount;
	data['newMsgCount'] = entity.newMsgCount;
	data['lastMsgTime'] = entity.lastMsgTime;
	data['lastMsg'] = entity.lastMsg;
	return data;
}

MessageListMsgsFromUser $MessageListMsgsFromUserFromJson(Map<String, dynamic> json) {
	final MessageListMsgsFromUser messageListMsgsFromUser = MessageListMsgsFromUser();
	final int? gender = jsonConvert.convert<int>(json['gender']);
	if (gender != null) {
		messageListMsgsFromUser.gender = gender;
	}
	final int? avatarImgId = jsonConvert.convert<int>(json['avatarImgId']);
	if (avatarImgId != null) {
		messageListMsgsFromUser.avatarImgId = avatarImgId;
	}
	final String? avatarImgIdStr = jsonConvert.convert<String>(json['avatarImgIdStr']);
	if (avatarImgIdStr != null) {
		messageListMsgsFromUser.avatarImgIdStr = avatarImgIdStr;
	}
	final int? backgroundImgId = jsonConvert.convert<int>(json['backgroundImgId']);
	if (backgroundImgId != null) {
		messageListMsgsFromUser.backgroundImgId = backgroundImgId;
	}
	final int? birthday = jsonConvert.convert<int>(json['birthday']);
	if (birthday != null) {
		messageListMsgsFromUser.birthday = birthday;
	}
	final int? accountStatus = jsonConvert.convert<int>(json['accountStatus']);
	if (accountStatus != null) {
		messageListMsgsFromUser.accountStatus = accountStatus;
	}
	final int? city = jsonConvert.convert<int>(json['city']);
	if (city != null) {
		messageListMsgsFromUser.city = city;
	}
	final bool? defaultAvatar = jsonConvert.convert<bool>(json['defaultAvatar']);
	if (defaultAvatar != null) {
		messageListMsgsFromUser.defaultAvatar = defaultAvatar;
	}
	final String? detailDescription = jsonConvert.convert<String>(json['detailDescription']);
	if (detailDescription != null) {
		messageListMsgsFromUser.detailDescription = detailDescription;
	}
	final int? djStatus = jsonConvert.convert<int>(json['djStatus']);
	if (djStatus != null) {
		messageListMsgsFromUser.djStatus = djStatus;
	}
	final String? backgroundUrl = jsonConvert.convert<String>(json['backgroundUrl']);
	if (backgroundUrl != null) {
		messageListMsgsFromUser.backgroundUrl = backgroundUrl;
	}
	final String? backgroundImgIdStr = jsonConvert.convert<String>(json['backgroundImgIdStr']);
	if (backgroundImgIdStr != null) {
		messageListMsgsFromUser.backgroundImgIdStr = backgroundImgIdStr;
	}
	final MessageListMsgsFromUserAvatarDetail? avatarDetail = jsonConvert.convert<MessageListMsgsFromUserAvatarDetail>(json['avatarDetail']);
	if (avatarDetail != null) {
		messageListMsgsFromUser.avatarDetail = avatarDetail;
	}
	final int? userType = jsonConvert.convert<int>(json['userType']);
	if (userType != null) {
		messageListMsgsFromUser.userType = userType;
	}
	final String? nickname = jsonConvert.convert<String>(json['nickname']);
	if (nickname != null) {
		messageListMsgsFromUser.nickname = nickname;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		messageListMsgsFromUser.followed = followed;
	}
	final bool? mutual = jsonConvert.convert<bool>(json['mutual']);
	if (mutual != null) {
		messageListMsgsFromUser.mutual = mutual;
	}
	final String? avatarUrl = jsonConvert.convert<String>(json['avatarUrl']);
	if (avatarUrl != null) {
		messageListMsgsFromUser.avatarUrl = avatarUrl;
	}
	final dynamic remarkName = jsonConvert.convert<dynamic>(json['remarkName']);
	if (remarkName != null) {
		messageListMsgsFromUser.remarkName = remarkName;
	}
	final int? authStatus = jsonConvert.convert<int>(json['authStatus']);
	if (authStatus != null) {
		messageListMsgsFromUser.authStatus = authStatus;
	}
	final dynamic expertTags = jsonConvert.convert<dynamic>(json['expertTags']);
	if (expertTags != null) {
		messageListMsgsFromUser.expertTags = expertTags;
	}
	final int? vipType = jsonConvert.convert<int>(json['vipType']);
	if (vipType != null) {
		messageListMsgsFromUser.vipType = vipType;
	}
	final dynamic experts = jsonConvert.convert<dynamic>(json['experts']);
	if (experts != null) {
		messageListMsgsFromUser.experts = experts;
	}
	final int? province = jsonConvert.convert<int>(json['province']);
	if (province != null) {
		messageListMsgsFromUser.province = province;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		messageListMsgsFromUser.userId = userId;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		messageListMsgsFromUser.description = description;
	}
	final String? signature = jsonConvert.convert<String>(json['signature']);
	if (signature != null) {
		messageListMsgsFromUser.signature = signature;
	}
	final int? authority = jsonConvert.convert<int>(json['authority']);
	if (authority != null) {
		messageListMsgsFromUser.authority = authority;
	}
	final bool? blacklist = jsonConvert.convert<bool>(json['blacklist']);
	if (blacklist != null) {
		messageListMsgsFromUser.blacklist = blacklist;
	}
	final String? artistName = jsonConvert.convert<String>(json['artistName']);
	if (artistName != null) {
		messageListMsgsFromUser.artistName = artistName;
	}
	return messageListMsgsFromUser;
}

Map<String, dynamic> $MessageListMsgsFromUserToJson(MessageListMsgsFromUser entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['gender'] = entity.gender;
	data['avatarImgId'] = entity.avatarImgId;
	data['avatarImgIdStr'] = entity.avatarImgIdStr;
	data['backgroundImgId'] = entity.backgroundImgId;
	data['birthday'] = entity.birthday;
	data['accountStatus'] = entity.accountStatus;
	data['city'] = entity.city;
	data['defaultAvatar'] = entity.defaultAvatar;
	data['detailDescription'] = entity.detailDescription;
	data['djStatus'] = entity.djStatus;
	data['backgroundUrl'] = entity.backgroundUrl;
	data['backgroundImgIdStr'] = entity.backgroundImgIdStr;
	data['avatarDetail'] = entity.avatarDetail?.toJson();
	data['userType'] = entity.userType;
	data['nickname'] = entity.nickname;
	data['followed'] = entity.followed;
	data['mutual'] = entity.mutual;
	data['avatarUrl'] = entity.avatarUrl;
	data['remarkName'] = entity.remarkName;
	data['authStatus'] = entity.authStatus;
	data['expertTags'] = entity.expertTags;
	data['vipType'] = entity.vipType;
	data['experts'] = entity.experts;
	data['province'] = entity.province;
	data['userId'] = entity.userId;
	data['description'] = entity.description;
	data['signature'] = entity.signature;
	data['authority'] = entity.authority;
	data['blacklist'] = entity.blacklist;
	data['artistName'] = entity.artistName;
	return data;
}

MessageListMsgsFromUserAvatarDetail $MessageListMsgsFromUserAvatarDetailFromJson(Map<String, dynamic> json) {
	final MessageListMsgsFromUserAvatarDetail messageListMsgsFromUserAvatarDetail = MessageListMsgsFromUserAvatarDetail();
	final int? userType = jsonConvert.convert<int>(json['userType']);
	if (userType != null) {
		messageListMsgsFromUserAvatarDetail.userType = userType;
	}
	final int? identityLevel = jsonConvert.convert<int>(json['identityLevel']);
	if (identityLevel != null) {
		messageListMsgsFromUserAvatarDetail.identityLevel = identityLevel;
	}
	final String? identityIconUrl = jsonConvert.convert<String>(json['identityIconUrl']);
	if (identityIconUrl != null) {
		messageListMsgsFromUserAvatarDetail.identityIconUrl = identityIconUrl;
	}
	return messageListMsgsFromUserAvatarDetail;
}

Map<String, dynamic> $MessageListMsgsFromUserAvatarDetailToJson(MessageListMsgsFromUserAvatarDetail entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['userType'] = entity.userType;
	data['identityLevel'] = entity.identityLevel;
	data['identityIconUrl'] = entity.identityIconUrl;
	return data;
}

MessageListMsgsToUser $MessageListMsgsToUserFromJson(Map<String, dynamic> json) {
	final MessageListMsgsToUser messageListMsgsToUser = MessageListMsgsToUser();
	final int? gender = jsonConvert.convert<int>(json['gender']);
	if (gender != null) {
		messageListMsgsToUser.gender = gender;
	}
	final int? avatarImgId = jsonConvert.convert<int>(json['avatarImgId']);
	if (avatarImgId != null) {
		messageListMsgsToUser.avatarImgId = avatarImgId;
	}
	final String? avatarImgIdStr = jsonConvert.convert<String>(json['avatarImgIdStr']);
	if (avatarImgIdStr != null) {
		messageListMsgsToUser.avatarImgIdStr = avatarImgIdStr;
	}
	final int? backgroundImgId = jsonConvert.convert<int>(json['backgroundImgId']);
	if (backgroundImgId != null) {
		messageListMsgsToUser.backgroundImgId = backgroundImgId;
	}
	final int? birthday = jsonConvert.convert<int>(json['birthday']);
	if (birthday != null) {
		messageListMsgsToUser.birthday = birthday;
	}
	final int? accountStatus = jsonConvert.convert<int>(json['accountStatus']);
	if (accountStatus != null) {
		messageListMsgsToUser.accountStatus = accountStatus;
	}
	final int? city = jsonConvert.convert<int>(json['city']);
	if (city != null) {
		messageListMsgsToUser.city = city;
	}
	final bool? defaultAvatar = jsonConvert.convert<bool>(json['defaultAvatar']);
	if (defaultAvatar != null) {
		messageListMsgsToUser.defaultAvatar = defaultAvatar;
	}
	final String? detailDescription = jsonConvert.convert<String>(json['detailDescription']);
	if (detailDescription != null) {
		messageListMsgsToUser.detailDescription = detailDescription;
	}
	final int? djStatus = jsonConvert.convert<int>(json['djStatus']);
	if (djStatus != null) {
		messageListMsgsToUser.djStatus = djStatus;
	}
	final String? backgroundUrl = jsonConvert.convert<String>(json['backgroundUrl']);
	if (backgroundUrl != null) {
		messageListMsgsToUser.backgroundUrl = backgroundUrl;
	}
	final String? backgroundImgIdStr = jsonConvert.convert<String>(json['backgroundImgIdStr']);
	if (backgroundImgIdStr != null) {
		messageListMsgsToUser.backgroundImgIdStr = backgroundImgIdStr;
	}
	final dynamic avatarDetail = jsonConvert.convert<dynamic>(json['avatarDetail']);
	if (avatarDetail != null) {
		messageListMsgsToUser.avatarDetail = avatarDetail;
	}
	final int? userType = jsonConvert.convert<int>(json['userType']);
	if (userType != null) {
		messageListMsgsToUser.userType = userType;
	}
	final String? nickname = jsonConvert.convert<String>(json['nickname']);
	if (nickname != null) {
		messageListMsgsToUser.nickname = nickname;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		messageListMsgsToUser.followed = followed;
	}
	final bool? mutual = jsonConvert.convert<bool>(json['mutual']);
	if (mutual != null) {
		messageListMsgsToUser.mutual = mutual;
	}
	final String? avatarUrl = jsonConvert.convert<String>(json['avatarUrl']);
	if (avatarUrl != null) {
		messageListMsgsToUser.avatarUrl = avatarUrl;
	}
	final dynamic remarkName = jsonConvert.convert<dynamic>(json['remarkName']);
	if (remarkName != null) {
		messageListMsgsToUser.remarkName = remarkName;
	}
	final int? authStatus = jsonConvert.convert<int>(json['authStatus']);
	if (authStatus != null) {
		messageListMsgsToUser.authStatus = authStatus;
	}
	final dynamic expertTags = jsonConvert.convert<dynamic>(json['expertTags']);
	if (expertTags != null) {
		messageListMsgsToUser.expertTags = expertTags;
	}
	final int? vipType = jsonConvert.convert<int>(json['vipType']);
	if (vipType != null) {
		messageListMsgsToUser.vipType = vipType;
	}
	final dynamic experts = jsonConvert.convert<dynamic>(json['experts']);
	if (experts != null) {
		messageListMsgsToUser.experts = experts;
	}
	final int? province = jsonConvert.convert<int>(json['province']);
	if (province != null) {
		messageListMsgsToUser.province = province;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		messageListMsgsToUser.userId = userId;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		messageListMsgsToUser.description = description;
	}
	final String? signature = jsonConvert.convert<String>(json['signature']);
	if (signature != null) {
		messageListMsgsToUser.signature = signature;
	}
	final int? authority = jsonConvert.convert<int>(json['authority']);
	if (authority != null) {
		messageListMsgsToUser.authority = authority;
	}
	return messageListMsgsToUser;
}

Map<String, dynamic> $MessageListMsgsToUserToJson(MessageListMsgsToUser entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['gender'] = entity.gender;
	data['avatarImgId'] = entity.avatarImgId;
	data['avatarImgIdStr'] = entity.avatarImgIdStr;
	data['backgroundImgId'] = entity.backgroundImgId;
	data['birthday'] = entity.birthday;
	data['accountStatus'] = entity.accountStatus;
	data['city'] = entity.city;
	data['defaultAvatar'] = entity.defaultAvatar;
	data['detailDescription'] = entity.detailDescription;
	data['djStatus'] = entity.djStatus;
	data['backgroundUrl'] = entity.backgroundUrl;
	data['backgroundImgIdStr'] = entity.backgroundImgIdStr;
	data['avatarDetail'] = entity.avatarDetail;
	data['userType'] = entity.userType;
	data['nickname'] = entity.nickname;
	data['followed'] = entity.followed;
	data['mutual'] = entity.mutual;
	data['avatarUrl'] = entity.avatarUrl;
	data['remarkName'] = entity.remarkName;
	data['authStatus'] = entity.authStatus;
	data['expertTags'] = entity.expertTags;
	data['vipType'] = entity.vipType;
	data['experts'] = entity.experts;
	data['province'] = entity.province;
	data['userId'] = entity.userId;
	data['description'] = entity.description;
	data['signature'] = entity.signature;
	data['authority'] = entity.authority;
	return data;
}