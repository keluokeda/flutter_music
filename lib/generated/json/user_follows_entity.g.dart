import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/user_follows_entity.dart';

UserFollowsEntity $UserFollowsEntityFromJson(Map<String, dynamic> json) {
	final UserFollowsEntity userFollowsEntity = UserFollowsEntity();
	final List<UserFollowsFollow>? follow = jsonConvert.convertListNotNull<UserFollowsFollow>(json['follow']);
	if (follow != null) {
		userFollowsEntity.follow = follow;
	}
	final int? touchCount = jsonConvert.convert<int>(json['touchCount']);
	if (touchCount != null) {
		userFollowsEntity.touchCount = touchCount;
	}
	final bool? more = jsonConvert.convert<bool>(json['more']);
	if (more != null) {
		userFollowsEntity.more = more;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		userFollowsEntity.code = code;
	}
	return userFollowsEntity;
}

Map<String, dynamic> $UserFollowsEntityToJson(UserFollowsEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['follow'] =  entity.follow?.map((v) => v.toJson()).toList();
	data['touchCount'] = entity.touchCount;
	data['more'] = entity.more;
	data['code'] = entity.code;
	return data;
}

UserFollowsFollow $UserFollowsFollowFromJson(Map<String, dynamic> json) {
	final UserFollowsFollow userFollowsFollow = UserFollowsFollow();
	final String? py = jsonConvert.convert<String>(json['py']);
	if (py != null) {
		userFollowsFollow.py = py;
	}
	final int? time = jsonConvert.convert<int>(json['time']);
	if (time != null) {
		userFollowsFollow.time = time;
	}
	final int? follows = jsonConvert.convert<int>(json['follows']);
	if (follows != null) {
		userFollowsFollow.follows = follows;
	}
	final int? followeds = jsonConvert.convert<int>(json['followeds']);
	if (followeds != null) {
		userFollowsFollow.followeds = followeds;
	}
	final bool? mutual = jsonConvert.convert<bool>(json['mutual']);
	if (mutual != null) {
		userFollowsFollow.mutual = mutual;
	}
	final String? nickname = jsonConvert.convert<String>(json['nickname']);
	if (nickname != null) {
		userFollowsFollow.nickname = nickname;
	}
	final int? userType = jsonConvert.convert<int>(json['userType']);
	if (userType != null) {
		userFollowsFollow.userType = userType;
	}
	final int? vipType = jsonConvert.convert<int>(json['vipType']);
	if (vipType != null) {
		userFollowsFollow.vipType = vipType;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		userFollowsFollow.followed = followed;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		userFollowsFollow.userId = userId;
	}
	final String? avatarUrl = jsonConvert.convert<String>(json['avatarUrl']);
	if (avatarUrl != null) {
		userFollowsFollow.avatarUrl = avatarUrl;
	}
	final int? authStatus = jsonConvert.convert<int>(json['authStatus']);
	if (authStatus != null) {
		userFollowsFollow.authStatus = authStatus;
	}
	final int? gender = jsonConvert.convert<int>(json['gender']);
	if (gender != null) {
		userFollowsFollow.gender = gender;
	}
	final int? accountStatus = jsonConvert.convert<int>(json['accountStatus']);
	if (accountStatus != null) {
		userFollowsFollow.accountStatus = accountStatus;
	}
	final String? signature = jsonConvert.convert<String>(json['signature']);
	if (signature != null) {
		userFollowsFollow.signature = signature;
	}
	final UserFollowsFollowVipRights? vipRights = jsonConvert.convert<UserFollowsFollowVipRights>(json['vipRights']);
	if (vipRights != null) {
		userFollowsFollow.vipRights = vipRights;
	}
	final bool? blacklist = jsonConvert.convert<bool>(json['blacklist']);
	if (blacklist != null) {
		userFollowsFollow.blacklist = blacklist;
	}
	final int? eventCount = jsonConvert.convert<int>(json['eventCount']);
	if (eventCount != null) {
		userFollowsFollow.eventCount = eventCount;
	}
	final int? playlistCount = jsonConvert.convert<int>(json['playlistCount']);
	if (playlistCount != null) {
		userFollowsFollow.playlistCount = playlistCount;
	}
	final dynamic remarkName = jsonConvert.convert<dynamic>(json['remarkName']);
	if (remarkName != null) {
		userFollowsFollow.remarkName = remarkName;
	}
	final UserFollowsFollowAvatarDetail? avatarDetail = jsonConvert.convert<UserFollowsFollowAvatarDetail>(json['avatarDetail']);
	if (avatarDetail != null) {
		userFollowsFollow.avatarDetail = avatarDetail;
	}
	final dynamic expertTags = jsonConvert.convert<dynamic>(json['expertTags']);
	if (expertTags != null) {
		userFollowsFollow.expertTags = expertTags;
	}
	final dynamic experts = jsonConvert.convert<dynamic>(json['experts']);
	if (experts != null) {
		userFollowsFollow.experts = experts;
	}
	return userFollowsFollow;
}

