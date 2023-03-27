import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/artist_desc_entity.dart';

ArtistDescEntity $ArtistDescEntityFromJson(Map<String, dynamic> json) {
	final ArtistDescEntity artistDescEntity = ArtistDescEntity();
	final List<ArtistDescIntroduction>? introduction = jsonConvert.convertListNotNull<ArtistDescIntroduction>(json['introduction']);
	if (introduction != null) {
		artistDescEntity.introduction = introduction;
	}
	final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
	if (briefDesc != null) {
		artistDescEntity.briefDesc = briefDesc;
	}
	final int? count = jsonConvert.convert<int>(json['count']);
	if (count != null) {
		artistDescEntity.count = count;
	}
	final List<ArtistDescTopicData>? topicData = jsonConvert.convertListNotNull<ArtistDescTopicData>(json['topicData']);
	if (topicData != null) {
		artistDescEntity.topicData = topicData;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		artistDescEntity.code = code;
	}
	return artistDescEntity;
}

Map<String, dynamic> $ArtistDescEntityToJson(ArtistDescEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['introduction'] =  entity.introduction?.map((v) => v.toJson()).toList();
	data['briefDesc'] = entity.briefDesc;
	data['count'] = entity.count;
	data['topicData'] =  entity.topicData?.map((v) => v.toJson()).toList();
	data['code'] = entity.code;
	return data;
}

ArtistDescIntroduction $ArtistDescIntroductionFromJson(Map<String, dynamic> json) {
	final ArtistDescIntroduction artistDescIntroduction = ArtistDescIntroduction();
	final String? ti = jsonConvert.convert<String>(json['ti']);
	if (ti != null) {
		artistDescIntroduction.ti = ti;
	}
	final String? txt = jsonConvert.convert<String>(json['txt']);
	if (txt != null) {
		artistDescIntroduction.txt = txt;
	}
	return artistDescIntroduction;
}

Map<String, dynamic> $ArtistDescIntroductionToJson(ArtistDescIntroduction entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['ti'] = entity.ti;
	data['txt'] = entity.txt;
	return data;
}

