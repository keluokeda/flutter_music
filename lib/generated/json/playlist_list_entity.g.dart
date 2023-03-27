import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/playlist_list_entity.dart';

PlaylistListEntity $PlaylistListEntityFromJson(Map<String, dynamic> json) {
	final PlaylistListEntity playlistListEntity = PlaylistListEntity();
	final List<PlaylistListPlaylists>? playlists = jsonConvert.convertListNotNull<PlaylistListPlaylists>(json['playlists']);
	if (playlists != null) {
		playlistListEntity.playlists = playlists;
	}
	final int? total = jsonConvert.convert<int>(json['total']);
	if (total != null) {
		playlistListEntity.total = total;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		playlistListEntity.code = code;
	}
	final bool? more = jsonConvert.convert<bool>(json['more']);
	if (more != null) {
		playlistListEntity.more = more;
	}
	final String? cat = jsonConvert.convert<String>(json['cat']);
	if (cat != null) {
		playlistListEntity.cat = cat;
	}
	return playlistListEntity;
}

Map<String, dynamic> $PlaylistListEntityToJson(PlaylistListEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['playlists'] =  entity.playlists?.map((v) => v.toJson()).toList();
	data['total'] = entity.total;
	data['code'] = entity.code;
	data['more'] = entity.more;
	data['cat'] = entity.cat;
	return data;
}

