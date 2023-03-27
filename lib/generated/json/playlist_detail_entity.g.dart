import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/playlist_detail_entity.dart';

PlaylistDetailEntity $PlaylistDetailEntityFromJson(Map<String, dynamic> json) {
	final PlaylistDetailEntity playlistDetailEntity = PlaylistDetailEntity();
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		playlistDetailEntity.code = code;
	}
	final dynamic relatedVideos = jsonConvert.convert<dynamic>(json['relatedVideos']);
	if (relatedVideos != null) {
		playlistDetailEntity.relatedVideos = relatedVideos;
	}
	final PlaylistDetailPlaylist? playlist = jsonConvert.convert<PlaylistDetailPlaylist>(json['playlist']);
	if (playlist != null) {
		playlistDetailEntity.playlist = playlist;
	}
	final dynamic urls = jsonConvert.convert<dynamic>(json['urls']);
	if (urls != null) {
		playlistDetailEntity.urls = urls;
	}
	final List<PlaylistDetailPrivileges>? privileges = jsonConvert.convertListNotNull<PlaylistDetailPrivileges>(json['privileges']);
	if (privileges != null) {
		playlistDetailEntity.privileges = privileges;
	}
	final dynamic sharedPrivilege = jsonConvert.convert<dynamic>(json['sharedPrivilege']);
	if (sharedPrivilege != null) {
		playlistDetailEntity.sharedPrivilege = sharedPrivilege;
	}
	final dynamic resEntrance = jsonConvert.convert<dynamic>(json['resEntrance']);
	if (resEntrance != null) {
		playlistDetailEntity.resEntrance = resEntrance;
	}
	final dynamic fromUsers = jsonConvert.convert<dynamic>(json['fromUsers']);
	if (fromUsers != null) {
		playlistDetailEntity.fromUsers = fromUsers;
	}
	final int? fromUserCount = jsonConvert.convert<int>(json['fromUserCount']);
	if (fromUserCount != null) {
		playlistDetailEntity.fromUserCount = fromUserCount;
	}
	final dynamic songFromUsers = jsonConvert.convert<dynamic>(json['songFromUsers']);
	if (songFromUsers != null) {
		playlistDetailEntity.songFromUsers = songFromUsers;
	}
	return playlistDetailEntity;
}

Map<String, dynamic> $PlaylistDetailEntityToJson(PlaylistDetailEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['code'] = entity.code;
	data['relatedVideos'] = entity.relatedVideos;
	data['playlist'] = entity.playlist?.toJson();
	data['urls'] = entity.urls;
	data['privileges'] =  entity.privileges?.map((v) => v.toJson()).toList();
	data['sharedPrivilege'] = entity.sharedPrivilege;
	data['resEntrance'] = entity.resEntrance;
	data['fromUsers'] = entity.fromUsers;
	data['fromUserCount'] = entity.fromUserCount;
	data['songFromUsers'] = entity.songFromUsers;
	return data;
}