ArtistDescTopicData $ArtistDescTopicDataFromJson(Map<String, dynamic> json) {
	final ArtistDescTopicData artistDescTopicData = ArtistDescTopicData();
	final ArtistDescTopicDataTopic? topic = jsonConvert.convert<ArtistDescTopicDataTopic>(json['topic']);
	if (topic != null) {
		artistDescTopicData.topic = topic;
	}
	final ArtistDescTopicDataCreator? creator = jsonConvert.convert<ArtistDescTopicDataCreator>(json['creator']);
	if (creator != null) {
		artistDescTopicData.creator = creator;
	}
	final int? shareCount = jsonConvert.convert<int>(json['shareCount']);
	if (shareCount != null) {
		artistDescTopicData.shareCount = shareCount;
	}
	final int? commentCount = jsonConvert.convert<int>(json['commentCount']);
	if (commentCount != null) {
		artistDescTopicData.commentCount = commentCount;
	}
	final int? likedCount = jsonConvert.convert<int>(json['likedCount']);
	if (likedCount != null) {
		artistDescTopicData.likedCount = likedCount;
	}
	final bool? liked = jsonConvert.convert<bool>(json['liked']);
	if (liked != null) {
		artistDescTopicData.liked = liked;
	}
	final int? rewardCount = jsonConvert.convert<int>(json['rewardCount']);
	if (rewardCount != null) {
		artistDescTopicData.rewardCount = rewardCount;
	}
	final int? rewardMoney = jsonConvert.convert<int>(json['rewardMoney']);
	if (rewardMoney != null) {
		artistDescTopicData.rewardMoney = rewardMoney;
	}
	final dynamic relatedResource = jsonConvert.convert<dynamic>(json['relatedResource']);
	if (relatedResource != null) {
		artistDescTopicData.relatedResource = relatedResource;
	}
	final String? rectanglePicUrl = jsonConvert.convert<String>(json['rectanglePicUrl']);
	if (rectanglePicUrl != null) {
		artistDescTopicData.rectanglePicUrl = rectanglePicUrl;
	}
	final String? coverUrl = jsonConvert.convert<String>(json['coverUrl']);
	if (coverUrl != null) {
		artistDescTopicData.coverUrl = coverUrl;
	}
	final int? categoryId = jsonConvert.convert<int>(json['categoryId']);
	if (categoryId != null) {
		artistDescTopicData.categoryId = categoryId;
	}
	final String? categoryName = jsonConvert.convert<String>(json['categoryName']);
	if (categoryName != null) {
		artistDescTopicData.categoryName = categoryName;
	}
	final String? mainTitle = jsonConvert.convert<String>(json['mainTitle']);
	if (mainTitle != null) {
		artistDescTopicData.mainTitle = mainTitle;
	}
	final String? commentThreadId = jsonConvert.convert<String>(json['commentThreadId']);
	if (commentThreadId != null) {
		artistDescTopicData.commentThreadId = commentThreadId;
	}
	final bool? reward = jsonConvert.convert<bool>(json['reward']);
	if (reward != null) {
		artistDescTopicData.reward = reward;
	}
	final String? shareContent = jsonConvert.convert<String>(json['shareContent']);
	if (shareContent != null) {
		artistDescTopicData.shareContent = shareContent;
	}
	final String? wxTitle = jsonConvert.convert<String>(json['wxTitle']);
	if (wxTitle != null) {
		artistDescTopicData.wxTitle = wxTitle;
	}
	final int? addTime = jsonConvert.convert<int>(json['addTime']);
	if (addTime != null) {
		artistDescTopicData.addTime = addTime;
	}
	final int? seriesId = jsonConvert.convert<int>(json['seriesId']);
	if (seriesId != null) {
		artistDescTopicData.seriesId = seriesId;
	}
	final bool? showComment = jsonConvert.convert<bool>(json['showComment']);
	if (showComment != null) {
		artistDescTopicData.showComment = showComment;
	}
	final bool? showRelated = jsonConvert.convert<bool>(json['showRelated']);
	if (showRelated != null) {
		artistDescTopicData.showRelated = showRelated;
	}
	final dynamic memo = jsonConvert.convert<dynamic>(json['memo']);
	if (memo != null) {
		artistDescTopicData.memo = memo;
	}
	final String? summary = jsonConvert.convert<String>(json['summary']);
	if (summary != null) {
		artistDescTopicData.summary = summary;
	}
	final String? recmdTitle = jsonConvert.convert<String>(json['recmdTitle']);
	if (recmdTitle != null) {
		artistDescTopicData.recmdTitle = recmdTitle;
	}
	final String? recmdContent = jsonConvert.convert<String>(json['recmdContent']);
	if (recmdContent != null) {
		artistDescTopicData.recmdContent = recmdContent;
	}
	final int? readCount = jsonConvert.convert<int>(json['readCount']);
	if (readCount != null) {
		artistDescTopicData.readCount = readCount;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		artistDescTopicData.url = url;
	}
	final List<String>? tags = jsonConvert.convertListNotNull<String>(json['tags']);
	if (tags != null) {
		artistDescTopicData.tags = tags;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		artistDescTopicData.title = title;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		artistDescTopicData.id = id;
	}
	final int? number = jsonConvert.convert<int>(json['number']);
	if (number != null) {
		artistDescTopicData.number = number;
	}
	return artistDescTopicData;
}

Map<String, dynamic> $ArtistDescTopicDataToJson(ArtistDescTopicData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['topic'] = entity.topic?.toJson();
	data['creator'] = entity.creator?.toJson();
	data['shareCount'] = entity.shareCount;
	data['commentCount'] = entity.commentCount;
	data['likedCount'] = entity.likedCount;
	data['liked'] = entity.liked;
	data['rewardCount'] = entity.rewardCount;
	data['rewardMoney'] = entity.rewardMoney;
	data['relatedResource'] = entity.relatedResource;
	data['rectanglePicUrl'] = entity.rectanglePicUrl;
	data['coverUrl'] = entity.coverUrl;
	data['categoryId'] = entity.categoryId;
	data['categoryName'] = entity.categoryName;
	data['mainTitle'] = entity.mainTitle;
	data['commentThreadId'] = entity.commentThreadId;
	data['reward'] = entity.reward;
	data['shareContent'] = entity.shareContent;
	data['wxTitle'] = entity.wxTitle;
	data['addTime'] = entity.addTime;
	data['seriesId'] = entity.seriesId;
	data['showComment'] = entity.showComment;
	data['showRelated'] = entity.showRelated;
	data['memo'] = entity.memo;
	data['summary'] = entity.summary;
	data['recmdTitle'] = entity.recmdTitle;
	data['recmdContent'] = entity.recmdContent;
	data['readCount'] = entity.readCount;
	data['url'] = entity.url;
	data['tags'] =  entity.tags;
	data['title'] = entity.title;
	data['id'] = entity.id;
	data['number'] = entity.number;
	return data;
}