Map<String, dynamic> $UserFollowsFollowToJson(UserFollowsFollow entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['py'] = entity.py;
	data['time'] = entity.time;
	data['follows'] = entity.follows;
	data['followeds'] = entity.followeds;
	data['mutual'] = entity.mutual;
	data['nickname'] = entity.nickname;
	data['userType'] = entity.userType;
	data['vipType'] = entity.vipType;
	data['followed'] = entity.followed;
	data['userId'] = entity.userId;
	data['avatarUrl'] = entity.avatarUrl;
	data['authStatus'] = entity.authStatus;
	data['gender'] = entity.gender;
	data['accountStatus'] = entity.accountStatus;
	data['signature'] = entity.signature;
	data['vipRights'] = entity.vipRights?.toJson();
	data['blacklist'] = entity.blacklist;
	data['eventCount'] = entity.eventCount;
	data['playlistCount'] = entity.playlistCount;
	data['remarkName'] = entity.remarkName;
	data['avatarDetail'] = entity.avatarDetail?.toJson();
	data['expertTags'] = entity.expertTags;
	data['experts'] = entity.experts;
	return data;
}

UserFollowsFollowVipRights $UserFollowsFollowVipRightsFromJson(Map<String, dynamic> json) {
	final UserFollowsFollowVipRights userFollowsFollowVipRights = UserFollowsFollowVipRights();
	final int? redVipAnnualCount = jsonConvert.convert<int>(json['redVipAnnualCount']);
	if (redVipAnnualCount != null) {
		userFollowsFollowVipRights.redVipAnnualCount = redVipAnnualCount;
	}
	final int? redVipLevel = jsonConvert.convert<int>(json['redVipLevel']);
	if (redVipLevel != null) {
		userFollowsFollowVipRights.redVipLevel = redVipLevel;
	}
	return userFollowsFollowVipRights;
}

Map<String, dynamic> $UserFollowsFollowVipRightsToJson(UserFollowsFollowVipRights entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['redVipAnnualCount'] = entity.redVipAnnualCount;
	data['redVipLevel'] = entity.redVipLevel;
	return data;
}

UserFollowsFollowAvatarDetail $UserFollowsFollowAvatarDetailFromJson(Map<String, dynamic> json) {
	final UserFollowsFollowAvatarDetail userFollowsFollowAvatarDetail = UserFollowsFollowAvatarDetail();
	final int? userType = jsonConvert.convert<int>(json['userType']);
	if (userType != null) {
		userFollowsFollowAvatarDetail.userType = userType;
	}
	final int? identityLevel = jsonConvert.convert<int>(json['identityLevel']);
	if (identityLevel != null) {
		userFollowsFollowAvatarDetail.identityLevel = identityLevel;
	}
	final String? identityIconUrl = jsonConvert.convert<String>(json['identityIconUrl']);
	if (identityIconUrl != null) {
		userFollowsFollowAvatarDetail.identityIconUrl = identityIconUrl;
	}
	return userFollowsFollowAvatarDetail;
}

Map<String, dynamic> $UserFollowsFollowAvatarDetailToJson(UserFollowsFollowAvatarDetail entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['userType'] = entity.userType;
	data['identityLevel'] = entity.identityLevel;
	data['identityIconUrl'] = entity.identityIconUrl;
	return data;
}