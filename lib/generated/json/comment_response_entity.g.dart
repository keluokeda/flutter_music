import 'package:music/entity/comment_response_entity.dart';
import 'package:music/generated/json/base/json_convert_content.dart';

CommentResponseEntity $CommentResponseEntityFromJson(Map<String, dynamic> json) {
	final CommentResponseEntity commentResponseEntity = CommentResponseEntity();
	final bool? isMusician = jsonConvert.convert<bool>(json['isMusician']);
	if (isMusician != null) {
		commentResponseEntity.isMusician = isMusician;
	}
	final int? cnum = jsonConvert.convert<int>(json['cnum']);
	if (cnum != null) {
		commentResponseEntity.cnum = cnum;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		commentResponseEntity.userId = userId;
	}
	final bool? moreHot = jsonConvert.convert<bool>(json['moreHot']);
	if (moreHot != null) {
		commentResponseEntity.moreHot = moreHot;
	}
	final List<CommentResponseHotComments>? hotComments = jsonConvert.convertListNotNull<CommentResponseHotComments>(json['hotComments']);
	if (hotComments != null) {
		commentResponseEntity.hotComments = hotComments;
	}
	final dynamic commentBanner = jsonConvert.convert<dynamic>(json['commentBanner']);
	if (commentBanner != null) {
		commentResponseEntity.commentBanner = commentBanner;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		commentResponseEntity.code = code;
	}
	final List<CommentResponseComments>? comments = jsonConvert.convertListNotNull<CommentResponseComments>(json['comments']);
	if (comments != null) {
		commentResponseEntity.comments = comments;
	}
	final int? total = jsonConvert.convert<int>(json['total']);
	if (total != null) {
		commentResponseEntity.total = total;
	}
	final bool? more = jsonConvert.convert<bool>(json['more']);
	if (more != null) {
		commentResponseEntity.more = more;
	}
	return commentResponseEntity;
}

Map<String, dynamic> $CommentResponseEntityToJson(CommentResponseEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['isMusician'] = entity.isMusician;
	data['cnum'] = entity.cnum;
	data['userId'] = entity.userId;
	data['moreHot'] = entity.moreHot;
	data['hotComments'] =  entity.hotComments?.map((v) => v.toJson()).toList();
	data['commentBanner'] = entity.commentBanner;
	data['code'] = entity.code;
	data['comments'] =  entity.comments?.map((v) => v.toJson()).toList();
	data['total'] = entity.total;
	data['more'] = entity.more;
	return data;
}