ArtistDescTopicDataTopic $ArtistDescTopicDataTopicFromJson(Map<String, dynamic> json) {
	final ArtistDescTopicDataTopic artistDescTopicDataTopic = ArtistDescTopicDataTopic();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		artistDescTopicDataTopic.id = id;
	}
	final int? addTime = jsonConvert.convert<int>(json['addTime']);
	if (addTime != null) {
		artistDescTopicDataTopic.addTime = addTime;
	}
	final String? mainTitle = jsonConvert.convert<String>(json['mainTitle']);
	if (mainTitle != null) {
		artistDescTopicDataTopic.mainTitle = mainTitle;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		artistDescTopicDataTopic.title = title;
	}
	final List<ArtistDescTopicDataTopicContent>? content = jsonConvert.convertListNotNull<ArtistDescTopicDataTopicContent>(json['content']);
	if (content != null) {
		artistDescTopicDataTopic.content = content;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		artistDescTopicDataTopic.userId = userId;
	}
	final int? cover = jsonConvert.convert<int>(json['cover']);
	if (cover != null) {
		artistDescTopicDataTopic.cover = cover;
	}
	final int? headPic = jsonConvert.convert<int>(json['headPic']);
	if (headPic != null) {
		artistDescTopicDataTopic.headPic = headPic;
	}
	final String? shareContent = jsonConvert.convert<String>(json['shareContent']);
	if (shareContent != null) {
		artistDescTopicDataTopic.shareContent = shareContent;
	}
	final String? wxTitle = jsonConvert.convert<String>(json['wxTitle']);
	if (wxTitle != null) {
		artistDescTopicDataTopic.wxTitle = wxTitle;
	}
	final bool? showComment = jsonConvert.convert<bool>(json['showComment']);
	if (showComment != null) {
		artistDescTopicDataTopic.showComment = showComment;
	}
	final int? status = jsonConvert.convert<int>(json['status']);
	if (status != null) {
		artistDescTopicDataTopic.status = status;
	}
	final int? seriesId = jsonConvert.convert<int>(json['seriesId']);
	if (seriesId != null) {
		artistDescTopicDataTopic.seriesId = seriesId;
	}
	final int? pubTime = jsonConvert.convert<int>(json['pubTime']);
	if (pubTime != null) {
		artistDescTopicDataTopic.pubTime = pubTime;
	}
	final int? readCount = jsonConvert.convert<int>(json['readCount']);
	if (readCount != null) {
		artistDescTopicDataTopic.readCount = readCount;
	}
	final List<String>? tags = jsonConvert.convertListNotNull<String>(json['tags']);
	if (tags != null) {
		artistDescTopicDataTopic.tags = tags;
	}
	final bool? pubImmidiatly = jsonConvert.convert<bool>(json['pubImmidiatly']);
	if (pubImmidiatly != null) {
		artistDescTopicDataTopic.pubImmidiatly = pubImmidiatly;
	}
	final String? auditor = jsonConvert.convert<String>(json['auditor']);
	if (auditor != null) {
		artistDescTopicDataTopic.auditor = auditor;
	}
	final int? auditTime = jsonConvert.convert<int>(json['auditTime']);
	if (auditTime != null) {
		artistDescTopicDataTopic.auditTime = auditTime;
	}
	final int? auditStatus = jsonConvert.convert<int>(json['auditStatus']);
	if (auditStatus != null) {
		artistDescTopicDataTopic.auditStatus = auditStatus;
	}
	final String? startText = jsonConvert.convert<String>(json['startText']);
	if (startText != null) {
		artistDescTopicDataTopic.startText = startText;
	}
	final String? delReason = jsonConvert.convert<String>(json['delReason']);
	if (delReason != null) {
		artistDescTopicDataTopic.delReason = delReason;
	}
	final bool? showRelated = jsonConvert.convert<bool>(json['showRelated']);
	if (showRelated != null) {
		artistDescTopicDataTopic.showRelated = showRelated;
	}
	final bool? fromBackend = jsonConvert.convert<bool>(json['fromBackend']);
	if (fromBackend != null) {
		artistDescTopicDataTopic.fromBackend = fromBackend;
	}
	final int? rectanglePic = jsonConvert.convert<int>(json['rectanglePic']);
	if (rectanglePic != null) {
		artistDescTopicDataTopic.rectanglePic = rectanglePic;
	}
	final int? updateTime = jsonConvert.convert<int>(json['updateTime']);
	if (updateTime != null) {
		artistDescTopicDataTopic.updateTime = updateTime;
	}
	final bool? reward = jsonConvert.convert<bool>(json['reward']);
	if (reward != null) {
		artistDescTopicDataTopic.reward = reward;
	}
	final String? summary = jsonConvert.convert<String>(json['summary']);
	if (summary != null) {
		artistDescTopicDataTopic.summary = summary;
	}
	final dynamic memo = jsonConvert.convert<dynamic>(json['memo']);
	if (memo != null) {
		artistDescTopicDataTopic.memo = memo;
	}
	final String? adInfo = jsonConvert.convert<String>(json['adInfo']);
	if (adInfo != null) {
		artistDescTopicDataTopic.adInfo = adInfo;
	}
	final int? categoryId = jsonConvert.convert<int>(json['categoryId']);
	if (categoryId != null) {
		artistDescTopicDataTopic.categoryId = categoryId;
	}
	final int? hotScore = jsonConvert.convert<int>(json['hotScore']);
	if (hotScore != null) {
		artistDescTopicDataTopic.hotScore = hotScore;
	}
	final String? recomdTitle = jsonConvert.convert<String>(json['recomdTitle']);
	if (recomdTitle != null) {
		artistDescTopicDataTopic.recomdTitle = recomdTitle;
	}
	final String? recomdContent = jsonConvert.convert<String>(json['recomdContent']);
	if (recomdContent != null) {
		artistDescTopicDataTopic.recomdContent = recomdContent;
	}
	final int? number = jsonConvert.convert<int>(json['number']);
	if (number != null) {
		artistDescTopicDataTopic.number = number;
	}
	return artistDescTopicDataTopic;
}

