import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/user_playlist_entity.dart';

UserPlaylistEntity $UserPlaylistEntityFromJson(Map<String, dynamic> json) {
	final UserPlaylistEntity userPlaylistEntity = UserPlaylistEntity();
	final String? version = jsonConvert.convert<String>(json['version']);
	if (version != null) {
		userPlaylistEntity.version = version;
	}
	final bool? more = jsonConvert.convert<bool>(json['more']);
	if (more != null) {
		userPlaylistEntity.more = more;
	}
	final List<UserPlaylistPlaylist>? playlist = jsonConvert.convertListNotNull<UserPlaylistPlaylist>(json['playlist']);
	if (playlist != null) {
		userPlaylistEntity.playlist = playlist;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		userPlaylistEntity.code = code;
	}
	return userPlaylistEntity;
}

Map<String, dynamic> $UserPlaylistEntityToJson(UserPlaylistEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['version'] = entity.version;
	data['more'] = entity.more;
	data['playlist'] =  entity.playlist?.map((v) => v.toJson()).toList();
	data['code'] = entity.code;
	return data;
}

UserPlaylistPlaylist $UserPlaylistPlaylistFromJson(Map<String, dynamic> json) {
	final UserPlaylistPlaylist userPlaylistPlaylist = UserPlaylistPlaylist();
	final List<dynamic>? subscribers = jsonConvert.convertListNotNull<dynamic>(json['subscribers']);
	if (subscribers != null) {
		userPlaylistPlaylist.subscribers = subscribers;
	}
	final bool? subscribed = jsonConvert.convert<bool>(json['subscribed']);
	if (subscribed != null) {
		userPlaylistPlaylist.subscribed = subscribed;
	}
	final UserPlaylistPlaylistCreator? creator = jsonConvert.convert<UserPlaylistPlaylistCreator>(json['creator']);
	if (creator != null) {
		userPlaylistPlaylist.creator = creator;
	}
	final dynamic artists = jsonConvert.convert<dynamic>(json['artists']);
	if (artists != null) {
		userPlaylistPlaylist.artists = artists;
	}
	final dynamic tracks = jsonConvert.convert<dynamic>(json['tracks']);
	if (tracks != null) {
		userPlaylistPlaylist.tracks = tracks;
	}
	final dynamic updateFrequency = jsonConvert.convert<dynamic>(json['updateFrequency']);
	if (updateFrequency != null) {
		userPlaylistPlaylist.updateFrequency = updateFrequency;
	}
	final int? backgroundCoverId = jsonConvert.convert<int>(json['backgroundCoverId']);
	if (backgroundCoverId != null) {
		userPlaylistPlaylist.backgroundCoverId = backgroundCoverId;
	}
	final dynamic backgroundCoverUrl = jsonConvert.convert<dynamic>(json['backgroundCoverUrl']);
	if (backgroundCoverUrl != null) {
		userPlaylistPlaylist.backgroundCoverUrl = backgroundCoverUrl;
	}
	final int? titleImage = jsonConvert.convert<int>(json['titleImage']);
	if (titleImage != null) {
		userPlaylistPlaylist.titleImage = titleImage;
	}
	final dynamic titleImageUrl = jsonConvert.convert<dynamic>(json['titleImageUrl']);
	if (titleImageUrl != null) {
		userPlaylistPlaylist.titleImageUrl = titleImageUrl;
	}
	final dynamic englishTitle = jsonConvert.convert<dynamic>(json['englishTitle']);
	if (englishTitle != null) {
		userPlaylistPlaylist.englishTitle = englishTitle;
	}
	final bool? opRecommend = jsonConvert.convert<bool>(json['opRecommend']);
	if (opRecommend != null) {
		userPlaylistPlaylist.opRecommend = opRecommend;
	}
	final dynamic recommendInfo = jsonConvert.convert<dynamic>(json['recommendInfo']);
	if (recommendInfo != null) {
		userPlaylistPlaylist.recommendInfo = recommendInfo;
	}
	final int? subscribedCount = jsonConvert.convert<int>(json['subscribedCount']);
	if (subscribedCount != null) {
		userPlaylistPlaylist.subscribedCount = subscribedCount;
	}
	final int? cloudTrackCount = jsonConvert.convert<int>(json['cloudTrackCount']);
	if (cloudTrackCount != null) {
		userPlaylistPlaylist.cloudTrackCount = cloudTrackCount;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		userPlaylistPlaylist.userId = userId;
	}
	final int? totalDuration = jsonConvert.convert<int>(json['totalDuration']);
	if (totalDuration != null) {
		userPlaylistPlaylist.totalDuration = totalDuration;
	}
	final int? coverImgId = jsonConvert.convert<int>(json['coverImgId']);
	if (coverImgId != null) {
		userPlaylistPlaylist.coverImgId = coverImgId;
	}
	final int? privacy = jsonConvert.convert<int>(json['privacy']);
	if (privacy != null) {
		userPlaylistPlaylist.privacy = privacy;
	}
	final int? trackUpdateTime = jsonConvert.convert<int>(json['trackUpdateTime']);
	if (trackUpdateTime != null) {
		userPlaylistPlaylist.trackUpdateTime = trackUpdateTime;
	}
	final int? trackCount = jsonConvert.convert<int>(json['trackCount']);
	if (trackCount != null) {
		userPlaylistPlaylist.trackCount = trackCount;
	}
	final int? updateTime = jsonConvert.convert<int>(json['updateTime']);
	if (updateTime != null) {
		userPlaylistPlaylist.updateTime = updateTime;
	}
	final String? commentThreadId = jsonConvert.convert<String>(json['commentThreadId']);
	if (commentThreadId != null) {
		userPlaylistPlaylist.commentThreadId = commentThreadId;
	}
	final String? coverImgUrl = jsonConvert.convert<String>(json['coverImgUrl']);
	if (coverImgUrl != null) {
		userPlaylistPlaylist.coverImgUrl = coverImgUrl;
	}
	final int? specialType = jsonConvert.convert<int>(json['specialType']);
	if (specialType != null) {
		userPlaylistPlaylist.specialType = specialType;
	}
	final bool? anonimous = jsonConvert.convert<bool>(json['anonimous']);
	if (anonimous != null) {
		userPlaylistPlaylist.anonimous = anonimous;
	}
	final int? createTime = jsonConvert.convert<int>(json['createTime']);
	if (createTime != null) {
		userPlaylistPlaylist.createTime = createTime;
	}
	final bool? highQuality = jsonConvert.convert<bool>(json['highQuality']);
	if (highQuality != null) {
		userPlaylistPlaylist.highQuality = highQuality;
	}
	final bool? newImported = jsonConvert.convert<bool>(json['newImported']);
	if (newImported != null) {
		userPlaylistPlaylist.newImported = newImported;
	}
	final int? trackNumberUpdateTime = jsonConvert.convert<int>(json['trackNumberUpdateTime']);
	if (trackNumberUpdateTime != null) {
		userPlaylistPlaylist.trackNumberUpdateTime = trackNumberUpdateTime;
	}
	final int? playCount = jsonConvert.convert<int>(json['playCount']);
	if (playCount != null) {
		userPlaylistPlaylist.playCount = playCount;
	}
	final int? adType = jsonConvert.convert<int>(json['adType']);
	if (adType != null) {
		userPlaylistPlaylist.adType = adType;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		userPlaylistPlaylist.description = description;
	}
	final List<String>? tags = jsonConvert.convertListNotNull<String>(json['tags']);
	if (tags != null) {
		userPlaylistPlaylist.tags = tags;
	}
	final bool? ordered = jsonConvert.convert<bool>(json['ordered']);
	if (ordered != null) {
		userPlaylistPlaylist.ordered = ordered;
	}
	final int? status = jsonConvert.convert<int>(json['status']);
	if (status != null) {
		userPlaylistPlaylist.status = status;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		userPlaylistPlaylist.name = name;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		userPlaylistPlaylist.id = id;
	}
	final String? coverimgidStr = jsonConvert.convert<String>(json['coverImgId_str']);
	if (coverimgidStr != null) {
		userPlaylistPlaylist.coverimgidStr = coverimgidStr;
	}
	final dynamic sharedUsers = jsonConvert.convert<dynamic>(json['sharedUsers']);
	if (sharedUsers != null) {
		userPlaylistPlaylist.sharedUsers = sharedUsers;
	}
	final dynamic shareStatus = jsonConvert.convert<dynamic>(json['shareStatus']);
	if (shareStatus != null) {
		userPlaylistPlaylist.shareStatus = shareStatus;
	}
	final bool? copied = jsonConvert.convert<bool>(json['copied']);
	if (copied != null) {
		userPlaylistPlaylist.copied = copied;
	}
	return userPlaylistPlaylist;
}