CommentResponseHotComments $CommentResponseHotCommentsFromJson(Map<String, dynamic> json) {
	final CommentResponseHotComments commentResponseHotComments = CommentResponseHotComments();
	final CommentResponseHotCommentsUser? user = jsonConvert.convert<CommentResponseHotCommentsUser>(json['user']);
	if (user != null) {
		commentResponseHotComments.user = user;
	}
	final List<dynamic>? beReplied = jsonConvert.convertListNotNull<dynamic>(json['beReplied']);
	if (beReplied != null) {
		commentResponseHotComments.beReplied = beReplied;
	}
	final dynamic pendantData = jsonConvert.convert<dynamic>(json['pendantData']);
	if (pendantData != null) {
		commentResponseHotComments.pendantData = pendantData;
	}
	final dynamic showFloorComment = jsonConvert.convert<dynamic>(json['showFloorComment']);
	if (showFloorComment != null) {
		commentResponseHotComments.showFloorComment = showFloorComment;
	}
	final int? status = jsonConvert.convert<int>(json['status']);
	if (status != null) {
		commentResponseHotComments.status = status;
	}
	final int? commentId = jsonConvert.convert<int>(json['commentId']);
	if (commentId != null) {
		commentResponseHotComments.commentId = commentId;
	}
	final String? content = jsonConvert.convert<String>(json['content']);
	if (content != null) {
		commentResponseHotComments.content = content;
	}
	final dynamic richContent = jsonConvert.convert<dynamic>(json['richContent']);
	if (richContent != null) {
		commentResponseHotComments.richContent = richContent;
	}
	final dynamic contentResource = jsonConvert.convert<dynamic>(json['contentResource']);
	if (contentResource != null) {
		commentResponseHotComments.contentResource = contentResource;
	}
	final int? time = jsonConvert.convert<int>(json['time']);
	if (time != null) {
		commentResponseHotComments.time = time;
	}
	final String? timeStr = jsonConvert.convert<String>(json['timeStr']);
	if (timeStr != null) {
		commentResponseHotComments.timeStr = timeStr;
	}
	final bool? needDisplayTime = jsonConvert.convert<bool>(json['needDisplayTime']);
	if (needDisplayTime != null) {
		commentResponseHotComments.needDisplayTime = needDisplayTime;
	}
	final int? likedCount = jsonConvert.convert<int>(json['likedCount']);
	if (likedCount != null) {
		commentResponseHotComments.likedCount = likedCount;
	}
	final dynamic expressionUrl = jsonConvert.convert<dynamic>(json['expressionUrl']);
	if (expressionUrl != null) {
		commentResponseHotComments.expressionUrl = expressionUrl;
	}
	final int? commentLocationType = jsonConvert.convert<int>(json['commentLocationType']);
	if (commentLocationType != null) {
		commentResponseHotComments.commentLocationType = commentLocationType;
	}
	final int? parentCommentId = jsonConvert.convert<int>(json['parentCommentId']);
	if (parentCommentId != null) {
		commentResponseHotComments.parentCommentId = parentCommentId;
	}
	final CommentResponseHotCommentsDecoration? decoration = jsonConvert.convert<CommentResponseHotCommentsDecoration>(json['decoration']);
	if (decoration != null) {
		commentResponseHotComments.decoration = decoration;
	}
	final dynamic repliedMark = jsonConvert.convert<dynamic>(json['repliedMark']);
	if (repliedMark != null) {
		commentResponseHotComments.repliedMark = repliedMark;
	}
	final dynamic grade = jsonConvert.convert<dynamic>(json['grade']);
	if (grade != null) {
		commentResponseHotComments.grade = grade;
	}
	final dynamic userBizLevels = jsonConvert.convert<dynamic>(json['userBizLevels']);
	if (userBizLevels != null) {
		commentResponseHotComments.userBizLevels = userBizLevels;
	}
	final CommentResponseHotCommentsIpLocation? ipLocation = jsonConvert.convert<CommentResponseHotCommentsIpLocation>(json['ipLocation']);
	if (ipLocation != null) {
		commentResponseHotComments.ipLocation = ipLocation;
	}
	final bool? owner = jsonConvert.convert<bool>(json['owner']);
	if (owner != null) {
		commentResponseHotComments.owner = owner;
	}
	final bool? liked = jsonConvert.convert<bool>(json['liked']);
	if (liked != null) {
		commentResponseHotComments.liked = liked;
	}
	return commentResponseHotComments;
}

Map<String, dynamic> $CommentResponseHotCommentsToJson(CommentResponseHotComments entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['user'] = entity.user?.toJson();
	data['beReplied'] =  entity.beReplied;
	data['pendantData'] = entity.pendantData;
	data['showFloorComment'] = entity.showFloorComment;
	data['status'] = entity.status;
	data['commentId'] = entity.commentId;
	data['content'] = entity.content;
	data['richContent'] = entity.richContent;
	data['contentResource'] = entity.contentResource;
	data['time'] = entity.time;
	data['timeStr'] = entity.timeStr;
	data['needDisplayTime'] = entity.needDisplayTime;
	data['likedCount'] = entity.likedCount;
	data['expressionUrl'] = entity.expressionUrl;
	data['commentLocationType'] = entity.commentLocationType;
	data['parentCommentId'] = entity.parentCommentId;
	data['decoration'] = entity.decoration?.toJson();
	data['repliedMark'] = entity.repliedMark;
	data['grade'] = entity.grade;
	data['userBizLevels'] = entity.userBizLevels;
	data['ipLocation'] = entity.ipLocation?.toJson();
	data['owner'] = entity.owner;
	data['liked'] = entity.liked;
	return data;
}