Map<String, dynamic> $ArtistDescTopicDataTopicToJson(ArtistDescTopicDataTopic entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['addTime'] = entity.addTime;
	data['mainTitle'] = entity.mainTitle;
	data['title'] = entity.title;
	data['content'] =  entity.content?.map((v) => v.toJson()).toList();
	data['userId'] = entity.userId;
	data['cover'] = entity.cover;
	data['headPic'] = entity.headPic;
	data['shareContent'] = entity.shareContent;
	data['wxTitle'] = entity.wxTitle;
	data['showComment'] = entity.showComment;
	data['status'] = entity.status;
	data['seriesId'] = entity.seriesId;
	data['pubTime'] = entity.pubTime;
	data['readCount'] = entity.readCount;
	data['tags'] =  entity.tags;
	data['pubImmidiatly'] = entity.pubImmidiatly;
	data['auditor'] = entity.auditor;
	data['auditTime'] = entity.auditTime;
	data['auditStatus'] = entity.auditStatus;
	data['startText'] = entity.startText;
	data['delReason'] = entity.delReason;
	data['showRelated'] = entity.showRelated;
	data['fromBackend'] = entity.fromBackend;
	data['rectanglePic'] = entity.rectanglePic;
	data['updateTime'] = entity.updateTime;
	data['reward'] = entity.reward;
	data['summary'] = entity.summary;
	data['memo'] = entity.memo;
	data['adInfo'] = entity.adInfo;
	data['categoryId'] = entity.categoryId;
	data['hotScore'] = entity.hotScore;
	data['recomdTitle'] = entity.recomdTitle;
	data['recomdContent'] = entity.recomdContent;
	data['number'] = entity.number;
	return data;
}

ArtistDescTopicDataTopicContent $ArtistDescTopicDataTopicContentFromJson(Map<String, dynamic> json) {
	final ArtistDescTopicDataTopicContent artistDescTopicDataTopicContent = ArtistDescTopicDataTopicContent();
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		artistDescTopicDataTopicContent.type = type;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		artistDescTopicDataTopicContent.id = id;
	}
	final String? content = jsonConvert.convert<String>(json['content']);
	if (content != null) {
		artistDescTopicDataTopicContent.content = content;
	}
	return artistDescTopicDataTopicContent;
}

