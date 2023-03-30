import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/user_detail_entity.dart';

UserDetailEntity $UserDetailEntityFromJson(Map<String, dynamic> json) {
	final UserDetailEntity userDetailEntity = UserDetailEntity();
	final int? level = jsonConvert.convert<int>(json['level']);
	if (level != null) {
		userDetailEntity.level = level;
	}
	final int? listenSongs = jsonConvert.convert<int>(json['listenSongs']);
	if (listenSongs != null) {
		userDetailEntity.listenSongs = listenSongs;
	}
	final UserDetailUserPoint? userPoint = jsonConvert.convert<UserDetailUserPoint>(json['userPoint']);
	if (userPoint != null) {
		userDetailEntity.userPoint = userPoint;
	}
	final bool? mobileSign = jsonConvert.convert<bool>(json['mobileSign']);
	if (mobileSign != null) {
		userDetailEntity.mobileSign = mobileSign;
	}
	final bool? pcSign = jsonConvert.convert<bool>(json['pcSign']);
	if (pcSign != null) {
		userDetailEntity.pcSign = pcSign;
	}
	final UserDetailProfile? profile = jsonConvert.convert<UserDetailProfile>(json['profile']);
	if (profile != null) {
		userDetailEntity.profile = profile;
	}
	final bool? peopleCanSeeMyPlayRecord = jsonConvert.convert<bool>(json['peopleCanSeeMyPlayRecord']);
	if (peopleCanSeeMyPlayRecord != null) {
		userDetailEntity.peopleCanSeeMyPlayRecord = peopleCanSeeMyPlayRecord;
	}
	final List<UserDetailBindings>? bindings = jsonConvert.convertListNotNull<UserDetailBindings>(json['bindings']);
	if (bindings != null) {
		userDetailEntity.bindings = bindings;
	}
	final bool? adValid = jsonConvert.convert<bool>(json['adValid']);
	if (adValid != null) {
		userDetailEntity.adValid = adValid;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		userDetailEntity.code = code;
	}
	final bool? newUser = jsonConvert.convert<bool>(json['newUser']);
	if (newUser != null) {
		userDetailEntity.newUser = newUser;
	}
	final bool? recallUser = jsonConvert.convert<bool>(json['recallUser']);
	if (recallUser != null) {
		userDetailEntity.recallUser = recallUser;
	}
	final int? createTime = jsonConvert.convert<int>(json['createTime']);
	if (createTime != null) {
		userDetailEntity.createTime = createTime;
	}
	final int? createDays = jsonConvert.convert<int>(json['createDays']);
	if (createDays != null) {
		userDetailEntity.createDays = createDays;
	}
	final UserDetailProfileVillageInfo? profileVillageInfo = jsonConvert.convert<UserDetailProfileVillageInfo>(json['profileVillageInfo']);
	if (profileVillageInfo != null) {
		userDetailEntity.profileVillageInfo = profileVillageInfo;
	}
	return userDetailEntity;
}

Map<String, dynamic> $UserDetailEntityToJson(UserDetailEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['level'] = entity.level;
	data['listenSongs'] = entity.listenSongs;
	data['userPoint'] = entity.userPoint?.toJson();
	data['mobileSign'] = entity.mobileSign;
	data['pcSign'] = entity.pcSign;
	data['profile'] = entity.profile?.toJson();
	data['peopleCanSeeMyPlayRecord'] = entity.peopleCanSeeMyPlayRecord;
	data['bindings'] =  entity.bindings?.map((v) => v.toJson()).toList();
	data['adValid'] = entity.adValid;
	data['code'] = entity.code;
	data['newUser'] = entity.newUser;
	data['recallUser'] = entity.recallUser;
	data['createTime'] = entity.createTime;
	data['createDays'] = entity.createDays;
	data['profileVillageInfo'] = entity.profileVillageInfo?.toJson();
	return data;
}