PlaylistDetailPlaylist $PlaylistDetailPlaylistFromJson(Map<String, dynamic> json) {
	final PlaylistDetailPlaylist playlistDetailPlaylist = PlaylistDetailPlaylist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		playlistDetailPlaylist.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		playlistDetailPlaylist.name = name;
	}
	final int? coverImgId = jsonConvert.convert<int>(json['coverImgId']);
	if (coverImgId != null) {
		playlistDetailPlaylist.coverImgId = coverImgId;
	}
	final String? coverImgUrl = jsonConvert.convert<String>(json['coverImgUrl']);
	if (coverImgUrl != null) {
		playlistDetailPlaylist.coverImgUrl = coverImgUrl;
	}
	final String? coverimgidStr = jsonConvert.convert<String>(json['coverImgId_str']);
	if (coverimgidStr != null) {
		playlistDetailPlaylist.coverimgidStr = coverimgidStr;
	}
	final int? adType = jsonConvert.convert<int>(json['adType']);
	if (adType != null) {
		playlistDetailPlaylist.adType = adType;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		playlistDetailPlaylist.userId = userId;
	}
	final int? createTime = jsonConvert.convert<int>(json['createTime']);
	if (createTime != null) {
		playlistDetailPlaylist.createTime = createTime;
	}
	final int? status = jsonConvert.convert<int>(json['status']);
	if (status != null) {
		playlistDetailPlaylist.status = status;
	}
	final bool? opRecommend = jsonConvert.convert<bool>(json['opRecommend']);
	if (opRecommend != null) {
		playlistDetailPlaylist.opRecommend = opRecommend;
	}
	final bool? highQuality = jsonConvert.convert<bool>(json['highQuality']);
	if (highQuality != null) {
		playlistDetailPlaylist.highQuality = highQuality;
	}
	final bool? newImported = jsonConvert.convert<bool>(json['newImported']);
	if (newImported != null) {
		playlistDetailPlaylist.newImported = newImported;
	}
	final int? updateTime = jsonConvert.convert<int>(json['updateTime']);
	if (updateTime != null) {
		playlistDetailPlaylist.updateTime = updateTime;
	}
	final int? trackCount = jsonConvert.convert<int>(json['trackCount']);
	if (trackCount != null) {
		playlistDetailPlaylist.trackCount = trackCount;
	}
	final int? specialType = jsonConvert.convert<int>(json['specialType']);
	if (specialType != null) {
		playlistDetailPlaylist.specialType = specialType;
	}
	final int? privacy = jsonConvert.convert<int>(json['privacy']);
	if (privacy != null) {
		playlistDetailPlaylist.privacy = privacy;
	}
	final int? trackUpdateTime = jsonConvert.convert<int>(json['trackUpdateTime']);
	if (trackUpdateTime != null) {
		playlistDetailPlaylist.trackUpdateTime = trackUpdateTime;
	}
	final String? commentThreadId = jsonConvert.convert<String>(json['commentThreadId']);
	if (commentThreadId != null) {
		playlistDetailPlaylist.commentThreadId = commentThreadId;
	}
	final int? playCount = jsonConvert.convert<int>(json['playCount']);
	if (playCount != null) {
		playlistDetailPlaylist.playCount = playCount;
	}
	final int? trackNumberUpdateTime = jsonConvert.convert<int>(json['trackNumberUpdateTime']);
	if (trackNumberUpdateTime != null) {
		playlistDetailPlaylist.trackNumberUpdateTime = trackNumberUpdateTime;
	}
	final int? subscribedCount = jsonConvert.convert<int>(json['subscribedCount']);
	if (subscribedCount != null) {
		playlistDetailPlaylist.subscribedCount = subscribedCount;
	}
	final int? cloudTrackCount = jsonConvert.convert<int>(json['cloudTrackCount']);
	if (cloudTrackCount != null) {
		playlistDetailPlaylist.cloudTrackCount = cloudTrackCount;
	}
	final bool? ordered = jsonConvert.convert<bool>(json['ordered']);
	if (ordered != null) {
		playlistDetailPlaylist.ordered = ordered;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		playlistDetailPlaylist.description = description;
	}
	final List<String>? tags = jsonConvert.convertListNotNull<String>(json['tags']);
	if (tags != null) {
		playlistDetailPlaylist.tags = tags;
	}
	final dynamic updateFrequency = jsonConvert.convert<dynamic>(json['updateFrequency']);
	if (updateFrequency != null) {
		playlistDetailPlaylist.updateFrequency = updateFrequency;
	}
	final int? backgroundCoverId = jsonConvert.convert<int>(json['backgroundCoverId']);
	if (backgroundCoverId != null) {
		playlistDetailPlaylist.backgroundCoverId = backgroundCoverId;
	}
	final dynamic backgroundCoverUrl = jsonConvert.convert<dynamic>(json['backgroundCoverUrl']);
	if (backgroundCoverUrl != null) {
		playlistDetailPlaylist.backgroundCoverUrl = backgroundCoverUrl;
	}
	final int? titleImage = jsonConvert.convert<int>(json['titleImage']);
	if (titleImage != null) {
		playlistDetailPlaylist.titleImage = titleImage;
	}
	final dynamic titleImageUrl = jsonConvert.convert<dynamic>(json['titleImageUrl']);
	if (titleImageUrl != null) {
		playlistDetailPlaylist.titleImageUrl = titleImageUrl;
	}
	final dynamic englishTitle = jsonConvert.convert<dynamic>(json['englishTitle']);
	if (englishTitle != null) {
		playlistDetailPlaylist.englishTitle = englishTitle;
	}
	final dynamic officialPlaylistType = jsonConvert.convert<dynamic>(json['officialPlaylistType']);
	if (officialPlaylistType != null) {
		playlistDetailPlaylist.officialPlaylistType = officialPlaylistType;
	}
	final bool? copied = jsonConvert.convert<bool>(json['copied']);
	if (copied != null) {
		playlistDetailPlaylist.copied = copied;
	}
	final dynamic relateResType = jsonConvert.convert<dynamic>(json['relateResType']);
	if (relateResType != null) {
		playlistDetailPlaylist.relateResType = relateResType;
	}
	final List<PlaylistDetailPlaylistSubscribers>? subscribers = jsonConvert.convertListNotNull<PlaylistDetailPlaylistSubscribers>(json['subscribers']);
	if (subscribers != null) {
		playlistDetailPlaylist.subscribers = subscribers;
	}
	final bool? subscribed = jsonConvert.convert<bool>(json['subscribed']);
	if (subscribed != null) {
		playlistDetailPlaylist.subscribed = subscribed;
	}
	final PlaylistDetailPlaylistCreator? creator = jsonConvert.convert<PlaylistDetailPlaylistCreator>(json['creator']);
	if (creator != null) {
		playlistDetailPlaylist.creator = creator;
	}
	final List<PlaylistDetailPlaylistTracks>? tracks = jsonConvert.convertListNotNull<PlaylistDetailPlaylistTracks>(json['tracks']);
	if (tracks != null) {
		playlistDetailPlaylist.tracks = tracks;
	}
	final dynamic videoIds = jsonConvert.convert<dynamic>(json['videoIds']);
	if (videoIds != null) {
		playlistDetailPlaylist.videoIds = videoIds;
	}
	final dynamic videos = jsonConvert.convert<dynamic>(json['videos']);
	if (videos != null) {
		playlistDetailPlaylist.videos = videos;
	}
	final List<PlaylistDetailPlaylistTrackIds>? trackIds = jsonConvert.convertListNotNull<PlaylistDetailPlaylistTrackIds>(json['trackIds']);
	if (trackIds != null) {
		playlistDetailPlaylist.trackIds = trackIds;
	}
	final dynamic bannedTrackIds = jsonConvert.convert<dynamic>(json['bannedTrackIds']);
	if (bannedTrackIds != null) {
		playlistDetailPlaylist.bannedTrackIds = bannedTrackIds;
	}
	final dynamic mvResourceInfos = jsonConvert.convert<dynamic>(json['mvResourceInfos']);
	if (mvResourceInfos != null) {
		playlistDetailPlaylist.mvResourceInfos = mvResourceInfos;
	}
	final int? shareCount = jsonConvert.convert<int>(json['shareCount']);
	if (shareCount != null) {
		playlistDetailPlaylist.shareCount = shareCount;
	}
	final int? commentCount = jsonConvert.convert<int>(json['commentCount']);
	if (commentCount != null) {
		playlistDetailPlaylist.commentCount = commentCount;
	}
	final dynamic remixVideo = jsonConvert.convert<dynamic>(json['remixVideo']);
	if (remixVideo != null) {
		playlistDetailPlaylist.remixVideo = remixVideo;
	}
	final dynamic sharedUsers = jsonConvert.convert<dynamic>(json['sharedUsers']);
	if (sharedUsers != null) {
		playlistDetailPlaylist.sharedUsers = sharedUsers;
	}
	final dynamic historySharedUsers = jsonConvert.convert<dynamic>(json['historySharedUsers']);
	if (historySharedUsers != null) {
		playlistDetailPlaylist.historySharedUsers = historySharedUsers;
	}
	final String? gradeStatus = jsonConvert.convert<String>(json['gradeStatus']);
	if (gradeStatus != null) {
		playlistDetailPlaylist.gradeStatus = gradeStatus;
	}
	final dynamic score = jsonConvert.convert<dynamic>(json['score']);
	if (score != null) {
		playlistDetailPlaylist.score = score;
	}
	final dynamic algTags = jsonConvert.convert<dynamic>(json['algTags']);
	if (algTags != null) {
		playlistDetailPlaylist.algTags = algTags;
	}
	return playlistDetailPlaylist;
}

Map<String, dynamic> $PlaylistDetailPlaylistToJson(PlaylistDetailPlaylist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['coverImgId'] = entity.coverImgId;
	data['coverImgUrl'] = entity.coverImgUrl;
	data['coverImgId_str'] = entity.coverimgidStr;
	data['adType'] = entity.adType;
	data['userId'] = entity.userId;
	data['createTime'] = entity.createTime;
	data['status'] = entity.status;
	data['opRecommend'] = entity.opRecommend;
	data['highQuality'] = entity.highQuality;
	data['newImported'] = entity.newImported;
	data['updateTime'] = entity.updateTime;
	data['trackCount'] = entity.trackCount;
	data['specialType'] = entity.specialType;
	data['privacy'] = entity.privacy;
	data['trackUpdateTime'] = entity.trackUpdateTime;
	data['commentThreadId'] = entity.commentThreadId;
	data['playCount'] = entity.playCount;
	data['trackNumberUpdateTime'] = entity.trackNumberUpdateTime;
	data['subscribedCount'] = entity.subscribedCount;
	data['cloudTrackCount'] = entity.cloudTrackCount;
	data['ordered'] = entity.ordered;
	data['description'] = entity.description;
	data['tags'] =  entity.tags;
	data['updateFrequency'] = entity.updateFrequency;
	data['backgroundCoverId'] = entity.backgroundCoverId;
	data['backgroundCoverUrl'] = entity.backgroundCoverUrl;
	data['titleImage'] = entity.titleImage;
	data['titleImageUrl'] = entity.titleImageUrl;
	data['englishTitle'] = entity.englishTitle;
	data['officialPlaylistType'] = entity.officialPlaylistType;
	data['copied'] = entity.copied;
	data['relateResType'] = entity.relateResType;
	data['subscribers'] =  entity.subscribers?.map((v) => v.toJson()).toList();
	data['subscribed'] = entity.subscribed;
	data['creator'] = entity.creator?.toJson();
	data['tracks'] =  entity.tracks?.map((v) => v.toJson()).toList();
	data['videoIds'] = entity.videoIds;
	data['videos'] = entity.videos;
	data['trackIds'] =  entity.trackIds?.map((v) => v.toJson()).toList();
	data['bannedTrackIds'] = entity.bannedTrackIds;
	data['mvResourceInfos'] = entity.mvResourceInfos;
	data['shareCount'] = entity.shareCount;
	data['commentCount'] = entity.commentCount;
	data['remixVideo'] = entity.remixVideo;
	data['sharedUsers'] = entity.sharedUsers;
	data['historySharedUsers'] = entity.historySharedUsers;
	data['gradeStatus'] = entity.gradeStatus;
	data['score'] = entity.score;
	data['algTags'] = entity.algTags;
	return data;
}