Map<String, dynamic> $ArtistDescTopicDataTopicContentToJson(ArtistDescTopicDataTopicContent entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['type'] = entity.type;
	data['id'] = entity.id;
	data['content'] = entity.content;
	return data;
}

ArtistDescTopicDataCreator $ArtistDescTopicDataCreatorFromJson(Map<String, dynamic> json) {
	final ArtistDescTopicDataCreator artistDescTopicDataCreator = ArtistDescTopicDataCreator();
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		artistDescTopicDataCreator.userId = userId;
	}
	final int? userType = jsonConvert.convert<int>(json['userType']);
	if (userType != null) {
		artistDescTopicDataCreator.userType = userType;
	}
	final String? nickname = jsonConvert.convert<String>(json['nickname']);
	if (nickname != null) {
		artistDescTopicDataCreator.nickname = nickname;
	}
	final int? avatarImgId = jsonConvert.convert<int>(json['avatarImgId']);
	if (avatarImgId != null) {
		artistDescTopicDataCreator.avatarImgId = avatarImgId;
	}
	final String? avatarUrl = jsonConvert.convert<String>(json['avatarUrl']);
	if (avatarUrl != null) {
		artistDescTopicDataCreator.avatarUrl = avatarUrl;
	}
	final int? backgroundImgId = jsonConvert.convert<int>(json['backgroundImgId']);
	if (backgroundImgId != null) {
		artistDescTopicDataCreator.backgroundImgId = backgroundImgId;
	}
	final String? backgroundUrl = jsonConvert.convert<String>(json['backgroundUrl']);
	if (backgroundUrl != null) {
		artistDescTopicDataCreator.backgroundUrl = backgroundUrl;
	}
	final String? signature = jsonConvert.convert<String>(json['signature']);
	if (signature != null) {
		artistDescTopicDataCreator.signature = signature;
	}
	final int? createTime = jsonConvert.convert<int>(json['createTime']);
	if (createTime != null) {
		artistDescTopicDataCreator.createTime = createTime;
	}
	final String? userName = jsonConvert.convert<String>(json['userName']);
	if (userName != null) {
		artistDescTopicDataCreator.userName = userName;
	}
	final int? accountType = jsonConvert.convert<int>(json['accountType']);
	if (accountType != null) {
		artistDescTopicDataCreator.accountType = accountType;
	}
	final String? shortUserName = jsonConvert.convert<String>(json['shortUserName']);
	if (shortUserName != null) {
		artistDescTopicDataCreator.shortUserName = shortUserName;
	}
	final int? birthday = jsonConvert.convert<int>(json['birthday']);
	if (birthday != null) {
		artistDescTopicDataCreator.birthday = birthday;
	}
	final int? authority = jsonConvert.convert<int>(json['authority']);
	if (authority != null) {
		artistDescTopicDataCreator.authority = authority;
	}
	final int? gender = jsonConvert.convert<int>(json['gender']);
	if (gender != null) {
		artistDescTopicDataCreator.gender = gender;
	}
	final int? accountStatus = jsonConvert.convert<int>(json['accountStatus']);
	if (accountStatus != null) {
		artistDescTopicDataCreator.accountStatus = accountStatus;
	}
	final int? province = jsonConvert.convert<int>(json['province']);
	if (province != null) {
		artistDescTopicDataCreator.province = province;
	}
	final int? city = jsonConvert.convert<int>(json['city']);
	if (city != null) {
		artistDescTopicDataCreator.city = city;
	}
	final int? authStatus = jsonConvert.convert<int>(json['authStatus']);
	if (authStatus != null) {
		artistDescTopicDataCreator.authStatus = authStatus;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		artistDescTopicDataCreator.description = description;
	}
	final String? detailDescription = jsonConvert.convert<String>(json['detailDescription']);
	if (detailDescription != null) {
		artistDescTopicDataCreator.detailDescription = detailDescription;
	}
	final bool? defaultAvatar = jsonConvert.convert<bool>(json['defaultAvatar']);
	if (defaultAvatar != null) {
		artistDescTopicDataCreator.defaultAvatar = defaultAvatar;
	}
	final dynamic expertTags = jsonConvert.convert<dynamic>(json['expertTags']);
	if (expertTags != null) {
		artistDescTopicDataCreator.expertTags = expertTags;
	}
	final dynamic experts = jsonConvert.convert<dynamic>(json['experts']);
	if (experts != null) {
		artistDescTopicDataCreator.experts = experts;
	}
	final int? djStatus = jsonConvert.convert<int>(json['djStatus']);
	if (djStatus != null) {
		artistDescTopicDataCreator.djStatus = djStatus;
	}
	final int? locationStatus = jsonConvert.convert<int>(json['locationStatus']);
	if (locationStatus != null) {
		artistDescTopicDataCreator.locationStatus = locationStatus;
	}
	final int? vipType = jsonConvert.convert<int>(json['vipType']);
	if (vipType != null) {
		artistDescTopicDataCreator.vipType = vipType;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		artistDescTopicDataCreator.followed = followed;
	}
	final bool? mutual = jsonConvert.convert<bool>(json['mutual']);
	if (mutual != null) {
		artistDescTopicDataCreator.mutual = mutual;
	}
	final bool? authenticated = jsonConvert.convert<bool>(json['authenticated']);
	if (authenticated != null) {
		artistDescTopicDataCreator.authenticated = authenticated;
	}
	final int? lastLoginTime = jsonConvert.convert<int>(json['lastLoginTime']);
	if (lastLoginTime != null) {
		artistDescTopicDataCreator.lastLoginTime = lastLoginTime;
	}
	final String? lastLoginIP = jsonConvert.convert<String>(json['lastLoginIP']);
	if (lastLoginIP != null) {
		artistDescTopicDataCreator.lastLoginIP = lastLoginIP;
	}
	final dynamic remarkName = jsonConvert.convert<dynamic>(json['remarkName']);
	if (remarkName != null) {
		artistDescTopicDataCreator.remarkName = remarkName;
	}
	final int? viptypeVersion = jsonConvert.convert<int>(json['viptypeVersion']);
	if (viptypeVersion != null) {
		artistDescTopicDataCreator.viptypeVersion = viptypeVersion;
	}
	final int? authenticationTypes = jsonConvert.convert<int>(json['authenticationTypes']);
	if (authenticationTypes != null) {
		artistDescTopicDataCreator.authenticationTypes = authenticationTypes;
	}
	final dynamic avatarDetail = jsonConvert.convert<dynamic>(json['avatarDetail']);
	if (avatarDetail != null) {
		artistDescTopicDataCreator.avatarDetail = avatarDetail;
	}
	final bool? anchor = jsonConvert.convert<bool>(json['anchor']);
	if (anchor != null) {
		artistDescTopicDataCreator.anchor = anchor;
	}
	return artistDescTopicDataCreator;
}