CommentResponseHotCommentsUser $CommentResponseHotCommentsUserFromJson(Map<String, dynamic> json) {
	final CommentResponseHotCommentsUser commentResponseHotCommentsUser = CommentResponseHotCommentsUser();
	final dynamic locationInfo = jsonConvert.convert<dynamic>(json['locationInfo']);
	if (locationInfo != null) {
		commentResponseHotCommentsUser.locationInfo = locationInfo;
	}
	final dynamic liveInfo = jsonConvert.convert<dynamic>(json['liveInfo']);
	if (liveInfo != null) {
		commentResponseHotCommentsUser.liveInfo = liveInfo;
	}
	final int? anonym = jsonConvert.convert<int>(json['anonym']);
	if (anonym != null) {
		commentResponseHotCommentsUser.anonym = anonym;
	}
	final dynamic commonIdentity = jsonConvert.convert<dynamic>(json['commonIdentity']);
	if (commonIdentity != null) {
		commentResponseHotCommentsUser.commonIdentity = commonIdentity;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		commentResponseHotCommentsUser.userId = userId;
	}
	final String? avatarUrl = jsonConvert.convert<String>(json['avatarUrl']);
	if (avatarUrl != null) {
		commentResponseHotCommentsUser.avatarUrl = avatarUrl;
	}
	final dynamic avatarDetail = jsonConvert.convert<dynamic>(json['avatarDetail']);
	if (avatarDetail != null) {
		commentResponseHotCommentsUser.avatarDetail = avatarDetail;
	}
	final int? userType = jsonConvert.convert<int>(json['userType']);
	if (userType != null) {
		commentResponseHotCommentsUser.userType = userType;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		commentResponseHotCommentsUser.followed = followed;
	}
	final bool? mutual = jsonConvert.convert<bool>(json['mutual']);
	if (mutual != null) {
		commentResponseHotCommentsUser.mutual = mutual;
	}
	final dynamic remarkName = jsonConvert.convert<dynamic>(json['remarkName']);
	if (remarkName != null) {
		commentResponseHotCommentsUser.remarkName = remarkName;
	}
	final dynamic socialUserId = jsonConvert.convert<dynamic>(json['socialUserId']);
	if (socialUserId != null) {
		commentResponseHotCommentsUser.socialUserId = socialUserId;
	}
	final CommentResponseHotCommentsUserVipRights? vipRights = jsonConvert.convert<CommentResponseHotCommentsUserVipRights>(json['vipRights']);
	if (vipRights != null) {
		commentResponseHotCommentsUser.vipRights = vipRights;
	}
	final String? nickname = jsonConvert.convert<String>(json['nickname']);
	if (nickname != null) {
		commentResponseHotCommentsUser.nickname = nickname;
	}
	final int? authStatus = jsonConvert.convert<int>(json['authStatus']);
	if (authStatus != null) {
		commentResponseHotCommentsUser.authStatus = authStatus;
	}
	final dynamic expertTags = jsonConvert.convert<dynamic>(json['expertTags']);
	if (expertTags != null) {
		commentResponseHotCommentsUser.expertTags = expertTags;
	}
	final dynamic experts = jsonConvert.convert<dynamic>(json['experts']);
	if (experts != null) {
		commentResponseHotCommentsUser.experts = experts;
	}
	final int? vipType = jsonConvert.convert<int>(json['vipType']);
	if (vipType != null) {
		commentResponseHotCommentsUser.vipType = vipType;
	}
	final dynamic target = jsonConvert.convert<dynamic>(json['target']);
	if (target != null) {
		commentResponseHotCommentsUser.target = target;
	}
	return commentResponseHotCommentsUser;
}