PlaylistDetailPlaylistSubscribers $PlaylistDetailPlaylistSubscribersFromJson(Map<String, dynamic> json) {
	final PlaylistDetailPlaylistSubscribers playlistDetailPlaylistSubscribers = PlaylistDetailPlaylistSubscribers();
	final bool? defaultAvatar = jsonConvert.convert<bool>(json['defaultAvatar']);
	if (defaultAvatar != null) {
		playlistDetailPlaylistSubscribers.defaultAvatar = defaultAvatar;
	}
	final int? province = jsonConvert.convert<int>(json['province']);
	if (province != null) {
		playlistDetailPlaylistSubscribers.province = province;
	}
	final int? authStatus = jsonConvert.convert<int>(json['authStatus']);
	if (authStatus != null) {
		playlistDetailPlaylistSubscribers.authStatus = authStatus;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		playlistDetailPlaylistSubscribers.followed = followed;
	}
	final String? avatarUrl = jsonConvert.convert<String>(json['avatarUrl']);
	if (avatarUrl != null) {
		playlistDetailPlaylistSubscribers.avatarUrl = avatarUrl;
	}
	final int? accountStatus = jsonConvert.convert<int>(json['accountStatus']);
	if (accountStatus != null) {
		playlistDetailPlaylistSubscribers.accountStatus = accountStatus;
	}
	final int? gender = jsonConvert.convert<int>(json['gender']);
	if (gender != null) {
		playlistDetailPlaylistSubscribers.gender = gender;
	}
	final int? city = jsonConvert.convert<int>(json['city']);
	if (city != null) {
		playlistDetailPlaylistSubscribers.city = city;
	}
	final int? birthday = jsonConvert.convert<int>(json['birthday']);
	if (birthday != null) {
		playlistDetailPlaylistSubscribers.birthday = birthday;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		playlistDetailPlaylistSubscribers.userId = userId;
	}
	final int? userType = jsonConvert.convert<int>(json['userType']);
	if (userType != null) {
		playlistDetailPlaylistSubscribers.userType = userType;
	}
	final String? nickname = jsonConvert.convert<String>(json['nickname']);
	if (nickname != null) {
		playlistDetailPlaylistSubscribers.nickname = nickname;
	}
	final String? signature = jsonConvert.convert<String>(json['signature']);
	if (signature != null) {
		playlistDetailPlaylistSubscribers.signature = signature;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		playlistDetailPlaylistSubscribers.description = description;
	}
	final String? detailDescription = jsonConvert.convert<String>(json['detailDescription']);
	if (detailDescription != null) {
		playlistDetailPlaylistSubscribers.detailDescription = detailDescription;
	}
	final int? avatarImgId = jsonConvert.convert<int>(json['avatarImgId']);
	if (avatarImgId != null) {
		playlistDetailPlaylistSubscribers.avatarImgId = avatarImgId;
	}
	final int? backgroundImgId = jsonConvert.convert<int>(json['backgroundImgId']);
	if (backgroundImgId != null) {
		playlistDetailPlaylistSubscribers.backgroundImgId = backgroundImgId;
	}
	final String? backgroundUrl = jsonConvert.convert<String>(json['backgroundUrl']);
	if (backgroundUrl != null) {
		playlistDetailPlaylistSubscribers.backgroundUrl = backgroundUrl;
	}
	final int? authority = jsonConvert.convert<int>(json['authority']);
	if (authority != null) {
		playlistDetailPlaylistSubscribers.authority = authority;
	}
	final bool? mutual = jsonConvert.convert<bool>(json['mutual']);
	if (mutual != null) {
		playlistDetailPlaylistSubscribers.mutual = mutual;
	}
	final dynamic expertTags = jsonConvert.convert<dynamic>(json['expertTags']);
	if (expertTags != null) {
		playlistDetailPlaylistSubscribers.expertTags = expertTags;
	}
	final dynamic experts = jsonConvert.convert<dynamic>(json['experts']);
	if (experts != null) {
		playlistDetailPlaylistSubscribers.experts = experts;
	}
	final int? djStatus = jsonConvert.convert<int>(json['djStatus']);
	if (djStatus != null) {
		playlistDetailPlaylistSubscribers.djStatus = djStatus;
	}
	final int? vipType = jsonConvert.convert<int>(json['vipType']);
	if (vipType != null) {
		playlistDetailPlaylistSubscribers.vipType = vipType;
	}
	final dynamic remarkName = jsonConvert.convert<dynamic>(json['remarkName']);
	if (remarkName != null) {
		playlistDetailPlaylistSubscribers.remarkName = remarkName;
	}
	final int? authenticationTypes = jsonConvert.convert<int>(json['authenticationTypes']);
	if (authenticationTypes != null) {
		playlistDetailPlaylistSubscribers.authenticationTypes = authenticationTypes;
	}
	final dynamic avatarDetail = jsonConvert.convert<dynamic>(json['avatarDetail']);
	if (avatarDetail != null) {
		playlistDetailPlaylistSubscribers.avatarDetail = avatarDetail;
	}
	final bool? anchor = jsonConvert.convert<bool>(json['anchor']);
	if (anchor != null) {
		playlistDetailPlaylistSubscribers.anchor = anchor;
	}
	final String? backgroundImgIdStr = jsonConvert.convert<String>(json['backgroundImgIdStr']);
	if (backgroundImgIdStr != null) {
		playlistDetailPlaylistSubscribers.backgroundImgIdStr = backgroundImgIdStr;
	}
	final String? avatarImgIdStr = jsonConvert.convert<String>(json['avatarImgIdStr']);
	if (avatarImgIdStr != null) {
		playlistDetailPlaylistSubscribers.avatarImgIdStr = avatarImgIdStr;
	}
	final String? avatarimgidStr = jsonConvert.convert<String>(json['avatarImgId_str']);
	if (avatarimgidStr != null) {
		playlistDetailPlaylistSubscribers.avatarimgidStr = avatarimgidStr;
	}
	return playlistDetailPlaylistSubscribers;
}

Map<String, dynamic> $PlaylistDetailPlaylistSubscribersToJson(PlaylistDetailPlaylistSubscribers entity) {
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
	data['backgroundImgIdStr'] = entity.backgroundImgIdStr;
	data['avatarImgIdStr'] = entity.avatarImgIdStr;
	data['avatarImgId_str'] = entity.avatarimgidStr;
	return data;
}