UserDetailUserPoint $UserDetailUserPointFromJson(Map<String, dynamic> json) {
	final UserDetailUserPoint userDetailUserPoint = UserDetailUserPoint();
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		userDetailUserPoint.userId = userId;
	}
	final int? balance = jsonConvert.convert<int>(json['balance']);
	if (balance != null) {
		userDetailUserPoint.balance = balance;
	}
	final int? updateTime = jsonConvert.convert<int>(json['updateTime']);
	if (updateTime != null) {
		userDetailUserPoint.updateTime = updateTime;
	}
	final int? version = jsonConvert.convert<int>(json['version']);
	if (version != null) {
		userDetailUserPoint.version = version;
	}
	final int? status = jsonConvert.convert<int>(json['status']);
	if (status != null) {
		userDetailUserPoint.status = status;
	}
	final int? blockBalance = jsonConvert.convert<int>(json['blockBalance']);
	if (blockBalance != null) {
		userDetailUserPoint.blockBalance = blockBalance;
	}
	return userDetailUserPoint;
}

Map<String, dynamic> $UserDetailUserPointToJson(UserDetailUserPoint entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['userId'] = entity.userId;
	data['balance'] = entity.balance;
	data['updateTime'] = entity.updateTime;
	data['version'] = entity.version;
	data['status'] = entity.status;
	data['blockBalance'] = entity.blockBalance;
	return data;
}