PlaylistListPlaylists $PlaylistListPlaylistsFromJson(Map<String, dynamic> json) {
	final PlaylistListPlaylists playlistListPlaylists = PlaylistListPlaylists();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		playlistListPlaylists.name = name;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		playlistListPlaylists.id = id;
	}
	final int? trackNumberUpdateTime = jsonConvert.convert<int>(json['trackNumberUpdateTime']);
	if (trackNumberUpdateTime != null) {
		playlistListPlaylists.trackNumberUpdateTime = trackNumberUpdateTime;
	}
	final int? status = jsonConvert.convert<int>(json['status']);
	if (status != null) {
		playlistListPlaylists.status = status;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		playlistListPlaylists.userId = userId;
	}
	final int? createTime = jsonConvert.convert<int>(json['createTime']);
	if (createTime != null) {
		playlistListPlaylists.createTime = createTime;
	}
	final int? updateTime = jsonConvert.convert<int>(json['updateTime']);
	if (updateTime != null) {
		playlistListPlaylists.updateTime = updateTime;
	}
	final int? subscribedCount = jsonConvert.convert<int>(json['subscribedCount']);
	if (subscribedCount != null) {
		playlistListPlaylists.subscribedCount = subscribedCount;
	}
	final int? trackCount = jsonConvert.convert<int>(json['trackCount']);
	if (trackCount != null) {
		playlistListPlaylists.trackCount = trackCount;
	}
	final int? cloudTrackCount = jsonConvert.convert<int>(json['cloudTrackCount']);
	if (cloudTrackCount != null) {
		playlistListPlaylists.cloudTrackCount = cloudTrackCount;
	}
	final String? coverImgUrl = jsonConvert.convert<String>(json['coverImgUrl']);
	if (coverImgUrl != null) {
		playlistListPlaylists.coverImgUrl = coverImgUrl;
	}
	final int? coverImgId = jsonConvert.convert<int>(json['coverImgId']);
	if (coverImgId != null) {
		playlistListPlaylists.coverImgId = coverImgId;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		playlistListPlaylists.description = description;
	}
	final List<String>? tags = jsonConvert.convertListNotNull<String>(json['tags']);
	if (tags != null) {
		playlistListPlaylists.tags = tags;
	}
	final int? playCount = jsonConvert.convert<int>(json['playCount']);
	if (playCount != null) {
		playlistListPlaylists.playCount = playCount;
	}
	final int? trackUpdateTime = jsonConvert.convert<int>(json['trackUpdateTime']);
	if (trackUpdateTime != null) {
		playlistListPlaylists.trackUpdateTime = trackUpdateTime;
	}
	final int? specialType = jsonConvert.convert<int>(json['specialType']);
	if (specialType != null) {
		playlistListPlaylists.specialType = specialType;
	}
	final int? totalDuration = jsonConvert.convert<int>(json['totalDuration']);
	if (totalDuration != null) {
		playlistListPlaylists.totalDuration = totalDuration;
	}
	final PlaylistListPlaylistsCreator? creator = jsonConvert.convert<PlaylistListPlaylistsCreator>(json['creator']);
	if (creator != null) {
		playlistListPlaylists.creator = creator;
	}
	final dynamic tracks = jsonConvert.convert<dynamic>(json['tracks']);
	if (tracks != null) {
		playlistListPlaylists.tracks = tracks;
	}
	final List<PlaylistListPlaylistsSubscribers>? subscribers = jsonConvert.convertListNotNull<PlaylistListPlaylistsSubscribers>(json['subscribers']);
	if (subscribers != null) {
		playlistListPlaylists.subscribers = subscribers;
	}
	final bool? subscribed = jsonConvert.convert<bool>(json['subscribed']);
	if (subscribed != null) {
		playlistListPlaylists.subscribed = subscribed;
	}
	final String? commentThreadId = jsonConvert.convert<String>(json['commentThreadId']);
	if (commentThreadId != null) {
		playlistListPlaylists.commentThreadId = commentThreadId;
	}
	final bool? newImported = jsonConvert.convert<bool>(json['newImported']);
	if (newImported != null) {
		playlistListPlaylists.newImported = newImported;
	}
	final int? adType = jsonConvert.convert<int>(json['adType']);
	if (adType != null) {
		playlistListPlaylists.adType = adType;
	}
	final bool? highQuality = jsonConvert.convert<bool>(json['highQuality']);
	if (highQuality != null) {
		playlistListPlaylists.highQuality = highQuality;
	}
	final int? privacy = jsonConvert.convert<int>(json['privacy']);
	if (privacy != null) {
		playlistListPlaylists.privacy = privacy;
	}
	final bool? ordered = jsonConvert.convert<bool>(json['ordered']);
	if (ordered != null) {
		playlistListPlaylists.ordered = ordered;
	}
	final bool? anonimous = jsonConvert.convert<bool>(json['anonimous']);
	if (anonimous != null) {
		playlistListPlaylists.anonimous = anonimous;
	}
	final int? coverStatus = jsonConvert.convert<int>(json['coverStatus']);
	if (coverStatus != null) {
		playlistListPlaylists.coverStatus = coverStatus;
	}
	final dynamic recommendInfo = jsonConvert.convert<dynamic>(json['recommendInfo']);
	if (recommendInfo != null) {
		playlistListPlaylists.recommendInfo = recommendInfo;
	}
	final dynamic socialPlaylistCover = jsonConvert.convert<dynamic>(json['socialPlaylistCover']);
	if (socialPlaylistCover != null) {
		playlistListPlaylists.socialPlaylistCover = socialPlaylistCover;
	}
	final dynamic recommendText = jsonConvert.convert<dynamic>(json['recommendText']);
	if (recommendText != null) {
		playlistListPlaylists.recommendText = recommendText;
	}
	final int? shareCount = jsonConvert.convert<int>(json['shareCount']);
	if (shareCount != null) {
		playlistListPlaylists.shareCount = shareCount;
	}
	final String? coverimgidStr = jsonConvert.convert<String>(json['coverImgId_str']);
	if (coverimgidStr != null) {
		playlistListPlaylists.coverimgidStr = coverimgidStr;
	}
	final String? alg = jsonConvert.convert<String>(json['alg']);
	if (alg != null) {
		playlistListPlaylists.alg = alg;
	}
	final int? commentCount = jsonConvert.convert<int>(json['commentCount']);
	if (commentCount != null) {
		playlistListPlaylists.commentCount = commentCount;
	}
	return playlistListPlaylists;
}