PlaylistDetailPlaylistCreator $PlaylistDetailPlaylistCreatorFromJson(Map<String, dynamic> json) {
	final PlaylistDetailPlaylistCreator playlistDetailPlaylistCreator = PlaylistDetailPlaylistCreator();
	final bool? defaultAvatar = jsonConvert.convert<bool>(json['defaultAvatar']);
	if (defaultAvatar != null) {
		playlistDetailPlaylistCreator.defaultAvatar = defaultAvatar;
	}
	final int? province = jsonConvert.convert<int>(json['province']);
	if (province != null) {
		playlistDetailPlaylistCreator.province = province;
	}
	final int? authStatus = jsonConvert.convert<int>(json['authStatus']);
	if (authStatus != null) {
		playlistDetailPlaylistCreator.authStatus = authStatus;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		playlistDetailPlaylistCreator.followed = followed;
	}
	final String? avatarUrl = jsonConvert.convert<String>(json['avatarUrl']);
	if (avatarUrl != null) {
		playlistDetailPlaylistCreator.avatarUrl = avatarUrl;
	}
	final int? accountStatus = jsonConvert.convert<int>(json['accountStatus']);
	if (accountStatus != null) {
		playlistDetailPlaylistCreator.accountStatus = accountStatus;
	}
	final int? gender = jsonConvert.convert<int>(json['gender']);
	if (gender != null) {
		playlistDetailPlaylistCreator.gender = gender;
	}
	final int? city = jsonConvert.convert<int>(json['city']);
	if (city != null) {
		playlistDetailPlaylistCreator.city = city;
	}
	final int? birthday = jsonConvert.convert<int>(json['birthday']);
	if (birthday != null) {
		playlistDetailPlaylistCreator.birthday = birthday;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		playlistDetailPlaylistCreator.userId = userId;
	}
	final int? userType = jsonConvert.convert<int>(json['userType']);
	if (userType != null) {
		playlistDetailPlaylistCreator.userType = userType;
	}
	final String? nickname = jsonConvert.convert<String>(json['nickname']);
	if (nickname != null) {
		playlistDetailPlaylistCreator.nickname = nickname;
	}
	final String? signature = jsonConvert.convert<String>(json['signature']);
	if (signature != null) {
		playlistDetailPlaylistCreator.signature = signature;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		playlistDetailPlaylistCreator.description = description;
	}
	final String? detailDescription = jsonConvert.convert<String>(json['detailDescription']);
	if (detailDescription != null) {
		playlistDetailPlaylistCreator.detailDescription = detailDescription;
	}
	final int? avatarImgId = jsonConvert.convert<int>(json['avatarImgId']);
	if (avatarImgId != null) {
		playlistDetailPlaylistCreator.avatarImgId = avatarImgId;
	}
	final int? backgroundImgId = jsonConvert.convert<int>(json['backgroundImgId']);
	if (backgroundImgId != null) {
		playlistDetailPlaylistCreator.backgroundImgId = backgroundImgId;
	}
	final String? backgroundUrl = jsonConvert.convert<String>(json['backgroundUrl']);
	if (backgroundUrl != null) {
		playlistDetailPlaylistCreator.backgroundUrl = backgroundUrl;
	}
	final int? authority = jsonConvert.convert<int>(json['authority']);
	if (authority != null) {
		playlistDetailPlaylistCreator.authority = authority;
	}
	final bool? mutual = jsonConvert.convert<bool>(json['mutual']);
	if (mutual != null) {
		playlistDetailPlaylistCreator.mutual = mutual;
	}
	final List<String>? expertTags = jsonConvert.convertListNotNull<String>(json['expertTags']);
	if (expertTags != null) {
		playlistDetailPlaylistCreator.expertTags = expertTags;
	}
	final dynamic experts = jsonConvert.convert<dynamic>(json['experts']);
	if (experts != null) {
		playlistDetailPlaylistCreator.experts = experts;
	}
	final int? djStatus = jsonConvert.convert<int>(json['djStatus']);
	if (djStatus != null) {
		playlistDetailPlaylistCreator.djStatus = djStatus;
	}
	final int? vipType = jsonConvert.convert<int>(json['vipType']);
	if (vipType != null) {
		playlistDetailPlaylistCreator.vipType = vipType;
	}
	final dynamic remarkName = jsonConvert.convert<dynamic>(json['remarkName']);
	if (remarkName != null) {
		playlistDetailPlaylistCreator.remarkName = remarkName;
	}
	final int? authenticationTypes = jsonConvert.convert<int>(json['authenticationTypes']);
	if (authenticationTypes != null) {
		playlistDetailPlaylistCreator.authenticationTypes = authenticationTypes;
	}
	final PlaylistDetailPlaylistCreatorAvatarDetail? avatarDetail = jsonConvert.convert<PlaylistDetailPlaylistCreatorAvatarDetail>(json['avatarDetail']);
	if (avatarDetail != null) {
		playlistDetailPlaylistCreator.avatarDetail = avatarDetail;
	}
	final bool? anchor = jsonConvert.convert<bool>(json['anchor']);
	if (anchor != null) {
		playlistDetailPlaylistCreator.anchor = anchor;
	}
	final String? backgroundImgIdStr = jsonConvert.convert<String>(json['backgroundImgIdStr']);
	if (backgroundImgIdStr != null) {
		playlistDetailPlaylistCreator.backgroundImgIdStr = backgroundImgIdStr;
	}
	final String? avatarImgIdStr = jsonConvert.convert<String>(json['avatarImgIdStr']);
	if (avatarImgIdStr != null) {
		playlistDetailPlaylistCreator.avatarImgIdStr = avatarImgIdStr;
	}
	return playlistDetailPlaylistCreator;
}

Map<String, dynamic> $PlaylistDetailPlaylistCreatorToJson(PlaylistDetailPlaylistCreator entity) {
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
	data['expertTags'] =  entity.expertTags;
	data['experts'] = entity.experts;
	data['djStatus'] = entity.djStatus;
	data['vipType'] = entity.vipType;
	data['remarkName'] = entity.remarkName;
	data['authenticationTypes'] = entity.authenticationTypes;
	data['avatarDetail'] = entity.avatarDetail?.toJson();
	data['anchor'] = entity.anchor;
	data['backgroundImgIdStr'] = entity.backgroundImgIdStr;
	data['avatarImgIdStr'] = entity.avatarImgIdStr;
	return data;
}

PlaylistDetailPlaylistCreatorAvatarDetail $PlaylistDetailPlaylistCreatorAvatarDetailFromJson(Map<String, dynamic> json) {
	final PlaylistDetailPlaylistCreatorAvatarDetail playlistDetailPlaylistCreatorAvatarDetail = PlaylistDetailPlaylistCreatorAvatarDetail();
	final int? userType = jsonConvert.convert<int>(json['userType']);
	if (userType != null) {
		playlistDetailPlaylistCreatorAvatarDetail.userType = userType;
	}
	final int? identityLevel = jsonConvert.convert<int>(json['identityLevel']);
	if (identityLevel != null) {
		playlistDetailPlaylistCreatorAvatarDetail.identityLevel = identityLevel;
	}
	final String? identityIconUrl = jsonConvert.convert<String>(json['identityIconUrl']);
	if (identityIconUrl != null) {
		playlistDetailPlaylistCreatorAvatarDetail.identityIconUrl = identityIconUrl;
	}
	return playlistDetailPlaylistCreatorAvatarDetail;
}

Map<String, dynamic> $PlaylistDetailPlaylistCreatorAvatarDetailToJson(PlaylistDetailPlaylistCreatorAvatarDetail entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['userType'] = entity.userType;
	data['identityLevel'] = entity.identityLevel;
	data['identityIconUrl'] = entity.identityIconUrl;
	return data;
}