Map<String, dynamic> $ArtistDescTopicDataCreatorToJson(ArtistDescTopicDataCreator entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['userId'] = entity.userId;
	data['userType'] = entity.userType;
	data['nickname'] = entity.nickname;
	data['avatarImgId'] = entity.avatarImgId;
	data['avatarUrl'] = entity.avatarUrl;
	data['backgroundImgId'] = entity.backgroundImgId;
	data['backgroundUrl'] = entity.backgroundUrl;
	data['signature'] = entity.signature;
	data['createTime'] = entity.createTime;
	data['userName'] = entity.userName;
	data['accountType'] = entity.accountType;
	data['shortUserName'] = entity.shortUserName;
	data['birthday'] = entity.birthday;
	data['authority'] = entity.authority;
	data['gender'] = entity.gender;
	data['accountStatus'] = entity.accountStatus;
	data['province'] = entity.province;
	data['city'] = entity.city;
	data['authStatus'] = entity.authStatus;
	data['description'] = entity.description;
	data['detailDescription'] = entity.detailDescription;
	data['defaultAvatar'] = entity.defaultAvatar;
	data['expertTags'] = entity.expertTags;
	data['experts'] = entity.experts;
	data['djStatus'] = entity.djStatus;
	data['locationStatus'] = entity.locationStatus;
	data['vipType'] = entity.vipType;
	data['followed'] = entity.followed;
	data['mutual'] = entity.mutual;
	data['authenticated'] = entity.authenticated;
	data['lastLoginTime'] = entity.lastLoginTime;
	data['lastLoginIP'] = entity.lastLoginIP;
	data['remarkName'] = entity.remarkName;
	data['viptypeVersion'] = entity.viptypeVersion;
	data['authenticationTypes'] = entity.authenticationTypes;
	data['avatarDetail'] = entity.avatarDetail;
	data['anchor'] = entity.anchor;
	return data;
}