Map<String, dynamic> $CommentResponseHotCommentsUserToJson(CommentResponseHotCommentsUser entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['locationInfo'] = entity.locationInfo;
	data['liveInfo'] = entity.liveInfo;
	data['anonym'] = entity.anonym;
	data['commonIdentity'] = entity.commonIdentity;
	data['userId'] = entity.userId;
	data['avatarUrl'] = entity.avatarUrl;
	data['avatarDetail'] = entity.avatarDetail;
	data['userType'] = entity.userType;
	data['followed'] = entity.followed;
	data['mutual'] = entity.mutual;
	data['remarkName'] = entity.remarkName;
	data['socialUserId'] = entity.socialUserId;
	data['vipRights'] = entity.vipRights?.toJson();
	data['nickname'] = entity.nickname;
	data['authStatus'] = entity.authStatus;
	data['expertTags'] = entity.expertTags;
	data['experts'] = entity.experts;
	data['vipType'] = entity.vipType;
	data['target'] = entity.target;
	return data;
}

CommentResponseHotCommentsUserVipRights $CommentResponseHotCommentsUserVipRightsFromJson(Map<String, dynamic> json) {
	final CommentResponseHotCommentsUserVipRights commentResponseHotCommentsUserVipRights = CommentResponseHotCommentsUserVipRights();
	final dynamic associator = jsonConvert.convert<dynamic>(json['associator']);
	if (associator != null) {
		commentResponseHotCommentsUserVipRights.associator = associator;
	}
	final dynamic musicPackage = jsonConvert.convert<dynamic>(json['musicPackage']);
	if (musicPackage != null) {
		commentResponseHotCommentsUserVipRights.musicPackage = musicPackage;
	}
	final dynamic redplus = jsonConvert.convert<dynamic>(json['redplus']);
	if (redplus != null) {
		commentResponseHotCommentsUserVipRights.redplus = redplus;
	}
	final int? redVipAnnualCount = jsonConvert.convert<int>(json['redVipAnnualCount']);
	if (redVipAnnualCount != null) {
		commentResponseHotCommentsUserVipRights.redVipAnnualCount = redVipAnnualCount;
	}
	final int? redVipLevel = jsonConvert.convert<int>(json['redVipLevel']);
	if (redVipLevel != null) {
		commentResponseHotCommentsUserVipRights.redVipLevel = redVipLevel;
	}
	return commentResponseHotCommentsUserVipRights;
}

Map<String, dynamic> $CommentResponseHotCommentsUserVipRightsToJson(CommentResponseHotCommentsUserVipRights entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['associator'] = entity.associator;
	data['musicPackage'] = entity.musicPackage;
	data['redplus'] = entity.redplus;
	data['redVipAnnualCount'] = entity.redVipAnnualCount;
	data['redVipLevel'] = entity.redVipLevel;
	return data;
}

CommentResponseHotCommentsDecoration $CommentResponseHotCommentsDecorationFromJson(Map<String, dynamic> json) {
	final CommentResponseHotCommentsDecoration commentResponseHotCommentsDecoration = CommentResponseHotCommentsDecoration();
	final int? repliedByAuthorCount = jsonConvert.convert<int>(json['repliedByAuthorCount']);
	if (repliedByAuthorCount != null) {
		commentResponseHotCommentsDecoration.repliedByAuthorCount = repliedByAuthorCount;
	}
	return commentResponseHotCommentsDecoration;
}

Map<String, dynamic> $CommentResponseHotCommentsDecorationToJson(CommentResponseHotCommentsDecoration entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['repliedByAuthorCount'] = entity.repliedByAuthorCount;
	return data;
}

CommentResponseHotCommentsIpLocation $CommentResponseHotCommentsIpLocationFromJson(Map<String, dynamic> json) {
	final CommentResponseHotCommentsIpLocation commentResponseHotCommentsIpLocation = CommentResponseHotCommentsIpLocation();
	final dynamic ip = jsonConvert.convert<dynamic>(json['ip']);
	if (ip != null) {
		commentResponseHotCommentsIpLocation.ip = ip;
	}
	final String? location = jsonConvert.convert<String>(json['location']);
	if (location != null) {
		commentResponseHotCommentsIpLocation.location = location;
	}
	final dynamic userId = jsonConvert.convert<dynamic>(json['userId']);
	if (userId != null) {
		commentResponseHotCommentsIpLocation.userId = userId;
	}
	return commentResponseHotCommentsIpLocation;
}