PlaylistDetailPlaylistTracks $PlaylistDetailPlaylistTracksFromJson(Map<String, dynamic> json) {
	final PlaylistDetailPlaylistTracks playlistDetailPlaylistTracks = PlaylistDetailPlaylistTracks();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		playlistDetailPlaylistTracks.name = name;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		playlistDetailPlaylistTracks.id = id;
	}
	final int? pst = jsonConvert.convert<int>(json['pst']);
	if (pst != null) {
		playlistDetailPlaylistTracks.pst = pst;
	}
	final int? t = jsonConvert.convert<int>(json['t']);
	if (t != null) {
		playlistDetailPlaylistTracks.t = t;
	}
	final List<PlaylistDetailPlaylistTracksAr>? ar = jsonConvert.convertListNotNull<PlaylistDetailPlaylistTracksAr>(json['ar']);
	if (ar != null) {
		playlistDetailPlaylistTracks.ar = ar;
	}
	final List<String>? alia = jsonConvert.convertListNotNull<String>(json['alia']);
	if (alia != null) {
		playlistDetailPlaylistTracks.alia = alia;
	}
	final int? pop = jsonConvert.convert<int>(json['pop']);
	if (pop != null) {
		playlistDetailPlaylistTracks.pop = pop;
	}
	final int? st = jsonConvert.convert<int>(json['st']);
	if (st != null) {
		playlistDetailPlaylistTracks.st = st;
	}
	final String? rt = jsonConvert.convert<String>(json['rt']);
	if (rt != null) {
		playlistDetailPlaylistTracks.rt = rt;
	}
	final int? fee = jsonConvert.convert<int>(json['fee']);
	if (fee != null) {
		playlistDetailPlaylistTracks.fee = fee;
	}
	final int? v = jsonConvert.convert<int>(json['v']);
	if (v != null) {
		playlistDetailPlaylistTracks.v = v;
	}
	final dynamic crbt = jsonConvert.convert<dynamic>(json['crbt']);
	if (crbt != null) {
		playlistDetailPlaylistTracks.crbt = crbt;
	}
	final String? cf = jsonConvert.convert<String>(json['cf']);
	if (cf != null) {
		playlistDetailPlaylistTracks.cf = cf;
	}
	final PlaylistDetailPlaylistTracksAl? al = jsonConvert.convert<PlaylistDetailPlaylistTracksAl>(json['al']);
	if (al != null) {
		playlistDetailPlaylistTracks.al = al;
	}
	final int? dt = jsonConvert.convert<int>(json['dt']);
	if (dt != null) {
		playlistDetailPlaylistTracks.dt = dt;
	}
	final PlaylistDetailPlaylistTracksH? h = jsonConvert.convert<PlaylistDetailPlaylistTracksH>(json['h']);
	if (h != null) {
		playlistDetailPlaylistTracks.h = h;
	}
	final PlaylistDetailPlaylistTracksM? m = jsonConvert.convert<PlaylistDetailPlaylistTracksM>(json['m']);
	if (m != null) {
		playlistDetailPlaylistTracks.m = m;
	}
	final PlaylistDetailPlaylistTracksL? l = jsonConvert.convert<PlaylistDetailPlaylistTracksL>(json['l']);
	if (l != null) {
		playlistDetailPlaylistTracks.l = l;
	}
	final PlaylistDetailPlaylistTracksSq? sq = jsonConvert.convert<PlaylistDetailPlaylistTracksSq>(json['sq']);
	if (sq != null) {
		playlistDetailPlaylistTracks.sq = sq;
	}
	final PlaylistDetailPlaylistTracksHr? hr = jsonConvert.convert<PlaylistDetailPlaylistTracksHr>(json['hr']);
	if (hr != null) {
		playlistDetailPlaylistTracks.hr = hr;
	}
	final dynamic a = jsonConvert.convert<dynamic>(json['a']);
	if (a != null) {
		playlistDetailPlaylistTracks.a = a;
	}
	final String? cd = jsonConvert.convert<String>(json['cd']);
	if (cd != null) {
		playlistDetailPlaylistTracks.cd = cd;
	}
	final int? no = jsonConvert.convert<int>(json['no']);
	if (no != null) {
		playlistDetailPlaylistTracks.no = no;
	}
	final dynamic rtUrl = jsonConvert.convert<dynamic>(json['rtUrl']);
	if (rtUrl != null) {
		playlistDetailPlaylistTracks.rtUrl = rtUrl;
	}
	final int? ftype = jsonConvert.convert<int>(json['ftype']);
	if (ftype != null) {
		playlistDetailPlaylistTracks.ftype = ftype;
	}
	final List<dynamic>? rtUrls = jsonConvert.convertListNotNull<dynamic>(json['rtUrls']);
	if (rtUrls != null) {
		playlistDetailPlaylistTracks.rtUrls = rtUrls;
	}
	final int? djId = jsonConvert.convert<int>(json['djId']);
	if (djId != null) {
		playlistDetailPlaylistTracks.djId = djId;
	}
	final int? copyright = jsonConvert.convert<int>(json['copyright']);
	if (copyright != null) {
		playlistDetailPlaylistTracks.copyright = copyright;
	}
	final int? sId = jsonConvert.convert<int>(json['s_id']);
	if (sId != null) {
		playlistDetailPlaylistTracks.sId = sId;
	}
	final int? mark = jsonConvert.convert<int>(json['mark']);
	if (mark != null) {
		playlistDetailPlaylistTracks.mark = mark;
	}
	final int? originCoverType = jsonConvert.convert<int>(json['originCoverType']);
	if (originCoverType != null) {
		playlistDetailPlaylistTracks.originCoverType = originCoverType;
	}
	final dynamic originSongSimpleData = jsonConvert.convert<dynamic>(json['originSongSimpleData']);
	if (originSongSimpleData != null) {
		playlistDetailPlaylistTracks.originSongSimpleData = originSongSimpleData;
	}
	final dynamic tagPicList = jsonConvert.convert<dynamic>(json['tagPicList']);
	if (tagPicList != null) {
		playlistDetailPlaylistTracks.tagPicList = tagPicList;
	}
	final bool? resourceState = jsonConvert.convert<bool>(json['resourceState']);
	if (resourceState != null) {
		playlistDetailPlaylistTracks.resourceState = resourceState;
	}
	final int? version = jsonConvert.convert<int>(json['version']);
	if (version != null) {
		playlistDetailPlaylistTracks.version = version;
	}
	final dynamic songJumpInfo = jsonConvert.convert<dynamic>(json['songJumpInfo']);
	if (songJumpInfo != null) {
		playlistDetailPlaylistTracks.songJumpInfo = songJumpInfo;
	}
	final dynamic entertainmentTags = jsonConvert.convert<dynamic>(json['entertainmentTags']);
	if (entertainmentTags != null) {
		playlistDetailPlaylistTracks.entertainmentTags = entertainmentTags;
	}
	final int? single = jsonConvert.convert<int>(json['single']);
	if (single != null) {
		playlistDetailPlaylistTracks.single = single;
	}
	final PlaylistDetailPlaylistTracksNoCopyrightRcmd? noCopyrightRcmd = jsonConvert.convert<PlaylistDetailPlaylistTracksNoCopyrightRcmd>(json['noCopyrightRcmd']);
	if (noCopyrightRcmd != null) {
		playlistDetailPlaylistTracks.noCopyrightRcmd = noCopyrightRcmd;
	}
	final int? rtype = jsonConvert.convert<int>(json['rtype']);
	if (rtype != null) {
		playlistDetailPlaylistTracks.rtype = rtype;
	}
	final dynamic rurl = jsonConvert.convert<dynamic>(json['rurl']);
	if (rurl != null) {
		playlistDetailPlaylistTracks.rurl = rurl;
	}
	final int? mst = jsonConvert.convert<int>(json['mst']);
	if (mst != null) {
		playlistDetailPlaylistTracks.mst = mst;
	}
	final int? cp = jsonConvert.convert<int>(json['cp']);
	if (cp != null) {
		playlistDetailPlaylistTracks.cp = cp;
	}
	final int? mv = jsonConvert.convert<int>(json['mv']);
	if (mv != null) {
		playlistDetailPlaylistTracks.mv = mv;
	}
	final int? publishTime = jsonConvert.convert<int>(json['publishTime']);
	if (publishTime != null) {
		playlistDetailPlaylistTracks.publishTime = publishTime;
	}
	final List<String>? tns = jsonConvert.convertListNotNull<String>(json['tns']);
	if (tns != null) {
		playlistDetailPlaylistTracks.tns = tns;
	}
	return playlistDetailPlaylistTracks;
}