Map<String, dynamic> $UserPlaylistPlaylistToJson(UserPlaylistPlaylist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['subscribers'] =  entity.subscribers;
	data['subscribed'] = entity.subscribed;
	data['creator'] = entity.creator?.toJson();
	data['artists'] = entity.artists;
	data['tracks'] = entity.tracks;
	data['updateFrequency'] = entity.updateFrequency;
	data['backgroundCoverId'] = entity.backgroundCoverId;
	data['backgroundCoverUrl'] = entity.backgroundCoverUrl;
	data['titleImage'] = entity.titleImage;
	data['titleImageUrl'] = entity.titleImageUrl;
	data['englishTitle'] = entity.englishTitle;
	data['opRecommend'] = entity.opRecommend;
	data['recommendInfo'] = entity.recommendInfo;
	data['subscribedCount'] = entity.subscribedCount;
	data['cloudTrackCount'] = entity.cloudTrackCount;
	data['userId'] = entity.userId;
	data['totalDuration'] = entity.totalDuration;
	data['coverImgId'] = entity.coverImgId;
	data['privacy'] = entity.privacy;
	data['trackUpdateTime'] = entity.trackUpdateTime;
	data['trackCount'] = entity.trackCount;
	data['updateTime'] = entity.updateTime;
	data['commentThreadId'] = entity.commentThreadId;
	data['coverImgUrl'] = entity.coverImgUrl;
	data['specialType'] = entity.specialType;
	data['anonimous'] = entity.anonimous;
	data['createTime'] = entity.createTime;
	data['highQuality'] = entity.highQuality;
	data['newImported'] = entity.newImported;
	data['trackNumberUpdateTime'] = entity.trackNumberUpdateTime;
	data['playCount'] = entity.playCount;
	data['adType'] = entity.adType;
	data['description'] = entity.description;
	data['tags'] =  entity.tags;
	data['ordered'] = entity.ordered;
	data['status'] = entity.status;
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['coverImgId_str'] = entity.coverimgidStr;
	data['sharedUsers'] = entity.sharedUsers;
	data['shareStatus'] = entity.shareStatus;
	data['copied'] = entity.copied;
	return data;
}