UserDetailProfile $UserDetailProfileFromJson(Map<String, dynamic> json) {
	final UserDetailProfile userDetailProfile = UserDetailProfile();
	final UserDetailProfilePrivacyItemUnlimit? privacyItemUnlimit = jsonConvert.convert<UserDetailProfilePrivacyItemUnlimit>(json['privacyItemUnlimit']);
	if (privacyItemUnlimit != null) {
		userDetailProfile.privacyItemUnlimit = privacyItemUnlimit;
	}
	final dynamic avatarDetail = jsonConvert.convert<dynamic>(json['avatarDetail']);
	if (avatarDetail != null) {
		userDetailProfile.avatarDetail = avatarDetail;
	}
	final int? accountStatus = jsonConvert.convert<int>(json['accountStatus']);
	if (accountStatus != null) {
		userDetailProfile.accountStatus = accountStatus;
	}
	final int? vipType = jsonConvert.convert<int>(json['vipType']);
	if (vipType != null) {
		userDetailProfile.vipType = vipType;
	}
	final int? userType = jsonConvert.convert<int>(json['userType']);
	if (userType != null) {
		userDetailProfile.userType = userType;
	}
	final int? createTime = jsonConvert.convert<int>(json['createTime']);
	if (createTime != null) {
		userDetailProfile.createTime = createTime;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		userDetailProfile.description = description;
	}
	final String? avatarImgIdStr = jsonConvert.convert<String>(json['avatarImgIdStr']);
	if (avatarImgIdStr != null) {
		userDetailProfile.avatarImgIdStr = avatarImgIdStr;
	}
	final String? backgroundImgIdStr = jsonConvert.convert<String>(json['backgroundImgIdStr']);
	if (backgroundImgIdStr != null) {
		userDetailProfile.backgroundImgIdStr = backgroundImgIdStr;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		userDetailProfile.userId = userId;
	}
	final int? birthday = jsonConvert.convert<int>(json['birthday']);
	if (birthday != null) {
		userDetailProfile.birthday = birthday;
	}
	final String? nickname = jsonConvert.convert<String>(json['nickname']);
	if (nickname != null) {
		userDetailProfile.nickname = nickname;
	}
	final String? avatarUrl = jsonConvert.convert<String>(json['avatarUrl']);
	if (avatarUrl != null) {
		userDetailProfile.avatarUrl = avatarUrl;
	}
	final bool? mutual = jsonConvert.convert<bool>(json['mutual']);
	if (mutual != null) {
		userDetailProfile.mutual = mutual;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		userDetailProfile.followed = followed;
	}
	final dynamic remarkName = jsonConvert.convert<dynamic>(json['remarkName']);
	if (remarkName != null) {
		userDetailProfile.remarkName = remarkName;
	}
	final int? authStatus = jsonConvert.convert<int>(json['authStatus']);
	if (authStatus != null) {
		userDetailProfile.authStatus = authStatus;
	}
	final String? detailDescription = jsonConvert.convert<String>(json['detailDescription']);
	if (detailDescription != null) {
		userDetailProfile.detailDescription = detailDescription;
	}
	final dynamic expertTags = jsonConvert.convert<dynamic>(json['expertTags']);
	if (expertTags != null) {
		userDetailProfile.expertTags = expertTags;
	}
	final int? djStatus = jsonConvert.convert<int>(json['djStatus']);
	if (djStatus != null) {
		userDetailProfile.djStatus = djStatus;
	}
	final int? province = jsonConvert.convert<int>(json['province']);
	if (province != null) {
		userDetailProfile.province = province;
	}
	final int? city = jsonConvert.convert<int>(json['city']);
	if (city != null) {
		userDetailProfile.city = city;
	}
	final bool? defaultAvatar = jsonConvert.convert<bool>(json['defaultAvatar']);
	if (defaultAvatar != null) {
		userDetailProfile.defaultAvatar = defaultAvatar;
	}
	final int? backgroundImgId = jsonConvert.convert<int>(json['backgroundImgId']);
	if (backgroundImgId != null) {
		userDetailProfile.backgroundImgId = backgroundImgId;
	}
	final String? backgroundUrl = jsonConvert.convert<String>(json['backgroundUrl']);
	if (backgroundUrl != null) {
		userDetailProfile.backgroundUrl = backgroundUrl;
	}
	final int? gender = jsonConvert.convert<int>(json['gender']);
	if (gender != null) {
		userDetailProfile.gender = gender;
	}
	final int? avatarImgId = jsonConvert.convert<int>(json['avatarImgId']);
	if (avatarImgId != null) {
		userDetailProfile.avatarImgId = avatarImgId;
	}
	final String? signature = jsonConvert.convert<String>(json['signature']);
	if (signature != null) {
		userDetailProfile.signature = signature;
	}
	final int? authority = jsonConvert.convert<int>(json['authority']);
	if (authority != null) {
		userDetailProfile.authority = authority;
	}
	final int? followeds = jsonConvert.convert<int>(json['followeds']);
	if (followeds != null) {
		userDetailProfile.followeds = followeds;
	}
	final int? follows = jsonConvert.convert<int>(json['follows']);
	if (follows != null) {
		userDetailProfile.follows = follows;
	}
	final bool? blacklist = jsonConvert.convert<bool>(json['blacklist']);
	if (blacklist != null) {
		userDetailProfile.blacklist = blacklist;
	}
	final int? eventCount = jsonConvert.convert<int>(json['eventCount']);
	if (eventCount != null) {
		userDetailProfile.eventCount = eventCount;
	}
	final int? allSubscribedCount = jsonConvert.convert<int>(json['allSubscribedCount']);
	if (allSubscribedCount != null) {
		userDetailProfile.allSubscribedCount = allSubscribedCount;
	}
	final int? playlistBeSubscribedCount = jsonConvert.convert<int>(json['playlistBeSubscribedCount']);
	if (playlistBeSubscribedCount != null) {
		userDetailProfile.playlistBeSubscribedCount = playlistBeSubscribedCount;
	}
	final String? avatarimgidStr = jsonConvert.convert<String>(json['avatarImgId_str']);
	if (avatarimgidStr != null) {
		userDetailProfile.avatarimgidStr = avatarimgidStr;
	}
	final dynamic followTime = jsonConvert.convert<dynamic>(json['followTime']);
	if (followTime != null) {
		userDetailProfile.followTime = followTime;
	}
	final bool? followMe = jsonConvert.convert<bool>(json['followMe']);
	if (followMe != null) {
		userDetailProfile.followMe = followMe;
	}
	final List<dynamic>? artistIdentity = jsonConvert.convertListNotNull<dynamic>(json['artistIdentity']);
	if (artistIdentity != null) {
		userDetailProfile.artistIdentity = artistIdentity;
	}
	final int? cCount = jsonConvert.convert<int>(json['cCount']);
	if (cCount != null) {
		userDetailProfile.cCount = cCount;
	}
	final bool? inBlacklist = jsonConvert.convert<bool>(json['inBlacklist']);
	if (inBlacklist != null) {
		userDetailProfile.inBlacklist = inBlacklist;
	}
	final int? sDJPCount = jsonConvert.convert<int>(json['sDJPCount']);
	if (sDJPCount != null) {
		userDetailProfile.sDJPCount = sDJPCount;
	}
	final int? playlistCount = jsonConvert.convert<int>(json['playlistCount']);
	if (playlistCount != null) {
		userDetailProfile.playlistCount = playlistCount;
	}
	final int? sCount = jsonConvert.convert<int>(json['sCount']);
	if (sCount != null) {
		userDetailProfile.sCount = sCount;
	}
	final int? newFollows = jsonConvert.convert<int>(json['newFollows']);
	if (newFollows != null) {
		userDetailProfile.newFollows = newFollows;
	}
	return userDetailProfile;
}