Map<String, dynamic> $PlaylistDetailPlaylistTracksToJson(PlaylistDetailPlaylistTracks entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['pst'] = entity.pst;
	data['t'] = entity.t;
	data['ar'] =  entity.ar?.map((v) => v.toJson()).toList();
	data['alia'] =  entity.alia;
	data['pop'] = entity.pop;
	data['st'] = entity.st;
	data['rt'] = entity.rt;
	data['fee'] = entity.fee;
	data['v'] = entity.v;
	data['crbt'] = entity.crbt;
	data['cf'] = entity.cf;
	data['al'] = entity.al?.toJson();
	data['dt'] = entity.dt;
	data['h'] = entity.h?.toJson();
	data['m'] = entity.m?.toJson();
	data['l'] = entity.l?.toJson();
	data['sq'] = entity.sq?.toJson();
	data['hr'] = entity.hr?.toJson();
	data['a'] = entity.a;
	data['cd'] = entity.cd;
	data['no'] = entity.no;
	data['rtUrl'] = entity.rtUrl;
	data['ftype'] = entity.ftype;
	data['rtUrls'] =  entity.rtUrls;
	data['djId'] = entity.djId;
	data['copyright'] = entity.copyright;
	data['s_id'] = entity.sId;
	data['mark'] = entity.mark;
	data['originCoverType'] = entity.originCoverType;
	data['originSongSimpleData'] = entity.originSongSimpleData;
	data['tagPicList'] = entity.tagPicList;
	data['resourceState'] = entity.resourceState;
	data['version'] = entity.version;
	data['songJumpInfo'] = entity.songJumpInfo;
	data['entertainmentTags'] = entity.entertainmentTags;
	data['single'] = entity.single;
	data['noCopyrightRcmd'] = entity.noCopyrightRcmd?.toJson();
	data['rtype'] = entity.rtype;
	data['rurl'] = entity.rurl;
	data['mst'] = entity.mst;
	data['cp'] = entity.cp;
	data['mv'] = entity.mv;
	data['publishTime'] = entity.publishTime;
	data['tns'] =  entity.tns;
	return data;
}

PlaylistDetailPlaylistTracksAr $PlaylistDetailPlaylistTracksArFromJson(Map<String, dynamic> json) {
	final PlaylistDetailPlaylistTracksAr playlistDetailPlaylistTracksAr = PlaylistDetailPlaylistTracksAr();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		playlistDetailPlaylistTracksAr.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		playlistDetailPlaylistTracksAr.name = name;
	}
	final List<dynamic>? tns = jsonConvert.convertListNotNull<dynamic>(json['tns']);
	if (tns != null) {
		playlistDetailPlaylistTracksAr.tns = tns;
	}
	final List<dynamic>? alias = jsonConvert.convertListNotNull<dynamic>(json['alias']);
	if (alias != null) {
		playlistDetailPlaylistTracksAr.alias = alias;
	}
	return playlistDetailPlaylistTracksAr;
}

Map<String, dynamic> $PlaylistDetailPlaylistTracksArToJson(PlaylistDetailPlaylistTracksAr entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['tns'] =  entity.tns;
	data['alias'] =  entity.alias;
	return data;
}

PlaylistDetailPlaylistTracksAl $PlaylistDetailPlaylistTracksAlFromJson(Map<String, dynamic> json) {
	final PlaylistDetailPlaylistTracksAl playlistDetailPlaylistTracksAl = PlaylistDetailPlaylistTracksAl();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		playlistDetailPlaylistTracksAl.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		playlistDetailPlaylistTracksAl.name = name;
	}
	final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
	if (picUrl != null) {
		playlistDetailPlaylistTracksAl.picUrl = picUrl;
	}
	final List<dynamic>? tns = jsonConvert.convertListNotNull<dynamic>(json['tns']);
	if (tns != null) {
		playlistDetailPlaylistTracksAl.tns = tns;
	}
	final int? pic = jsonConvert.convert<int>(json['pic']);
	if (pic != null) {
		playlistDetailPlaylistTracksAl.pic = pic;
	}
	return playlistDetailPlaylistTracksAl;
}

Map<String, dynamic> $PlaylistDetailPlaylistTracksAlToJson(PlaylistDetailPlaylistTracksAl entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['picUrl'] = entity.picUrl;
	data['tns'] =  entity.tns;
	data['pic'] = entity.pic;
	return data;
}

PlaylistDetailPlaylistTracksH $PlaylistDetailPlaylistTracksHFromJson(Map<String, dynamic> json) {
	final PlaylistDetailPlaylistTracksH playlistDetailPlaylistTracksH = PlaylistDetailPlaylistTracksH();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		playlistDetailPlaylistTracksH.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		playlistDetailPlaylistTracksH.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		playlistDetailPlaylistTracksH.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		playlistDetailPlaylistTracksH.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		playlistDetailPlaylistTracksH.sr = sr;
	}
	return playlistDetailPlaylistTracksH;
}

Map<String, dynamic> $PlaylistDetailPlaylistTracksHToJson(PlaylistDetailPlaylistTracksH entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

PlaylistDetailPlaylistTracksM $PlaylistDetailPlaylistTracksMFromJson(Map<String, dynamic> json) {
	final PlaylistDetailPlaylistTracksM playlistDetailPlaylistTracksM = PlaylistDetailPlaylistTracksM();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		playlistDetailPlaylistTracksM.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		playlistDetailPlaylistTracksM.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		playlistDetailPlaylistTracksM.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		playlistDetailPlaylistTracksM.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		playlistDetailPlaylistTracksM.sr = sr;
	}
	return playlistDetailPlaylistTracksM;
}

Map<String, dynamic> $PlaylistDetailPlaylistTracksMToJson(PlaylistDetailPlaylistTracksM entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

PlaylistDetailPlaylistTracksL $PlaylistDetailPlaylistTracksLFromJson(Map<String, dynamic> json) {
	final PlaylistDetailPlaylistTracksL playlistDetailPlaylistTracksL = PlaylistDetailPlaylistTracksL();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		playlistDetailPlaylistTracksL.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		playlistDetailPlaylistTracksL.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		playlistDetailPlaylistTracksL.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		playlistDetailPlaylistTracksL.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		playlistDetailPlaylistTracksL.sr = sr;
	}
	return playlistDetailPlaylistTracksL;
}

Map<String, dynamic> $PlaylistDetailPlaylistTracksLToJson(PlaylistDetailPlaylistTracksL entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

PlaylistDetailPlaylistTracksSq $PlaylistDetailPlaylistTracksSqFromJson(Map<String, dynamic> json) {
	final PlaylistDetailPlaylistTracksSq playlistDetailPlaylistTracksSq = PlaylistDetailPlaylistTracksSq();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		playlistDetailPlaylistTracksSq.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		playlistDetailPlaylistTracksSq.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		playlistDetailPlaylistTracksSq.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		playlistDetailPlaylistTracksSq.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		playlistDetailPlaylistTracksSq.sr = sr;
	}
	return playlistDetailPlaylistTracksSq;
}