Map<String, dynamic> $CommentResponseHotCommentsIpLocationToJson(CommentResponseHotCommentsIpLocation entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['ip'] = entity.ip;
	data['location'] = entity.location;
	data['userId'] = entity.userId;
	return data;
}

CommentResponseComments $CommentResponseCommentsFromJson(Map<String, dynamic> json) {
	final CommentResponseComments commentResponseComments = CommentResponseComments();
	final CommentResponseCommentsUser? user = jsonConvert.convert<CommentResponseCommentsUser>(json['user']);
	if (user != null) {
		commentResponseComments.user = user;
	}
	final List<dynamic>? beReplied = jsonConvert.convertListNotNull<dynamic>(json['beReplied']);
	if (beReplied != null) {
		commentResponseComments.beReplied = beReplied;
	}
	final CommentResponseCommentsPendantData? pendantData = jsonConvert.convert<CommentResponseCommentsPendantData>(json['pendantData']);
	if (pendantData != null) {
		commentResponseComments.pendantData = pendantData;
	}
	final dynamic showFloorComment = jsonConvert.convert<dynamic>(json['showFloorComment']);
	if (showFloorComment != null) {
		commentResponseComments.showFloorComment = showFloorComment;
	}
	final int? status = jsonConvert.convert<int>(json['status']);
	if (status != null) {
		commentResponseComments.status = status;
	}
	final int? commentId = jsonConvert.convert<int>(json['commentId']);
	if (commentId != null) {
		commentResponseComments.commentId = commentId;
	}
	final String? content = jsonConvert.convert<String>(json['content']);
	if (content != null) {
		commentResponseComments.content = content;
	}
	final dynamic richContent = jsonConvert.convert<dynamic>(json['richContent']);
	if (richContent != null) {
		commentResponseComments.richContent = richContent;
	}
	final dynamic contentResource = jsonConvert.convert<dynamic>(json['contentResource']);
	if (contentResource != null) {
		commentResponseComments.contentResource = contentResource;
	}
	final int? time = jsonConvert.convert<int>(json['time']);
	if (time != null) {
		commentResponseComments.time = time;
	}
	final String? timeStr = jsonConvert.convert<String>(json['timeStr']);
	if (timeStr != null) {
		commentResponseComments.timeStr = timeStr;
	}
	final bool? needDisplayTime = jsonConvert.convert<bool>(json['needDisplayTime']);
	if (needDisplayTime != null) {
		commentResponseComments.needDisplayTime = needDisplayTime;
	}
	final int? likedCount = jsonConvert.convert<int>(json['likedCount']);
	if (likedCount != null) {
		commentResponseComments.likedCount = likedCount;
	}
	final dynamic expressionUrl = jsonConvert.convert<dynamic>(json['expressionUrl']);
	if (expressionUrl != null) {
		commentResponseComments.expressionUrl = expressionUrl;
	}
	final int? commentLocationType = jsonConvert.convert<int>(json['commentLocationType']);
	if (commentLocationType != null) {
		commentResponseComments.commentLocationType = commentLocationType;
	}
	final int? parentCommentId = jsonConvert.convert<int>(json['parentCommentId']);
	if (parentCommentId != null) {
		commentResponseComments.parentCommentId = parentCommentId;
	}

	final dynamic repliedMark = jsonConvert.convert<dynamic>(json['repliedMark']);
	if (repliedMark != null) {
		commentResponseComments.repliedMark = repliedMark;
	}
	final dynamic grade = jsonConvert.convert<dynamic>(json['grade']);
	if (grade != null) {
		commentResponseComments.grade = grade;
	}
	final dynamic userBizLevels = jsonConvert.convert<dynamic>(json['userBizLevels']);
	if (userBizLevels != null) {
		commentResponseComments.userBizLevels = userBizLevels;
	}
	final CommentResponseCommentsIpLocation? ipLocation = jsonConvert.convert<CommentResponseCommentsIpLocation>(json['ipLocation']);
	if (ipLocation != null) {
		commentResponseComments.ipLocation = ipLocation;
	}
	final bool? owner = jsonConvert.convert<bool>(json['owner']);
	if (owner != null) {
		commentResponseComments.owner = owner;
	}
	final bool? liked = jsonConvert.convert<bool>(json['liked']);
	if (liked != null) {
		commentResponseComments.liked = liked;
	}
	return commentResponseComments;
}