Map<String, dynamic> $UserDetailProfileToJson(UserDetailProfile entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['privacyItemUnlimit'] = entity.privacyItemUnlimit?.toJson();
	data['avatarDetail'] = entity.avatarDetail;
	data['accountStatus'] = entity.accountStatus;
	data['vipType'] = entity.vipType;
	data['userType'] = entity.userType;
	data['createTime'] = entity.createTime;
	data['description'] = entity.description;
	data['avatarImgIdStr'] = entity.avatarImgIdStr;
	data['backgroundImgIdStr'] = entity.backgroundImgIdStr;
	data['userId'] = entity.userId;
	data['birthday'] = entity.birthday;
	data['nickname'] = entity.nickname;
	data['avatarUrl'] = entity.avatarUrl;
	data['mutual'] = entity.mutual;
	data['followed'] = entity.followed;
	data['remarkName'] = entity.remarkName;
	data['authStatus'] = entity.authStatus;
	data['detailDescription'] = entity.detailDescription;
	data['expertTags'] = entity.expertTags;
	data['djStatus'] = entity.djStatus;
	data['province'] = entity.province;
	data['city'] = entity.city;
	data['defaultAvatar'] = entity.defaultAvatar;
	data['backgroundImgId'] = entity.backgroundImgId;
	data['backgroundUrl'] = entity.backgroundUrl;
	data['gender'] = entity.gender;
	data['avatarImgId'] = entity.avatarImgId;
	data['signature'] = entity.signature;
	data['authority'] = entity.authority;
	data['followeds'] = entity.followeds;
	data['follows'] = entity.follows;
	data['blacklist'] = entity.blacklist;
	data['eventCount'] = entity.eventCount;
	data['allSubscribedCount'] = entity.allSubscribedCount;
	data['playlistBeSubscribedCount'] = entity.playlistBeSubscribedCount;
	data['avatarImgId_str'] = entity.avatarimgidStr;
	data['followTime'] = entity.followTime;
	data['followMe'] = entity.followMe;
	data['artistIdentity'] =  entity.artistIdentity;
	data['cCount'] = entity.cCount;
	data['inBlacklist'] = entity.inBlacklist;
	data['sDJPCount'] = entity.sDJPCount;
	data['playlistCount'] = entity.playlistCount;
	data['sCount'] = entity.sCount;
	data['newFollows'] = entity.newFollows;
	return data;
}