Map<String, dynamic> $PlaylistDetailPlaylistTracksSqToJson(PlaylistDetailPlaylistTracksSq entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

PlaylistDetailPlaylistTracksHr $PlaylistDetailPlaylistTracksHrFromJson(Map<String, dynamic> json) {
	final PlaylistDetailPlaylistTracksHr playlistDetailPlaylistTracksHr = PlaylistDetailPlaylistTracksHr();
	final int? br = jsonConvert.convert<int>(json['br']);
	if (br != null) {
		playlistDetailPlaylistTracksHr.br = br;
	}
	final int? fid = jsonConvert.convert<int>(json['fid']);
	if (fid != null) {
		playlistDetailPlaylistTracksHr.fid = fid;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		playlistDetailPlaylistTracksHr.size = size;
	}
	final int? vd = jsonConvert.convert<int>(json['vd']);
	if (vd != null) {
		playlistDetailPlaylistTracksHr.vd = vd;
	}
	final int? sr = jsonConvert.convert<int>(json['sr']);
	if (sr != null) {
		playlistDetailPlaylistTracksHr.sr = sr;
	}
	return playlistDetailPlaylistTracksHr;
}

Map<String, dynamic> $PlaylistDetailPlaylistTracksHrToJson(PlaylistDetailPlaylistTracksHr entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	data['sr'] = entity.sr;
	return data;
}

PlaylistDetailPlaylistTracksNoCopyrightRcmd $PlaylistDetailPlaylistTracksNoCopyrightRcmdFromJson(Map<String, dynamic> json) {
	final PlaylistDetailPlaylistTracksNoCopyrightRcmd playlistDetailPlaylistTracksNoCopyrightRcmd = PlaylistDetailPlaylistTracksNoCopyrightRcmd();
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		playlistDetailPlaylistTracksNoCopyrightRcmd.type = type;
	}
	final String? typeDesc = jsonConvert.convert<String>(json['typeDesc']);
	if (typeDesc != null) {
		playlistDetailPlaylistTracksNoCopyrightRcmd.typeDesc = typeDesc;
	}
	final dynamic songId = jsonConvert.convert<dynamic>(json['songId']);
	if (songId != null) {
		playlistDetailPlaylistTracksNoCopyrightRcmd.songId = songId;
	}
	return playlistDetailPlaylistTracksNoCopyrightRcmd;
}

Map<String, dynamic> $PlaylistDetailPlaylistTracksNoCopyrightRcmdToJson(PlaylistDetailPlaylistTracksNoCopyrightRcmd entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['type'] = entity.type;
	data['typeDesc'] = entity.typeDesc;
	data['songId'] = entity.songId;
	return data;
}

PlaylistDetailPlaylistTrackIds $PlaylistDetailPlaylistTrackIdsFromJson(Map<String, dynamic> json) {
	final PlaylistDetailPlaylistTrackIds playlistDetailPlaylistTrackIds = PlaylistDetailPlaylistTrackIds();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		playlistDetailPlaylistTrackIds.id = id;
	}
	final int? v = jsonConvert.convert<int>(json['v']);
	if (v != null) {
		playlistDetailPlaylistTrackIds.v = v;
	}
	final int? t = jsonConvert.convert<int>(json['t']);
	if (t != null) {
		playlistDetailPlaylistTrackIds.t = t;
	}
	final int? at = jsonConvert.convert<int>(json['at']);
	if (at != null) {
		playlistDetailPlaylistTrackIds.at = at;
	}
	final dynamic alg = jsonConvert.convert<dynamic>(json['alg']);
	if (alg != null) {
		playlistDetailPlaylistTrackIds.alg = alg;
	}
	final int? uid = jsonConvert.convert<int>(json['uid']);
	if (uid != null) {
		playlistDetailPlaylistTrackIds.uid = uid;
	}
	final String? rcmdReason = jsonConvert.convert<String>(json['rcmdReason']);
	if (rcmdReason != null) {
		playlistDetailPlaylistTrackIds.rcmdReason = rcmdReason;
	}
	final dynamic sc = jsonConvert.convert<dynamic>(json['sc']);
	if (sc != null) {
		playlistDetailPlaylistTrackIds.sc = sc;
	}
	final dynamic f = jsonConvert.convert<dynamic>(json['f']);
	if (f != null) {
		playlistDetailPlaylistTrackIds.f = f;
	}
	final dynamic sr = jsonConvert.convert<dynamic>(json['sr']);
	if (sr != null) {
		playlistDetailPlaylistTrackIds.sr = sr;
	}
	return playlistDetailPlaylistTrackIds;
}

Map<String, dynamic> $PlaylistDetailPlaylistTrackIdsToJson(PlaylistDetailPlaylistTrackIds entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['v'] = entity.v;
	data['t'] = entity.t;
	data['at'] = entity.at;
	data['alg'] = entity.alg;
	data['uid'] = entity.uid;
	data['rcmdReason'] = entity.rcmdReason;
	data['sc'] = entity.sc;
	data['f'] = entity.f;
	data['sr'] = entity.sr;
	return data;
}