Map<String, dynamic> $PlaylistListPlaylistsToJson(PlaylistListPlaylists entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['trackNumberUpdateTime'] = entity.trackNumberUpdateTime;
	data['status'] = entity.status;
	data['userId'] = entity.userId;
	data['createTime'] = entity.createTime;
	data['updateTime'] = entity.updateTime;
	data['subscribedCount'] = entity.subscribedCount;
	data['trackCount'] = entity.trackCount;
	data['cloudTrackCount'] = entity.cloudTrackCount;
	data['coverImgUrl'] = entity.coverImgUrl;
	data['coverImgId'] = entity.coverImgId;
	data['description'] = entity.description;
	data['tags'] =  entity.tags;
	data['playCount'] = entity.playCount;
	data['trackUpdateTime'] = entity.trackUpdateTime;
	data['specialType'] = entity.specialType;
	data['totalDuration'] = entity.totalDuration;
	data['creator'] = entity.creator?.toJson();
	data['tracks'] = entity.tracks;
	data['subscribers'] =  entity.subscribers?.map((v) => v.toJson()).toList();
	data['subscribed'] = entity.subscribed;
	data['commentThreadId'] = entity.commentThreadId;
	data['newImported'] = entity.newImported;
	data['adType'] = entity.adType;
	data['highQuality'] = entity.highQuality;
	data['privacy'] = entity.privacy;
	data['ordered'] = entity.ordered;
	data['anonimous'] = entity.anonimous;
	data['coverStatus'] = entity.coverStatus;
	data['recommendInfo'] = entity.recommendInfo;
	data['socialPlaylistCover'] = entity.socialPlaylistCover;
	data['recommendText'] = entity.recommendText;
	data['shareCount'] = entity.shareCount;
	data['coverImgId_str'] = entity.coverimgidStr;
	data['alg'] = entity.alg;
	data['commentCount'] = entity.commentCount;
	return data;
}