UserDetailProfilePrivacyItemUnlimit $UserDetailProfilePrivacyItemUnlimitFromJson(Map<String, dynamic> json) {
	final UserDetailProfilePrivacyItemUnlimit userDetailProfilePrivacyItemUnlimit = UserDetailProfilePrivacyItemUnlimit();
	final bool? area = jsonConvert.convert<bool>(json['area']);
	if (area != null) {
		userDetailProfilePrivacyItemUnlimit.area = area;
	}
	final bool? college = jsonConvert.convert<bool>(json['college']);
	if (college != null) {
		userDetailProfilePrivacyItemUnlimit.college = college;
	}
	final bool? gender = jsonConvert.convert<bool>(json['gender']);
	if (gender != null) {
		userDetailProfilePrivacyItemUnlimit.gender = gender;
	}
	final bool? age = jsonConvert.convert<bool>(json['age']);
	if (age != null) {
		userDetailProfilePrivacyItemUnlimit.age = age;
	}
	final bool? villageAge = jsonConvert.convert<bool>(json['villageAge']);
	if (villageAge != null) {
		userDetailProfilePrivacyItemUnlimit.villageAge = villageAge;
	}
	return userDetailProfilePrivacyItemUnlimit;
}

Map<String, dynamic> $UserDetailProfilePrivacyItemUnlimitToJson(UserDetailProfilePrivacyItemUnlimit entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['area'] = entity.area;
	data['college'] = entity.college;
	data['gender'] = entity.gender;
	data['age'] = entity.age;
	data['villageAge'] = entity.villageAge;
	return data;
}

UserDetailBindings $UserDetailBindingsFromJson(Map<String, dynamic> json) {
	final UserDetailBindings userDetailBindings = UserDetailBindings();
	final bool? expired = jsonConvert.convert<bool>(json['expired']);
	if (expired != null) {
		userDetailBindings.expired = expired;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		userDetailBindings.url = url;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		userDetailBindings.userId = userId;
	}
	final int? expiresIn = jsonConvert.convert<int>(json['expiresIn']);
	if (expiresIn != null) {
		userDetailBindings.expiresIn = expiresIn;
	}
	final int? refreshTime = jsonConvert.convert<int>(json['refreshTime']);
	if (refreshTime != null) {
		userDetailBindings.refreshTime = refreshTime;
	}
	final int? bindingTime = jsonConvert.convert<int>(json['bindingTime']);
	if (bindingTime != null) {
		userDetailBindings.bindingTime = bindingTime;
	}
	final dynamic tokenJsonStr = jsonConvert.convert<dynamic>(json['tokenJsonStr']);
	if (tokenJsonStr != null) {
		userDetailBindings.tokenJsonStr = tokenJsonStr;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		userDetailBindings.id = id;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		userDetailBindings.type = type;
	}
	return userDetailBindings;
}

Map<String, dynamic> $UserDetailBindingsToJson(UserDetailBindings entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['expired'] = entity.expired;
	data['url'] = entity.url;
	data['userId'] = entity.userId;
	data['expiresIn'] = entity.expiresIn;
	data['refreshTime'] = entity.refreshTime;
	data['bindingTime'] = entity.bindingTime;
	data['tokenJsonStr'] = entity.tokenJsonStr;
	data['id'] = entity.id;
	data['type'] = entity.type;
	return data;
}

UserDetailProfileVillageInfo $UserDetailProfileVillageInfoFromJson(Map<String, dynamic> json) {
	final UserDetailProfileVillageInfo userDetailProfileVillageInfo = UserDetailProfileVillageInfo();
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		userDetailProfileVillageInfo.title = title;
	}
	final dynamic imageUrl = jsonConvert.convert<dynamic>(json['imageUrl']);
	if (imageUrl != null) {
		userDetailProfileVillageInfo.imageUrl = imageUrl;
	}
	final String? targetUrl = jsonConvert.convert<String>(json['targetUrl']);
	if (targetUrl != null) {
		userDetailProfileVillageInfo.targetUrl = targetUrl;
	}
	return userDetailProfileVillageInfo;
}

Map<String, dynamic> $UserDetailProfileVillageInfoToJson(UserDetailProfileVillageInfo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['title'] = entity.title;
	data['imageUrl'] = entity.imageUrl;
	data['targetUrl'] = entity.targetUrl;
	return data;
}