Map<String, dynamic> $CommentResponseCommentsToJson(CommentResponseComments entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['user'] = entity.user?.toJson();
	data['beReplied'] =  entity.beReplied;
	data['pendantData'] = entity.pendantData?.toJson();
	data['showFloorComment'] = entity.showFloorComment;
	data['status'] = entity.status;
	data['commentId'] = entity.commentId;
	data['content'] = entity.content;
	data['richContent'] = entity.richContent;
	data['contentResource'] = entity.contentResource;
	data['time'] = entity.time;
	data['timeStr'] = entity.timeStr;
	data['needDisplayTime'] = entity.needDisplayTime;
	data['likedCount'] = entity.likedCount;
	data['expressionUrl'] = entity.expressionUrl;
	data['commentLocationType'] = entity.commentLocationType;
	data['parentCommentId'] = entity.parentCommentId;
	data['repliedMark'] = entity.repliedMark;
	data['grade'] = entity.grade;
	data['userBizLevels'] = entity.userBizLevels;
	data['ipLocation'] = entity.ipLocation?.toJson();
	data['owner'] = entity.owner;
	data['liked'] = entity.liked;
	return data;
}

CommentResponseCommentsUser $CommentResponseCommentsUserFromJson(Map<String, dynamic> json) {
	final CommentResponseCommentsUser commentResponseCommentsUser = CommentResponseCommentsUser();
	final dynamic locationInfo = jsonConvert.convert<dynamic>(json['locationInfo']);
	if (locationInfo != null) {
		commentResponseCommentsUser.locationInfo = locationInfo;
	}
	final dynamic liveInfo = jsonConvert.convert<dynamic>(json['liveInfo']);
	if (liveInfo != null) {
		commentResponseCommentsUser.liveInfo = liveInfo;
	}
	final int? anonym = jsonConvert.convert<int>(json['anonym']);
	if (anonym != null) {
		commentResponseCommentsUser.anonym = anonym;
	}
	final dynamic commonIdentity = jsonConvert.convert<dynamic>(json['commonIdentity']);
	if (commonIdentity != null) {
		commentResponseCommentsUser.commonIdentity = commonIdentity;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		commentResponseCommentsUser.userId = userId;
	}
	final String? avatarUrl = jsonConvert.convert<String>(json['avatarUrl']);
	if (avatarUrl != null) {
		commentResponseCommentsUser.avatarUrl = avatarUrl;
	}
	final dynamic avatarDetail = jsonConvert.convert<dynamic>(json['avatarDetail']);
	if (avatarDetail != null) {
		commentResponseCommentsUser.avatarDetail = avatarDetail;
	}
	final int? userType = jsonConvert.convert<int>(json['userType']);
	if (userType != null) {
		commentResponseCommentsUser.userType = userType;
	}
	final bool? followed = jsonConvert.convert<bool>(json['followed']);
	if (followed != null) {
		commentResponseCommentsUser.followed = followed;
	}
	final bool? mutual = jsonConvert.convert<bool>(json['mutual']);
	if (mutual != null) {
		commentResponseCommentsUser.mutual = mutual;
	}
	final dynamic remarkName = jsonConvert.convert<dynamic>(json['remarkName']);
	if (remarkName != null) {
		commentResponseCommentsUser.remarkName = remarkName;
	}
	final dynamic socialUserId = jsonConvert.convert<dynamic>(json['socialUserId']);
	if (socialUserId != null) {
		commentResponseCommentsUser.socialUserId = socialUserId;
	}
	final CommentResponseCommentsUserVipRights? vipRights = jsonConvert.convert<CommentResponseCommentsUserVipRights>(json['vipRights']);
	if (vipRights != null) {
		commentResponseCommentsUser.vipRights = vipRights;
	}
	final String? nickname = jsonConvert.convert<String>(json['nickname']);
	if (nickname != null) {
		commentResponseCommentsUser.nickname = nickname;
	}
	final int? authStatus = jsonConvert.convert<int>(json['authStatus']);
	if (authStatus != null) {
		commentResponseCommentsUser.authStatus = authStatus;
	}
	final dynamic expertTags = jsonConvert.convert<dynamic>(json['expertTags']);
	if (expertTags != null) {
		commentResponseCommentsUser.expertTags = expertTags;
	}
	final dynamic experts = jsonConvert.convert<dynamic>(json['experts']);
	if (experts != null) {
		commentResponseCommentsUser.experts = experts;
	}
	final int? vipType = jsonConvert.convert<int>(json['vipType']);
	if (vipType != null) {
		commentResponseCommentsUser.vipType = vipType;
	}
	final dynamic target = jsonConvert.convert<dynamic>(json['target']);
	if (target != null) {
		commentResponseCommentsUser.target = target;
	}
	return commentResponseCommentsUser;
}