PlaylistListPlaylistsCreator $PlaylistListPlaylistsCreatorFromJson(Map<String, dynamic> json) {
	final PlaylistListPlaylistsCreator playlistListPlaylistsCreator = PlaylistListPlaylistsCreator();
	final bool? defaultAvatar = jsonConvert.convert<bool>(json['defaultAvatar']);
	if (defaultAvatar != null) {
		playlistListPlaylistsCreator.defaultAvatar = defaultAvatar;
	}
	final int? province = jsonConvert.convert<int>(json['province']);
	if (province != null) {
		playlistListPlaylistsCreator.province = province;
	}
	final int? authStatus = jsonConvert.convert<int>(json['authStatus']);
	if (authStatus != null) {
		playlistListPlaylistsCreator.authStatus = authStatus;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		playlistListPlaylistsCreator.followed = followed;
	}
	final String? avatarUrl = jsonConvert.convert<String>(json['avatarUrl']);
	if (avatarUrl != null) {
		playlistListPlaylistsCreator.avatarUrl = avatarUrl;
	}
	final int? accountStatus = jsonConvert.convert<int>(json['accountStatus']);
	if (accountStatus != null) {
		playlistListPlaylistsCreator.accountStatus = accountStatus;
	}
	final int? gender = jsonConvert.convert<int>(json['gender']);
	if (gender != null) {
		playlistListPlaylistsCreator.gender = gender;
	}
	final int? city = jsonConvert.convert<int>(json['city']);
	if (city != null) {
		playlistListPlaylistsCreator.city = city;
	}
	final int? birthday = jsonConvert.convert<int>(json['birthday']);
	if (birthday != null) {
		playlistListPlaylistsCreator.birthday = birthday;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		playlistListPlaylistsCreator.userId = userId;
	}
	final int? userType = jsonConvert.convert<int>(json['userType']);
	if (userType != null) {
		playlistListPlaylistsCreator.userType = userType;
	}
	final String? nickname = jsonConvert.convert<String>(json['nickname']);
	if (nickname != null) {
		playlistListPlaylistsCreator.nickname = nickname;
	}
	final String? signature = jsonConvert.convert<String>(json['signature']);
	if (signature != null) {
		playlistListPlaylistsCreator.signature = signature;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		playlistListPlaylistsCreator.description = description;
	}
	final String? detailDescription = jsonConvert.convert<String>(json['detailDescription']);
	if (detailDescription != null) {
		playlistListPlaylistsCreator.detailDescription = detailDescription;
	}
	final int? avatarImgId = jsonConvert.convert<int>(json['avatarImgId']);
	if (avatarImgId != null) {
		playlistListPlaylistsCreator.avatarImgId = avatarImgId;
	}
	final int? backgroundImgId = jsonConvert.convert<int>(json['backgroundImgId']);
	if (backgroundImgId != null) {
		playlistListPlaylistsCreator.backgroundImgId = backgroundImgId;
	}
	final String? backgroundUrl = jsonConvert.convert<String>(json['backgroundUrl']);
	if (backgroundUrl != null) {
		playlistListPlaylistsCreator.backgroundUrl = backgroundUrl;
	}
	final int? authority = jsonConvert.convert<int>(json['authority']);
	if (authority != null) {
		playlistListPlaylistsCreator.authority = authority;
	}
	final bool? mutual = jsonConvert.convert<bool>(json['mutual']);
	if (mutual != null) {
		playlistListPlaylistsCreator.mutual = mutual;
	}
	final dynamic expertTags = jsonConvert.convert<dynamic>(json['expertTags']);
	if (expertTags != null) {
		playlistListPlaylistsCreator.expertTags = expertTags;
	}
	final dynamic experts = jsonConvert.convert<dynamic>(json['experts']);
	if (experts != null) {
		playlistListPlaylistsCreator.experts = experts;
	}
	final int? djStatus = jsonConvert.convert<int>(json['djStatus']);
	if (djStatus != null) {
		playlistListPlaylistsCreator.djStatus = djStatus;
	}
	final int? vipType = jsonConvert.convert<int>(json['vipType']);
	if (vipType != null) {
		playlistListPlaylistsCreator.vipType = vipType;
	}
	final dynamic remarkName = jsonConvert.convert<dynamic>(json['remarkName']);
	if (remarkName != null) {
		playlistListPlaylistsCreator.remarkName = remarkName;
	}
	final int? authenticationTypes = jsonConvert.convert<int>(json['authenticationTypes']);
	if (authenticationTypes != null) {
		playlistListPlaylistsCreator.authenticationTypes = authenticationTypes;
	}
	final PlaylistListPlaylistsCreatorAvatarDetail? avatarDetail = jsonConvert.convert<PlaylistListPlaylistsCreatorAvatarDetail>(json['avatarDetail']);
	if (avatarDetail != null) {
		playlistListPlaylistsCreator.avatarDetail = avatarDetail;
	}
	final String? avatarImgIdStr = jsonConvert.convert<String>(json['avatarImgIdStr']);
	if (avatarImgIdStr != null) {
		playlistListPlaylistsCreator.avatarImgIdStr = avatarImgIdStr;
	}
	final String? backgroundImgIdStr = jsonConvert.convert<String>(json['backgroundImgIdStr']);
	if (backgroundImgIdStr != null) {
		playlistListPlaylistsCreator.backgroundImgIdStr = backgroundImgIdStr;
	}
	final bool? anchor = jsonConvert.convert<bool>(json['anchor']);
	if (anchor != null) {
		playlistListPlaylistsCreator.anchor = anchor;
	}
	final String? avatarimgidStr = jsonConvert.convert<String>(json['avatarImgId_str']);
	if (avatarimgidStr != null) {
		playlistListPlaylistsCreator.avatarimgidStr = avatarimgidStr;
	}
	return playlistListPlaylistsCreator;
}

