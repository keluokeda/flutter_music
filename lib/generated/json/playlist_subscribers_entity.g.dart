import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/playlist_subscribers_entity.dart';


PlaylistSubscribersEntity $PlaylistSubscribersEntityFromJson(Map<String, dynamic> json) {
	final PlaylistSubscribersEntity playlistSubscribersEntity = PlaylistSubscribersEntity();
	final int? total = jsonConvert.convert<int>(json['total']);
	if (total != null) {
		playlistSubscribersEntity.total = total;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		playlistSubscribersEntity.code = code;
	}
	final bool? more = jsonConvert.convert<bool>(json['more']);
	if (more != null) {
		playlistSubscribersEntity.more = more;
	}
	final List<PlaylistSubscribersSubscribers>? subscribers = jsonConvert.convertListNotNull<PlaylistSubscribersSubscribers>(json['subscribers']);
	if (subscribers != null) {
		playlistSubscribersEntity.subscribers = subscribers;
	}
	return playlistSubscribersEntity;
}

Map<String, dynamic> $PlaylistSubscribersEntityToJson(PlaylistSubscribersEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['total'] = entity.total;
	data['code'] = entity.code;
	data['more'] = entity.more;
	data['subscribers'] =  entity.subscribers?.map((v) => v.toJson()).toList();
	return data;
}

PlaylistSubscribersSubscribers $PlaylistSubscribersSubscribersFromJson(Map<String, dynamic> json) {
	final PlaylistSubscribersSubscribers playlistSubscribersSubscribers = PlaylistSubscribersSubscribers();
	final bool? defaultAvatar = jsonConvert.convert<bool>(json['defaultAvatar']);
	if (defaultAvatar != null) {
		playlistSubscribersSubscribers.defaultAvatar = defaultAvatar;
	}
	final int? province = jsonConvert.convert<int>(json['province']);
	if (province != null) {
		playlistSubscribersSubscribers.province = province;
	}
	final int? authStatus = jsonConvert.convert<int>(json['authStatus']);
	if (authStatus != null) {
		playlistSubscribersSubscribers.authStatus = authStatus;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		playlistSubscribersSubscribers.followed = followed;
	}
	final String? avatarUrl = jsonConvert.convert<String>(json['avatarUrl']);
	if (avatarUrl != null) {
		playlistSubscribersSubscribers.avatarUrl = avatarUrl;
	}
	final int? accountStatus = jsonConvert.convert<int>(json['accountStatus']);
	if (accountStatus != null) {
		playlistSubscribersSubscribers.accountStatus = accountStatus;
	}
	final int? gender = jsonConvert.convert<int>(json['gender']);
	if (gender != null) {
		playlistSubscribersSubscribers.gender = gender;
	}
	final int? city = jsonConvert.convert<int>(json['city']);
	if (city != null) {
		playlistSubscribersSubscribers.city = city;
	}
	final int? birthday = jsonConvert.convert<int>(json['birthday']);
	if (birthday != null) {
		playlistSubscribersSubscribers.birthday = birthday;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		playlistSubscribersSubscribers.userId = userId;
	}
	final int? userType = jsonConvert.convert<int>(json['userType']);
	if (userType != null) {
		playlistSubscribersSubscribers.userType = userType;
	}
	final String? nickname = jsonConvert.convert<String>(json['nickname']);
	if (nickname != null) {
		playlistSubscribersSubscribers.nickname = nickname;
	}
	final String? signature = jsonConvert.convert<String>(json['signature']);
	if (signature != null) {
		playlistSubscribersSubscribers.signature = signature;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		playlistSubscribersSubscribers.description = description;
	}
	final String? detailDescription = jsonConvert.convert<String>(json['detailDescription']);
	if (detailDescription != null) {
		playlistSubscribersSubscribers.detailDescription = detailDescription;
	}
	final int? avatarImgId = jsonConvert.convert<int>(json['avatarImgId']);
	if (avatarImgId != null) {
		playlistSubscribersSubscribers.avatarImgId = avatarImgId;
	}
	final int? backgroundImgId = jsonConvert.convert<int>(json['backgroundImgId']);
	if (backgroundImgId != null) {
		playlistSubscribersSubscribers.backgroundImgId = backgroundImgId;
	}
	final String? backgroundUrl = jsonConvert.convert<String>(json['backgroundUrl']);
	if (backgroundUrl != null) {
		playlistSubscribersSubscribers.backgroundUrl = backgroundUrl;
	}
	final int? authority = jsonConvert.convert<int>(json['authority']);
	if (authority != null) {
		playlistSubscribersSubscribers.authority = authority;
	}
	final bool? mutual = jsonConvert.convert<bool>(json['mutual']);
	if (mutual != null) {
		playlistSubscribersSubscribers.mutual = mutual;
	}
	final dynamic expertTags = jsonConvert.convert<dynamic>(json['expertTags']);
	if (expertTags != null) {
		playlistSubscribersSubscribers.expertTags = expertTags;
	}
	final dynamic experts = jsonConvert.convert<dynamic>(json['experts']);
	if (experts != null) {
		playlistSubscribersSubscribers.experts = experts;
	}
	final int? djStatus = jsonConvert.convert<int>(json['djStatus']);
	if (djStatus != null) {
		playlistSubscribersSubscribers.djStatus = djStatus;
	}
	final int? vipType = jsonConvert.convert<int>(json['vipType']);
	if (vipType != null) {
		playlistSubscribersSubscribers.vipType = vipType;
	}
	final dynamic remarkName = jsonConvert.convert<dynamic>(json['remarkName']);
	if (remarkName != null) {
		playlistSubscribersSubscribers.remarkName = remarkName;
	}
	final int? subscribeTime = jsonConvert.convert<int>(json['subscribeTime']);
	if (subscribeTime != null) {
		playlistSubscribersSubscribers.subscribeTime = subscribeTime;
	}
	final String? backgroundImgIdStr = jsonConvert.convert<String>(json['backgroundImgIdStr']);
	if (backgroundImgIdStr != null) {
		playlistSubscribersSubscribers.backgroundImgIdStr = backgroundImgIdStr;
	}
	final String? avatarImgIdStr = jsonConvert.convert<String>(json['avatarImgIdStr']);
	if (avatarImgIdStr != null) {
		playlistSubscribersSubscribers.avatarImgIdStr = avatarImgIdStr;
	}
	final dynamic vipRights = jsonConvert.convert<dynamic>(json['vipRights']);
	if (vipRights != null) {
		playlistSubscribersSubscribers.vipRights = vipRights;
	}
	final String? avatarimgidStr = jsonConvert.convert<String>(json['avatarImgId_str']);
	if (avatarimgidStr != null) {
		playlistSubscribersSubscribers.avatarimgidStr = avatarimgidStr;
	}
	final dynamic avatarDetail = jsonConvert.convert<dynamic>(json['avatarDetail']);
	if (avatarDetail != null) {
		playlistSubscribersSubscribers.avatarDetail = avatarDetail;
	}
	return playlistSubscribersSubscribers;
}