Map<String, dynamic> $CommentResponseCommentsUserToJson(CommentResponseCommentsUser entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['locationInfo'] = entity.locationInfo;
	data['liveInfo'] = entity.liveInfo;
	data['anonym'] = entity.anonym;
	data['commonIdentity'] = entity.commonIdentity;
	data['userId'] = entity.userId;
	data['avatarUrl'] = entity.avatarUrl;
	data['avatarDetail'] = entity.avatarDetail;
	data['userType'] = entity.userType;
	data['followed'] = entity.followed;
	data['mutual'] = entity.mutual;
	data['remarkName'] = entity.remarkName;
	data['socialUserId'] = entity.socialUserId;
	data['vipRights'] = entity.vipRights?.toJson();
	data['nickname'] = entity.nickname;
	data['authStatus'] = entity.authStatus;
	data['expertTags'] = entity.expertTags;
	data['experts'] = entity.experts;
	data['vipType'] = entity.vipType;
	data['target'] = entity.target;
	return data;
}

CommentResponseCommentsUserVipRights $CommentResponseCommentsUserVipRightsFromJson(Map<String, dynamic> json) {
	final CommentResponseCommentsUserVipRights commentResponseCommentsUserVipRights = CommentResponseCommentsUserVipRights();
	final CommentResponseCommentsUserVipRightsAssociator? associator = jsonConvert.convert<CommentResponseCommentsUserVipRightsAssociator>(json['associator']);
	if (associator != null) {
		commentResponseCommentsUserVipRights.associator = associator;
	}
	final CommentResponseCommentsUserVipRightsMusicPackage? musicPackage = jsonConvert.convert<CommentResponseCommentsUserVipRightsMusicPackage>(json['musicPackage']);
	if (musicPackage != null) {
		commentResponseCommentsUserVipRights.musicPackage = musicPackage;
	}
	final dynamic redplus = jsonConvert.convert<dynamic>(json['redplus']);
	if (redplus != null) {
		commentResponseCommentsUserVipRights.redplus = redplus;
	}
	final int? redVipAnnualCount = jsonConvert.convert<int>(json['redVipAnnualCount']);
	if (redVipAnnualCount != null) {
		commentResponseCommentsUserVipRights.redVipAnnualCount = redVipAnnualCount;
	}
	final int? redVipLevel = jsonConvert.convert<int>(json['redVipLevel']);
	if (redVipLevel != null) {
		commentResponseCommentsUserVipRights.redVipLevel = redVipLevel;
	}
	return commentResponseCommentsUserVipRights;
}

Map<String, dynamic> $CommentResponseCommentsUserVipRightsToJson(CommentResponseCommentsUserVipRights entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['associator'] = entity.associator?.toJson();
	data['musicPackage'] = entity.musicPackage?.toJson();
	data['redplus'] = entity.redplus;
	data['redVipAnnualCount'] = entity.redVipAnnualCount;
	data['redVipLevel'] = entity.redVipLevel;
	return data;
}