UserPlaylistPlaylistCreator $UserPlaylistPlaylistCreatorFromJson(Map<String, dynamic> json) {
	final UserPlaylistPlaylistCreator userPlaylistPlaylistCreator = UserPlaylistPlaylistCreator();
	final bool? defaultAvatar = jsonConvert.convert<bool>(json['defaultAvatar']);
	if (defaultAvatar != null) {
		userPlaylistPlaylistCreator.defaultAvatar = defaultAvatar;
	}
	final int? province = jsonConvert.convert<int>(json['province']);
	if (province != null) {
		userPlaylistPlaylistCreator.province = province;
	}
	final int? authStatus = jsonConvert.convert<int>(json['authStatus']);
	if (authStatus != null) {
		userPlaylistPlaylistCreator.authStatus = authStatus;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		userPlaylistPlaylistCreator.followed = followed;
	}
	final String? avatarUrl = jsonConvert.convert<String>(json['avatarUrl']);
	if (avatarUrl != null) {
		userPlaylistPlaylistCreator.avatarUrl = avatarUrl;
	}
	final int? accountStatus = jsonConvert.convert<int>(json['accountStatus']);
	if (accountStatus != null) {
		userPlaylistPlaylistCreator.accountStatus = accountStatus;
	}
	final int? gender = jsonConvert.convert<int>(json['gender']);
	if (gender != null) {
		userPlaylistPlaylistCreator.gender = gender;
	}
	final int? city = jsonConvert.convert<int>(json['city']);
	if (city != null) {
		userPlaylistPlaylistCreator.city = city;
	}
	final int? birthday = jsonConvert.convert<int>(json['birthday']);
	if (birthday != null) {
		userPlaylistPlaylistCreator.birthday = birthday;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		userPlaylistPlaylistCreator.userId = userId;
	}
	final int? userType = jsonConvert.convert<int>(json['userType']);
	if (userType != null) {
		userPlaylistPlaylistCreator.userType = userType;
	}
	final String? nickname = jsonConvert.convert<String>(json['nickname']);
	if (nickname != null) {
		userPlaylistPlaylistCreator.nickname = nickname;
	}
	final String? signature = jsonConvert.convert<String>(json['signature']);
	if (signature != null) {
		userPlaylistPlaylistCreator.signature = signature;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		userPlaylistPlaylistCreator.description = description;
	}
	final String? detailDescription = jsonConvert.convert<String>(json['detailDescription']);
	if (detailDescription != null) {
		userPlaylistPlaylistCreator.detailDescription = detailDescription;
	}
	final int? avatarImgId = jsonConvert.convert<int>(json['avatarImgId']);
	if (avatarImgId != null) {
		userPlaylistPlaylistCreator.avatarImgId = avatarImgId;
	}
	final int? backgroundImgId = jsonConvert.convert<int>(json['backgroundImgId']);
	if (backgroundImgId != null) {
		userPlaylistPlaylistCreator.backgroundImgId = backgroundImgId;
	}
	final String? backgroundUrl = jsonConvert.convert<String>(json['backgroundUrl']);
	if (backgroundUrl != null) {
		userPlaylistPlaylistCreator.backgroundUrl = backgroundUrl;
	}
	final int? authority = jsonConvert.convert<int>(json['authority']);
	if (authority != null) {
		userPlaylistPlaylistCreator.authority = authority;
	}
	final bool? mutual = jsonConvert.convert<bool>(json['mutual']);
	if (mutual != null) {
		userPlaylistPlaylistCreator.mutual = mutual;
	}
	final dynamic expertTags = jsonConvert.convert<dynamic>(json['expertTags']);
	if (expertTags != null) {
		userPlaylistPlaylistCreator.expertTags = expertTags;
	}
	final dynamic experts = jsonConvert.convert<dynamic>(json['experts']);
	if (experts != null) {
		userPlaylistPlaylistCreator.experts = experts;
	}
	final int? djStatus = jsonConvert.convert<int>(json['djStatus']);
	if (djStatus != null) {
		userPlaylistPlaylistCreator.djStatus = djStatus;
	}
	final int? vipType = jsonConvert.convert<int>(json['vipType']);
	if (vipType != null) {
		userPlaylistPlaylistCreator.vipType = vipType;
	}
	final dynamic remarkName = jsonConvert.convert<dynamic>(json['remarkName']);
	if (remarkName != null) {
		userPlaylistPlaylistCreator.remarkName = remarkName;
	}
	final int? authenticationTypes = jsonConvert.convert<int>(json['authenticationTypes']);
	if (authenticationTypes != null) {
		userPlaylistPlaylistCreator.authenticationTypes = authenticationTypes;
	}
	final dynamic avatarDetail = jsonConvert.convert<dynamic>(json['avatarDetail']);
	if (avatarDetail != null) {
		userPlaylistPlaylistCreator.avatarDetail = avatarDetail;
	}
	final bool? anchor = jsonConvert.convert<bool>(json['anchor']);
	if (anchor != null) {
		userPlaylistPlaylistCreator.anchor = anchor;
	}
	final String? avatarImgIdStr = jsonConvert.convert<String>(json['avatarImgIdStr']);
	if (avatarImgIdStr != null) {
		userPlaylistPlaylistCreator.avatarImgIdStr = avatarImgIdStr;
	}
	final String? backgroundImgIdStr = jsonConvert.convert<String>(json['backgroundImgIdStr']);
	if (backgroundImgIdStr != null) {
		userPlaylistPlaylistCreator.backgroundImgIdStr = backgroundImgIdStr;
	}
	final String? avatarimgidStr = jsonConvert.convert<String>(json['avatarImgId_str']);
	if (avatarimgidStr != null) {
		userPlaylistPlaylistCreator.avatarimgidStr = avatarimgidStr;
	}
	return userPlaylistPlaylistCreator;
}

Map<String, dynamic> $UserPlaylistPlaylistCreatorToJson(UserPlaylistPlaylistCreator entity) {
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
	data['authenticationTypes'] = entity.authenticationTypes;
	data['avatarDetail'] = entity.avatarDetail;
	data['anchor'] = entity.anchor;
	data['avatarImgIdStr'] = entity.avatarImgIdStr;
	data['backgroundImgIdStr'] = entity.backgroundImgIdStr;
	data['avatarImgId_str'] = entity.avatarimgidStr;
	return data;
}