Map<String, dynamic> $PlaylistSubscribersSubscribersToJson(PlaylistSubscribersSubscribers entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['defaultAvatar'] = entity.defaultAvatar;
	data['province'] = entity.province;
	data['authStatus'] = entity.authStatus;
	data['followed'] = entity.followed;
	data['avatarUrl'] = entity.avatarUrl;
	data['accountStatus'] = entity.accountStatus;
	data['gender'] = entity.gender;
	data['city'] = entity.city;
	data['birthday'] = entity.birthday;
	data['userId'] = entity.userId;
	data['userType'] = entity.userType;
	data['nickname'] = entity.nickname;
	data['signature'] = entity.signature;
	data['description'] = entity.description;
	data['detailDescription'] = entity.detailDescription;
	data['avatarImgId'] = entity.avatarImgId;
	data['backgroundImgId'] = entity.backgroundImgId;
	data['backgroundUrl'] = entity.backgroundUrl;
	data['authority'] = entity.authority;
	data['mutual'] = entity.mutual;
	data['expertTags'] = entity.expertTags;
	data['experts'] = entity.experts;
	data['djStatus'] = entity.djStatus;
	data['vipType'] = entity.vipType;
	data['remarkName'] = entity.remarkName;
	data['subscribeTime'] = entity.subscribeTime;
	data['backgroundImgIdStr'] = entity.backgroundImgIdStr;
	data['avatarImgIdStr'] = entity.avatarImgIdStr;
	data['vipRights'] = entity.vipRights;
	data['avatarImgId_str'] = entity.avatarimgidStr;
	data['avatarDetail'] = entity.avatarDetail;
	return data;
}