PlaylistDetailPrivileges $PlaylistDetailPrivilegesFromJson(Map<String, dynamic> json) {
	final PlaylistDetailPrivileges playlistDetailPrivileges = PlaylistDetailPrivileges();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		playlistDetailPrivileges.id = id;
	}
	final int? fee = jsonConvert.convert<int>(json['fee']);
	if (fee != null) {
		playlistDetailPrivileges.fee = fee;
	}
	final int? payed = jsonConvert.convert<int>(json['payed']);
	if (payed != null) {
		playlistDetailPrivileges.payed = payed;
	}
	final int? realPayed = jsonConvert.convert<int>(json['realPayed']);
	if (realPayed != null) {
		playlistDetailPrivileges.realPayed = realPayed;
	}
	final int? st = jsonConvert.convert<int>(json['st']);
	if (st != null) {
		playlistDetailPrivileges.st = st;
	}
	final int? pl = jsonConvert.convert<int>(json['pl']);
	if (pl != null) {
		playlistDetailPrivileges.pl = pl;
	}
	final int? dl = jsonConvert.convert<int>(json['dl']);
	if (dl != null) {
		playlistDetailPrivileges.dl = dl;
	}
	final int? sp = jsonConvert.convert<int>(json['sp']);
	if (sp != null) {
		playlistDetailPrivileges.sp = sp;
	}
	final int? cp = jsonConvert.convert<int>(json['cp']);
	if (cp != null) {
		playlistDetailPrivileges.cp = cp;
	}
	final int? subp = jsonConvert.convert<int>(json['subp']);
	if (subp != null) {
		playlistDetailPrivileges.subp = subp;
	}
	final bool? cs = jsonConvert.convert<bool>(json['cs']);
	if (cs != null) {
		playlistDetailPrivileges.cs = cs;
	}
	final int? maxbr = jsonConvert.convert<int>(json['maxbr']);
	if (maxbr != null) {
		playlistDetailPrivileges.maxbr = maxbr;
	}
	final int? fl = jsonConvert.convert<int>(json['fl']);
	if (fl != null) {
		playlistDetailPrivileges.fl = fl;
	}
	final dynamic pc = jsonConvert.convert<dynamic>(json['pc']);
	if (pc != null) {
		playlistDetailPrivileges.pc = pc;
	}
	final bool? toast = jsonConvert.convert<bool>(json['toast']);
	if (toast != null) {
		playlistDetailPrivileges.toast = toast;
	}
	final int? flag = jsonConvert.convert<int>(json['flag']);
	if (flag != null) {
		playlistDetailPrivileges.flag = flag;
	}
	final bool? paidBigBang = jsonConvert.convert<bool>(json['paidBigBang']);
	if (paidBigBang != null) {
		playlistDetailPrivileges.paidBigBang = paidBigBang;
	}
	final bool? preSell = jsonConvert.convert<bool>(json['preSell']);
	if (preSell != null) {
		playlistDetailPrivileges.preSell = preSell;
	}
	final int? playMaxbr = jsonConvert.convert<int>(json['playMaxbr']);
	if (playMaxbr != null) {
		playlistDetailPrivileges.playMaxbr = playMaxbr;
	}
	final int? downloadMaxbr = jsonConvert.convert<int>(json['downloadMaxbr']);
	if (downloadMaxbr != null) {
		playlistDetailPrivileges.downloadMaxbr = downloadMaxbr;
	}
	final String? maxBrLevel = jsonConvert.convert<String>(json['maxBrLevel']);
	if (maxBrLevel != null) {
		playlistDetailPrivileges.maxBrLevel = maxBrLevel;
	}
	final String? playMaxBrLevel = jsonConvert.convert<String>(json['playMaxBrLevel']);
	if (playMaxBrLevel != null) {
		playlistDetailPrivileges.playMaxBrLevel = playMaxBrLevel;
	}
	final String? downloadMaxBrLevel = jsonConvert.convert<String>(json['downloadMaxBrLevel']);
	if (downloadMaxBrLevel != null) {
		playlistDetailPrivileges.downloadMaxBrLevel = downloadMaxBrLevel;
	}
	final String? plLevel = jsonConvert.convert<String>(json['plLevel']);
	if (plLevel != null) {
		playlistDetailPrivileges.plLevel = plLevel;
	}
	final String? dlLevel = jsonConvert.convert<String>(json['dlLevel']);
	if (dlLevel != null) {
		playlistDetailPrivileges.dlLevel = dlLevel;
	}
	final String? flLevel = jsonConvert.convert<String>(json['flLevel']);
	if (flLevel != null) {
		playlistDetailPrivileges.flLevel = flLevel;
	}
	final dynamic rscl = jsonConvert.convert<dynamic>(json['rscl']);
	if (rscl != null) {
		playlistDetailPrivileges.rscl = rscl;
	}
	final PlaylistDetailPrivilegesFreeTrialPrivilege? freeTrialPrivilege = jsonConvert.convert<PlaylistDetailPrivilegesFreeTrialPrivilege>(json['freeTrialPrivilege']);
	if (freeTrialPrivilege != null) {
		playlistDetailPrivileges.freeTrialPrivilege = freeTrialPrivilege;
	}
	final List<PlaylistDetailPrivilegesChargeInfoList>? chargeInfoList = jsonConvert.convertListNotNull<PlaylistDetailPrivilegesChargeInfoList>(json['chargeInfoList']);
	if (chargeInfoList != null) {
		playlistDetailPrivileges.chargeInfoList = chargeInfoList;
	}
	return playlistDetailPrivileges;
}

Map<String, dynamic> $PlaylistDetailPrivilegesToJson(PlaylistDetailPrivileges entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['fee'] = entity.fee;
	data['payed'] = entity.payed;
	data['realPayed'] = entity.realPayed;
	data['st'] = entity.st;
	data['pl'] = entity.pl;
	data['dl'] = entity.dl;
	data['sp'] = entity.sp;
	data['cp'] = entity.cp;
	data['subp'] = entity.subp;
	data['cs'] = entity.cs;
	data['maxbr'] = entity.maxbr;
	data['fl'] = entity.fl;
	data['pc'] = entity.pc;
	data['toast'] = entity.toast;
	data['flag'] = entity.flag;
	data['paidBigBang'] = entity.paidBigBang;
	data['preSell'] = entity.preSell;
	data['playMaxbr'] = entity.playMaxbr;
	data['downloadMaxbr'] = entity.downloadMaxbr;
	data['maxBrLevel'] = entity.maxBrLevel;
	data['playMaxBrLevel'] = entity.playMaxBrLevel;
	data['downloadMaxBrLevel'] = entity.downloadMaxBrLevel;
	data['plLevel'] = entity.plLevel;
	data['dlLevel'] = entity.dlLevel;
	data['flLevel'] = entity.flLevel;
	data['rscl'] = entity.rscl;
	data['freeTrialPrivilege'] = entity.freeTrialPrivilege?.toJson();
	data['chargeInfoList'] =  entity.chargeInfoList?.map((v) => v.toJson()).toList();
	return data;
}

PlaylistDetailPrivilegesFreeTrialPrivilege $PlaylistDetailPrivilegesFreeTrialPrivilegeFromJson(Map<String, dynamic> json) {
	final PlaylistDetailPrivilegesFreeTrialPrivilege playlistDetailPrivilegesFreeTrialPrivilege = PlaylistDetailPrivilegesFreeTrialPrivilege();
	final bool? resConsumable = jsonConvert.convert<bool>(json['resConsumable']);
	if (resConsumable != null) {
		playlistDetailPrivilegesFreeTrialPrivilege.resConsumable = resConsumable;
	}
	final bool? userConsumable = jsonConvert.convert<bool>(json['userConsumable']);
	if (userConsumable != null) {
		playlistDetailPrivilegesFreeTrialPrivilege.userConsumable = userConsumable;
	}
	final dynamic listenType = jsonConvert.convert<dynamic>(json['listenType']);
	if (listenType != null) {
		playlistDetailPrivilegesFreeTrialPrivilege.listenType = listenType;
	}
	return playlistDetailPrivilegesFreeTrialPrivilege;
}

Map<String, dynamic> $PlaylistDetailPrivilegesFreeTrialPrivilegeToJson(PlaylistDetailPrivilegesFreeTrialPrivilege entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['resConsumable'] = entity.resConsumable;
	data['userConsumable'] = entity.userConsumable;
	data['listenType'] = entity.listenType;
	return data;
}

PlaylistDetailPrivilegesChargeInfoList $PlaylistDetailPrivilegesChargeInfoListFromJson(Map<String, dynamic> json) {
	final PlaylistDetailPrivilegesChargeInfoList playlistDetailPrivilegesChargeInfoList = PlaylistDetailPrivilegesChargeInfoList();
	final int? rate = jsonConvert.convert<int>(json['rate']);
	if (rate != null) {
		playlistDetailPrivilegesChargeInfoList.rate = rate;
	}
	final dynamic chargeUrl = jsonConvert.convert<dynamic>(json['chargeUrl']);
	if (chargeUrl != null) {
		playlistDetailPrivilegesChargeInfoList.chargeUrl = chargeUrl;
	}
	final dynamic chargeMessage = jsonConvert.convert<dynamic>(json['chargeMessage']);
	if (chargeMessage != null) {
		playlistDetailPrivilegesChargeInfoList.chargeMessage = chargeMessage;
	}
	final int? chargeType = jsonConvert.convert<int>(json['chargeType']);
	if (chargeType != null) {
		playlistDetailPrivilegesChargeInfoList.chargeType = chargeType;
	}
	return playlistDetailPrivilegesChargeInfoList;
}

Map<String, dynamic> $PlaylistDetailPrivilegesChargeInfoListToJson(PlaylistDetailPrivilegesChargeInfoList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['rate'] = entity.rate;
	data['chargeUrl'] = entity.chargeUrl;
	data['chargeMessage'] = entity.chargeMessage;
	data['chargeType'] = entity.chargeType;
	return data;
}