Map<String, dynamic> $PlaylistListPlaylistsCreatorToJson(PlaylistListPlaylistsCreator entity) {
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
	data['avatarDetail'] = entity.avatarDetail?.toJson();
	data['avatarImgIdStr'] = entity.avatarImgIdStr;
	data['backgroundImgIdStr'] = entity.backgroundImgIdStr;
	data['anchor'] = entity.anchor;
	data['avatarImgId_str'] = entity.avatarimgidStr;
	return data;
}

PlaylistListPlaylistsCreatorAvatarDetail $PlaylistListPlaylistsCreatorAvatarDetailFromJson(Map<String, dynamic> json) {
	final PlaylistListPlaylistsCreatorAvatarDetail playlistListPlaylistsCreatorAvatarDetail = PlaylistListPlaylistsCreatorAvatarDetail();
	final int? userType = jsonConvert.convert<int>(json['userType']);
	if (userType != null) {
		playlistListPlaylistsCreatorAvatarDetail.userType = userType;
	}
	final int? identityLevel = jsonConvert.convert<int>(json['identityLevel']);
	if (identityLevel != null) {
		playlistListPlaylistsCreatorAvatarDetail.identityLevel = identityLevel;
	}
	final String? identityIconUrl = jsonConvert.convert<String>(json['identityIconUrl']);
	if (identityIconUrl != null) {
		playlistListPlaylistsCreatorAvatarDetail.identityIconUrl = identityIconUrl;
	}
	return playlistListPlaylistsCreatorAvatarDetail;
}

Map<String, dynamic> $PlaylistListPlaylistsCreatorAvatarDetailToJson(PlaylistListPlaylistsCreatorAvatarDetail entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['userType'] = entity.userType;
	data['identityLevel'] = entity.identityLevel;
	data['identityIconUrl'] = entity.identityIconUrl;
	return data;
}

