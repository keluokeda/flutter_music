import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/user_followeds_entity.dart';
import 'package:music/entity/user_item.dart';


UserFollowedsEntity $UserFollowedsEntityFromJson(Map<String, dynamic> json) {
	final UserFollowedsEntity userFollowedsEntity = UserFollowedsEntity();
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		userFollowedsEntity.code = code;
	}
	final bool? more = jsonConvert.convert<bool>(json['more']);
	if (more != null) {
		userFollowedsEntity.more = more;
	}
	final List<UserFollowedsFolloweds>? followeds = jsonConvert.convertListNotNull<UserFollowedsFolloweds>(json['followeds']);
	if (followeds != null) {
		userFollowedsEntity.followeds = followeds;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		userFollowedsEntity.size = size;
	}
	return userFollowedsEntity;
}

Map<String, dynamic> $UserFollowedsEntityToJson(UserFollowedsEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['code'] = entity.code;
	data['more'] = entity.more;
	data['followeds'] =  entity.followeds?.map((v) => v.toJson()).toList();
	data['size'] = entity.size;
	return data;
}

UserFollowedsFolloweds $UserFollowedsFollowedsFromJson(Map<String, dynamic> json) {
	final UserFollowedsFolloweds userFollowedsFolloweds = UserFollowedsFolloweds();
	final String? py = jsonConvert.convert<String>(json['py']);
	if (py != null) {
		userFollowedsFolloweds.py = py;
	}
	final int? time = jsonConvert.convert<int>(json['time']);
	if (time != null) {
		userFollowedsFolloweds.time = time;
	}
	final int? vipType = jsonConvert.convert<int>(json['vipType']);
	if (vipType != null) {
		userFollowedsFolloweds.vipType = vipType;
	}
	final String? avatarUrl = jsonConvert.convert<String>(json['avatarUrl']);
	if (avatarUrl != null) {
		userFollowedsFolloweds.avatarUrl = avatarUrl;
	}
	final int? authStatus = jsonConvert.convert<int>(json['authStatus']);
	if (authStatus != null) {
		userFollowedsFolloweds.authStatus = authStatus;
	}
	final int? gender = jsonConvert.convert<int>(json['gender']);
	if (gender != null) {
		userFollowedsFolloweds.gender = gender;
	}
	final int? accountStatus = jsonConvert.convert<int>(json['accountStatus']);
	if (accountStatus != null) {
		userFollowedsFolloweds.accountStatus = accountStatus;
	}
	final int? userType = jsonConvert.convert<int>(json['userType']);
	if (userType != null) {
		userFollowedsFolloweds.userType = userType;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		userFollowedsFolloweds.followed = followed;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		userFollowedsFolloweds.userId = userId;
	}
	final int? followeds = jsonConvert.convert<int>(json['followeds']);
	if (followeds != null) {
		userFollowedsFolloweds.followeds = followeds;
	}
	final bool? mutual = jsonConvert.convert<bool>(json['mutual']);
	if (mutual != null) {
		userFollowedsFolloweds.mutual = mutual;
	}
	final int? follows = jsonConvert.convert<int>(json['follows']);
	if (follows != null) {
		userFollowedsFolloweds.follows = follows;
	}
	final String? nickname = jsonConvert.convert<String>(json['nickname']);
	if (nickname != null) {
		userFollowedsFolloweds.nickname = nickname;
	}
	final String? signature = jsonConvert.convert<String>(json['signature']);
	if (signature != null) {
		userFollowedsFolloweds.signature = signature;
	}
	final int? eventCount = jsonConvert.convert<int>(json['eventCount']);
	if (eventCount != null) {
		userFollowedsFolloweds.eventCount = eventCount;
	}
	final int? playlistCount = jsonConvert.convert<int>(json['playlistCount']);
	if (playlistCount != null) {
		userFollowedsFolloweds.playlistCount = playlistCount;
	}
	return userFollowedsFolloweds;
}

Map<String, dynamic> $UserFollowedsFollowedsToJson(UserFollowedsFolloweds entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['py'] = entity.py;
	data['time'] = entity.time;
	data['vipType'] = entity.vipType;
	data['avatarUrl'] = entity.avatarUrl;
	data['authStatus'] = entity.authStatus;
	data['gender'] = entity.gender;
	data['accountStatus'] = entity.accountStatus;
	data['userType'] = entity.userType;
	data['followed'] = entity.followed;
	data['userId'] = entity.userId;
	data['followeds'] = entity.followeds;
	data['mutual'] = entity.mutual;
	data['follows'] = entity.follows;
	data['nickname'] = entity.nickname;
	data['signature'] = entity.signature;
	data['eventCount'] = entity.eventCount;
	data['playlistCount'] = entity.playlistCount;
	return data;
}