CommentResponseCommentsUserVipRightsAssociator $CommentResponseCommentsUserVipRightsAssociatorFromJson(Map<String, dynamic> json) {
	final CommentResponseCommentsUserVipRightsAssociator commentResponseCommentsUserVipRightsAssociator = CommentResponseCommentsUserVipRightsAssociator();
	final int? vipCode = jsonConvert.convert<int>(json['vipCode']);
	if (vipCode != null) {
		commentResponseCommentsUserVipRightsAssociator.vipCode = vipCode;
	}
	final bool? rights = jsonConvert.convert<bool>(json['rights']);
	if (rights != null) {
		commentResponseCommentsUserVipRightsAssociator.rights = rights;
	}
	final String? iconUrl = jsonConvert.convert<String>(json['iconUrl']);
	if (iconUrl != null) {
		commentResponseCommentsUserVipRightsAssociator.iconUrl = iconUrl;
	}
	return commentResponseCommentsUserVipRightsAssociator;
}

Map<String, dynamic> $CommentResponseCommentsUserVipRightsAssociatorToJson(CommentResponseCommentsUserVipRightsAssociator entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['vipCode'] = entity.vipCode;
	data['rights'] = entity.rights;
	data['iconUrl'] = entity.iconUrl;
	return data;
}

CommentResponseCommentsUserVipRightsMusicPackage $CommentResponseCommentsUserVipRightsMusicPackageFromJson(Map<String, dynamic> json) {
	final CommentResponseCommentsUserVipRightsMusicPackage commentResponseCommentsUserVipRightsMusicPackage = CommentResponseCommentsUserVipRightsMusicPackage();
	final int? vipCode = jsonConvert.convert<int>(json['vipCode']);
	if (vipCode != null) {
		commentResponseCommentsUserVipRightsMusicPackage.vipCode = vipCode;
	}
	final bool? rights = jsonConvert.convert<bool>(json['rights']);
	if (rights != null) {
		commentResponseCommentsUserVipRightsMusicPackage.rights = rights;
	}
	final String? iconUrl = jsonConvert.convert<String>(json['iconUrl']);
	if (iconUrl != null) {
		commentResponseCommentsUserVipRightsMusicPackage.iconUrl = iconUrl;
	}
	return commentResponseCommentsUserVipRightsMusicPackage;
}

Map<String, dynamic> $CommentResponseCommentsUserVipRightsMusicPackageToJson(CommentResponseCommentsUserVipRightsMusicPackage entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['vipCode'] = entity.vipCode;
	data['rights'] = entity.rights;
	data['iconUrl'] = entity.iconUrl;
	return data;
}

CommentResponseCommentsPendantData $CommentResponseCommentsPendantDataFromJson(Map<String, dynamic> json) {
	final CommentResponseCommentsPendantData commentResponseCommentsPendantData = CommentResponseCommentsPendantData();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		commentResponseCommentsPendantData.id = id;
	}
	final String? imageUrl = jsonConvert.convert<String>(json['imageUrl']);
	if (imageUrl != null) {
		commentResponseCommentsPendantData.imageUrl = imageUrl;
	}
	return commentResponseCommentsPendantData;
}

Map<String, dynamic> $CommentResponseCommentsPendantDataToJson(CommentResponseCommentsPendantData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['imageUrl'] = entity.imageUrl;
	return data;
}



CommentResponseCommentsIpLocation $CommentResponseCommentsIpLocationFromJson(Map<String, dynamic> json) {
	final CommentResponseCommentsIpLocation commentResponseCommentsIpLocation = CommentResponseCommentsIpLocation();
	final dynamic ip = jsonConvert.convert<dynamic>(json['ip']);
	if (ip != null) {
		commentResponseCommentsIpLocation.ip = ip;
	}
	final String? location = jsonConvert.convert<String>(json['location']);
	if (location != null) {
		commentResponseCommentsIpLocation.location = location;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		commentResponseCommentsIpLocation.userId = userId;
	}
	return commentResponseCommentsIpLocation;
}

Map<String, dynamic> $CommentResponseCommentsIpLocationToJson(CommentResponseCommentsIpLocation entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['ip'] = entity.ip;
	data['location'] = entity.location;
	data['userId'] = entity.userId;
	return data;
}