PlaylistListPlaylistsSubscribers $PlaylistListPlaylistsSubscribersFromJson(Map<String, dynamic> json) {
	final PlaylistListPlaylistsSubscribers playlistListPlaylistsSubscribers = PlaylistListPlaylistsSubscribers();
	final bool? defaultAvatar = jsonConvert.convert<bool>(json['defaultAvatar']);
	if (defaultAvatar != null) {
		playlistListPlaylistsSubscribers.defaultAvatar = defaultAvatar;
	}
	final int? province = jsonConvert.convert<int>(json['province']);
	if (province != null) {
		playlistListPlaylistsSubscribers.province = province;
	}
	final int? authStatus = jsonConvert.convert<int>(json['authStatus']);
	if (authStatus != null) {
		playlistListPlaylistsSubscribers.authStatus = authStatus;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		playlistListPlaylistsSubscribers.followed = followed;
	}
	final String? avatarUrl = jsonConvert.convert<String>(json['avatarUrl']);
	if (avatarUrl != null) {
		playlistListPlaylistsSubscribers.avatarUrl = avatarUrl;
	}
	final int? accountStatus = jsonConvert.convert<int>(json['accountStatus']);
	if (accountStatus != null) {
		playlistListPlaylistsSubscribers.accountStatus = accountStatus;
	}
	final int? gender = jsonConvert.convert<int>(json['gender']);
	if (gender != null) {
		playlistListPlaylistsSubscribers.gender = gender;
	}
	final int? city = jsonConvert.convert<int>(json['city']);
	if (city != null) {
		playlistListPlaylistsSubscribers.city = city;
	}
	final int? birthday = jsonConvert.convert<int>(json['birthday']);
	if (birthday != null) {
		playlistListPlaylistsSubscribers.birthday = birthday;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		playlistListPlaylistsSubscribers.userId = userId;
	}
	final int? userType = jsonConvert.convert<int>(json['userType']);
	if (userType != null) {
		playlistListPlaylistsSubscribers.userType = userType;
	}
	final String? nickname = jsonConvert.convert<String>(json['nickname']);
	if (nickname != null) {
		playlistListPlaylistsSubscribers.nickname = nickname;
	}
	final String? signature = jsonConvert.convert<String>(json['signature']);
	if (signature != null) {
		playlistListPlaylistsSubscribers.signature = signature;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		playlistListPlaylistsSubscribers.description = description;
	}
	final String? detailDescription = jsonConvert.convert<String>(json['detailDescription']);
	if (detailDescription != null) {
		playlistListPlaylistsSubscribers.detailDescription = detailDescription;
	}
	final int? avatarImgId = jsonConvert.convert<int>(json['avatarImgId']);
	if (avatarImgId != null) {
		playlistListPlaylistsSubscribers.avatarImgId = avatarImgId;
	}
	final int? backgroundImgId = jsonConvert.convert<int>(json['backgroundImgId']);
	if (backgroundImgId != null) {
		playlistListPlaylistsSubscribers.backgroundImgId = backgroundImgId;
	}
	final String? backgroundUrl = jsonConvert.convert<String>(json['backgroundUrl']);
	if (backgroundUrl != null) {
		playlistListPlaylistsSubscribers.backgroundUrl = backgroundUrl;
	}
	final int? authority = jsonConvert.convert<int>(json['authority']);
	if (authority != null) {
		playlistListPlaylistsSubscribers.authority = authority;
	}
	final bool? mutual = jsonConvert.convert<bool>(json['mutual']);
	if (mutual != null) {
		playlistListPlaylistsSubscribers.mutual = mutual;
	}
	final dynamic expertTags = jsonConvert.convert<dynamic>(json['expertTags']);
	if (expertTags != null) {
		playlistListPlaylistsSubscribers.expertTags = expertTags;
	}
	final dynamic experts = jsonConvert.convert<dynamic>(json['experts']);
	if (experts != null) {
		playlistListPlaylistsSubscribers.experts = experts;
	}
	final int? djStatus = jsonConvert.convert<int>(json['djStatus']);
	if (djStatus != null) {
		playlistListPlaylistsSubscribers.djStatus = djStatus;
	}
	final int? vipType = jsonConvert.convert<int>(json['vipType']);
	if (vipType != null) {
		playlistListPlaylistsSubscribers.vipType = vipType;
	}
	final dynamic remarkName = jsonConvert.convert<dynamic>(json['remarkName']);
	if (remarkName != null) {
		playlistListPlaylistsSubscribers.remarkName = remarkName;
	}
	final int? authenticationTypes = jsonConvert.convert<int>(json['authenticationTypes']);
	if (authenticationTypes != null) {
		playlistListPlaylistsSubscribers.authenticationTypes = authenticationTypes;
	}
	final dynamic avatarDetail = jsonConvert.convert<dynamic>(json['avatarDetail']);
	if (avatarDetail != null) {
		playlistListPlaylistsSubscribers.avatarDetail = avatarDetail;
	}
	final String? avatarImgIdStr = jsonConvert.convert<String>(json['avatarImgIdStr']);
	if (avatarImgIdStr != null) {
		playlistListPlaylistsSubscribers.avatarImgIdStr = avatarImgIdStr;
	}
	final String? backgroundImgIdStr = jsonConvert.convert<String>(json['backgroundImgIdStr']);
	if (backgroundImgIdStr != null) {
		playlistListPlaylistsSubscribers.backgroundImgIdStr = backgroundImgIdStr;
	}
	final bool? anchor = jsonConvert.convert<bool>(json['anchor']);
	if (anchor != null) {
		playlistListPlaylistsSubscribers.anchor = anchor;
	}
	return playlistListPlaylistsSubscribers;
}

Map<String, dynamic> $PlaylistListPlaylistsSubscribersToJson(PlaylistListPlaylistsSubscribers entity) {
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
	data['avatarImgIdStr'] = entity.avatarImgIdStr;
	data['backgroundImgIdStr'] = entity.backgroundImgIdStr;
	data['anchor'] = entity.anchor;
	return data;
}