import 'package:music/entity/comment.dart';
import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/comment_response_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class CommentResponseEntity {
  bool? isMusician;
  int? cnum;
  int? userId;
  bool? moreHot;
  List<CommentResponseHotComments>? hotComments;
  dynamic commentBanner;
  int? code;
  List<CommentResponseComments>? comments;
  int? total;
  bool? more;

  CommentResponseEntity();

  factory CommentResponseEntity.fromJson(Map<String, dynamic> json) =>
      $CommentResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => $CommentResponseEntityToJson(this);

  CommentResponseEntity copyWith(
      {bool? isMusician,
      int? cnum,
      int? userId,
      bool? moreHot,
      List<CommentResponseHotComments>? hotComments,
      dynamic commentBanner,
      int? code,
      List<CommentResponseComments>? comments,
      int? total,
      bool? more}) {
    return CommentResponseEntity()
      ..isMusician = isMusician ?? this.isMusician
      ..cnum = cnum ?? this.cnum
      ..userId = userId ?? this.userId
      ..moreHot = moreHot ?? this.moreHot
      ..hotComments = hotComments ?? this.hotComments
      ..commentBanner = commentBanner ?? this.commentBanner
      ..code = code ?? this.code
      ..comments = comments ?? this.comments
      ..total = total ?? this.total
      ..more = more ?? this.more;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CommentResponseHotComments {
  CommentResponseHotCommentsUser? user;
  List<dynamic>? beReplied;
  dynamic pendantData;
  dynamic showFloorComment;
  int? status;
  int? commentId;
  String? content;
  dynamic richContent;
  dynamic contentResource;
  int? time;
  String? timeStr;
  bool? needDisplayTime;
  int? likedCount;
  dynamic expressionUrl;
  int? commentLocationType;
  int? parentCommentId;
  CommentResponseHotCommentsDecoration? decoration;
  dynamic repliedMark;
  dynamic grade;
  dynamic userBizLevels;
  CommentResponseHotCommentsIpLocation? ipLocation;
  bool? owner;
  bool? liked;

  CommentResponseHotComments();

  factory CommentResponseHotComments.fromJson(Map<String, dynamic> json) =>
      $CommentResponseHotCommentsFromJson(json);

  Map<String, dynamic> toJson() => $CommentResponseHotCommentsToJson(this);

  CommentResponseHotComments copyWith(
      {CommentResponseHotCommentsUser? user,
      List<dynamic>? beReplied,
      dynamic pendantData,
      dynamic showFloorComment,
      int? status,
      int? commentId,
      String? content,
      dynamic richContent,
      dynamic contentResource,
      int? time,
      String? timeStr,
      bool? needDisplayTime,
      int? likedCount,
      dynamic expressionUrl,
      int? commentLocationType,
      int? parentCommentId,
      CommentResponseHotCommentsDecoration? decoration,
      dynamic repliedMark,
      dynamic grade,
      dynamic userBizLevels,
      CommentResponseHotCommentsIpLocation? ipLocation,
      bool? owner,
      bool? liked}) {
    return CommentResponseHotComments()
      ..user = user ?? this.user
      ..beReplied = beReplied ?? this.beReplied
      ..pendantData = pendantData ?? this.pendantData
      ..showFloorComment = showFloorComment ?? this.showFloorComment
      ..status = status ?? this.status
      ..commentId = commentId ?? this.commentId
      ..content = content ?? this.content
      ..richContent = richContent ?? this.richContent
      ..contentResource = contentResource ?? this.contentResource
      ..time = time ?? this.time
      ..timeStr = timeStr ?? this.timeStr
      ..needDisplayTime = needDisplayTime ?? this.needDisplayTime
      ..likedCount = likedCount ?? this.likedCount
      ..expressionUrl = expressionUrl ?? this.expressionUrl
      ..commentLocationType = commentLocationType ?? this.commentLocationType
      ..parentCommentId = parentCommentId ?? this.parentCommentId
      ..decoration = decoration ?? this.decoration
      ..repliedMark = repliedMark ?? this.repliedMark
      ..grade = grade ?? this.grade
      ..userBizLevels = userBizLevels ?? this.userBizLevels
      ..ipLocation = ipLocation ?? this.ipLocation
      ..owner = owner ?? this.owner
      ..liked = liked ?? this.liked;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CommentResponseHotCommentsUser {
  dynamic locationInfo;
  dynamic liveInfo;
  int? anonym;
  dynamic commonIdentity;
  int? userId;
  String? avatarUrl;
  dynamic avatarDetail;
  int? userType;
  bool? followed;
  bool? mutual;
  dynamic remarkName;
  dynamic socialUserId;
  CommentResponseHotCommentsUserVipRights? vipRights;
  String? nickname;
  int? authStatus;
  dynamic expertTags;
  dynamic experts;
  int? vipType;
  dynamic target;

  CommentResponseHotCommentsUser();

  factory CommentResponseHotCommentsUser.fromJson(Map<String, dynamic> json) =>
      $CommentResponseHotCommentsUserFromJson(json);

  Map<String, dynamic> toJson() => $CommentResponseHotCommentsUserToJson(this);

  CommentResponseHotCommentsUser copyWith(
      {dynamic locationInfo,
      dynamic liveInfo,
      int? anonym,
      dynamic commonIdentity,
      int? userId,
      String? avatarUrl,
      dynamic avatarDetail,
      int? userType,
      bool? followed,
      bool? mutual,
      dynamic remarkName,
      dynamic socialUserId,
      CommentResponseHotCommentsUserVipRights? vipRights,
      String? nickname,
      int? authStatus,
      dynamic expertTags,
      dynamic experts,
      int? vipType,
      dynamic target}) {
    return CommentResponseHotCommentsUser()
      ..locationInfo = locationInfo ?? this.locationInfo
      ..liveInfo = liveInfo ?? this.liveInfo
      ..anonym = anonym ?? this.anonym
      ..commonIdentity = commonIdentity ?? this.commonIdentity
      ..userId = userId ?? this.userId
      ..avatarUrl = avatarUrl ?? this.avatarUrl
      ..avatarDetail = avatarDetail ?? this.avatarDetail
      ..userType = userType ?? this.userType
      ..followed = followed ?? this.followed
      ..mutual = mutual ?? this.mutual
      ..remarkName = remarkName ?? this.remarkName
      ..socialUserId = socialUserId ?? this.socialUserId
      ..vipRights = vipRights ?? this.vipRights
      ..nickname = nickname ?? this.nickname
      ..authStatus = authStatus ?? this.authStatus
      ..expertTags = expertTags ?? this.expertTags
      ..experts = experts ?? this.experts
      ..vipType = vipType ?? this.vipType
      ..target = target ?? this.target;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CommentResponseHotCommentsUserVipRights {
  dynamic associator;
  dynamic musicPackage;
  dynamic redplus;
  int? redVipAnnualCount;
  int? redVipLevel;

  CommentResponseHotCommentsUserVipRights();

  factory CommentResponseHotCommentsUserVipRights.fromJson(
          Map<String, dynamic> json) =>
      $CommentResponseHotCommentsUserVipRightsFromJson(json);

  Map<String, dynamic> toJson() =>
      $CommentResponseHotCommentsUserVipRightsToJson(this);

  CommentResponseHotCommentsUserVipRights copyWith(
      {dynamic associator,
      dynamic musicPackage,
      dynamic redplus,
      int? redVipAnnualCount,
      int? redVipLevel}) {
    return CommentResponseHotCommentsUserVipRights()
      ..associator = associator ?? this.associator
      ..musicPackage = musicPackage ?? this.musicPackage
      ..redplus = redplus ?? this.redplus
      ..redVipAnnualCount = redVipAnnualCount ?? this.redVipAnnualCount
      ..redVipLevel = redVipLevel ?? this.redVipLevel;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CommentResponseHotCommentsDecoration {
  int? repliedByAuthorCount;

  CommentResponseHotCommentsDecoration();

  factory CommentResponseHotCommentsDecoration.fromJson(
          Map<String, dynamic> json) =>
      $CommentResponseHotCommentsDecorationFromJson(json);

  Map<String, dynamic> toJson() =>
      $CommentResponseHotCommentsDecorationToJson(this);

  CommentResponseHotCommentsDecoration copyWith({int? repliedByAuthorCount}) {
    return CommentResponseHotCommentsDecoration()
      ..repliedByAuthorCount =
          repliedByAuthorCount ?? this.repliedByAuthorCount;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CommentResponseHotCommentsIpLocation {
  dynamic ip;
  String? location;
  dynamic userId;

  CommentResponseHotCommentsIpLocation();

  factory CommentResponseHotCommentsIpLocation.fromJson(
          Map<String, dynamic> json) =>
      $CommentResponseHotCommentsIpLocationFromJson(json);

  Map<String, dynamic> toJson() =>
      $CommentResponseHotCommentsIpLocationToJson(this);

  CommentResponseHotCommentsIpLocation copyWith(
      {dynamic ip, String? location, dynamic userId}) {
    return CommentResponseHotCommentsIpLocation()
      ..ip = ip ?? this.ip
      ..location = location ?? this.location
      ..userId = userId ?? this.userId;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CommentResponseComments {
  CommentResponseCommentsUser? user;
  List<dynamic>? beReplied;
  CommentResponseCommentsPendantData? pendantData;
  dynamic showFloorComment;
  int? status;
  int? commentId;
  String? content;
  dynamic richContent;
  dynamic contentResource;
  int? time;
  String? timeStr;
  bool? needDisplayTime;
  int? likedCount;
  dynamic expressionUrl;
  int? commentLocationType;
  int? parentCommentId;
  dynamic repliedMark;
  dynamic grade;
  dynamic userBizLevels;
  CommentResponseCommentsIpLocation? ipLocation;
  bool? owner;
  bool? liked;

  CommentResponseComments();

  factory CommentResponseComments.fromJson(Map<String, dynamic> json) =>
      $CommentResponseCommentsFromJson(json);

  Map<String, dynamic> toJson() => $CommentResponseCommentsToJson(this);

  CommentResponseComments copyWith(
      {CommentResponseCommentsUser? user,
      List<dynamic>? beReplied,
      CommentResponseCommentsPendantData? pendantData,
      dynamic showFloorComment,
      int? status,
      int? commentId,
      String? content,
      dynamic richContent,
      dynamic contentResource,
      int? time,
      String? timeStr,
      bool? needDisplayTime,
      int? likedCount,
      dynamic expressionUrl,
      int? commentLocationType,
      int? parentCommentId,
      dynamic repliedMark,
      dynamic grade,
      dynamic userBizLevels,
      CommentResponseCommentsIpLocation? ipLocation,
      bool? owner,
      bool? liked}) {
    return CommentResponseComments()
      ..user = user ?? this.user
      ..beReplied = beReplied ?? this.beReplied
      ..pendantData = pendantData ?? this.pendantData
      ..showFloorComment = showFloorComment ?? this.showFloorComment
      ..status = status ?? this.status
      ..commentId = commentId ?? this.commentId
      ..content = content ?? this.content
      ..richContent = richContent ?? this.richContent
      ..contentResource = contentResource ?? this.contentResource
      ..time = time ?? this.time
      ..timeStr = timeStr ?? this.timeStr
      ..needDisplayTime = needDisplayTime ?? this.needDisplayTime
      ..likedCount = likedCount ?? this.likedCount
      ..expressionUrl = expressionUrl ?? this.expressionUrl
      ..commentLocationType = commentLocationType ?? this.commentLocationType
      ..parentCommentId = parentCommentId ?? this.parentCommentId
      ..repliedMark = repliedMark ?? this.repliedMark
      ..grade = grade ?? this.grade
      ..userBizLevels = userBizLevels ?? this.userBizLevels
      ..ipLocation = ipLocation ?? this.ipLocation
      ..owner = owner ?? this.owner
      ..liked = liked ?? this.liked;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }

  Comment convert() {
    return Comment(
        commentId ?? 0,
        user?.userId ?? 0,
        user?.avatarUrl ?? '',
        user?.nickname ?? '',
        content ?? '',
        time ?? 0,
        timeStr ?? '',
        likedCount ?? 0,
        liked ?? false,
        owner ?? false,
        ipLocation?.location ?? '');
  }
}

@JsonSerializable()
class CommentResponseCommentsUser {
  dynamic locationInfo;
  dynamic liveInfo;
  int? anonym;
  dynamic commonIdentity;
  int? userId;
  String? avatarUrl;
  dynamic avatarDetail;
  int? userType;
  bool? followed;
  bool? mutual;
  dynamic remarkName;
  dynamic socialUserId;
  CommentResponseCommentsUserVipRights? vipRights;
  String? nickname;
  int? authStatus;
  dynamic expertTags;
  dynamic experts;
  int? vipType;
  dynamic target;

  CommentResponseCommentsUser();

  factory CommentResponseCommentsUser.fromJson(Map<String, dynamic> json) =>
      $CommentResponseCommentsUserFromJson(json);

  Map<String, dynamic> toJson() => $CommentResponseCommentsUserToJson(this);

  CommentResponseCommentsUser copyWith(
      {dynamic locationInfo,
      dynamic liveInfo,
      int? anonym,
      dynamic commonIdentity,
      int? userId,
      String? avatarUrl,
      dynamic avatarDetail,
      int? userType,
      bool? followed,
      bool? mutual,
      dynamic remarkName,
      dynamic socialUserId,
      CommentResponseCommentsUserVipRights? vipRights,
      String? nickname,
      int? authStatus,
      dynamic expertTags,
      dynamic experts,
      int? vipType,
      dynamic target}) {
    return CommentResponseCommentsUser()
      ..locationInfo = locationInfo ?? this.locationInfo
      ..liveInfo = liveInfo ?? this.liveInfo
      ..anonym = anonym ?? this.anonym
      ..commonIdentity = commonIdentity ?? this.commonIdentity
      ..userId = userId ?? this.userId
      ..avatarUrl = avatarUrl ?? this.avatarUrl
      ..avatarDetail = avatarDetail ?? this.avatarDetail
      ..userType = userType ?? this.userType
      ..followed = followed ?? this.followed
      ..mutual = mutual ?? this.mutual
      ..remarkName = remarkName ?? this.remarkName
      ..socialUserId = socialUserId ?? this.socialUserId
      ..vipRights = vipRights ?? this.vipRights
      ..nickname = nickname ?? this.nickname
      ..authStatus = authStatus ?? this.authStatus
      ..expertTags = expertTags ?? this.expertTags
      ..experts = experts ?? this.experts
      ..vipType = vipType ?? this.vipType
      ..target = target ?? this.target;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CommentResponseCommentsUserVipRights {
  CommentResponseCommentsUserVipRightsAssociator? associator;
  CommentResponseCommentsUserVipRightsMusicPackage? musicPackage;
  dynamic redplus;
  int? redVipAnnualCount;
  int? redVipLevel;

  CommentResponseCommentsUserVipRights();

  factory CommentResponseCommentsUserVipRights.fromJson(
          Map<String, dynamic> json) =>
      $CommentResponseCommentsUserVipRightsFromJson(json);

  Map<String, dynamic> toJson() =>
      $CommentResponseCommentsUserVipRightsToJson(this);

  CommentResponseCommentsUserVipRights copyWith(
      {CommentResponseCommentsUserVipRightsAssociator? associator,
      CommentResponseCommentsUserVipRightsMusicPackage? musicPackage,
      dynamic redplus,
      int? redVipAnnualCount,
      int? redVipLevel}) {
    return CommentResponseCommentsUserVipRights()
      ..associator = associator ?? this.associator
      ..musicPackage = musicPackage ?? this.musicPackage
      ..redplus = redplus ?? this.redplus
      ..redVipAnnualCount = redVipAnnualCount ?? this.redVipAnnualCount
      ..redVipLevel = redVipLevel ?? this.redVipLevel;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CommentResponseCommentsUserVipRightsAssociator {
  int? vipCode;
  bool? rights;
  String? iconUrl;

  CommentResponseCommentsUserVipRightsAssociator();

  factory CommentResponseCommentsUserVipRightsAssociator.fromJson(
          Map<String, dynamic> json) =>
      $CommentResponseCommentsUserVipRightsAssociatorFromJson(json);

  Map<String, dynamic> toJson() =>
      $CommentResponseCommentsUserVipRightsAssociatorToJson(this);

  CommentResponseCommentsUserVipRightsAssociator copyWith(
      {int? vipCode, bool? rights, String? iconUrl}) {
    return CommentResponseCommentsUserVipRightsAssociator()
      ..vipCode = vipCode ?? this.vipCode
      ..rights = rights ?? this.rights
      ..iconUrl = iconUrl ?? this.iconUrl;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CommentResponseCommentsUserVipRightsMusicPackage {
  int? vipCode;
  bool? rights;
  String? iconUrl;

  CommentResponseCommentsUserVipRightsMusicPackage();

  factory CommentResponseCommentsUserVipRightsMusicPackage.fromJson(
          Map<String, dynamic> json) =>
      $CommentResponseCommentsUserVipRightsMusicPackageFromJson(json);

  Map<String, dynamic> toJson() =>
      $CommentResponseCommentsUserVipRightsMusicPackageToJson(this);

  CommentResponseCommentsUserVipRightsMusicPackage copyWith(
      {int? vipCode, bool? rights, String? iconUrl}) {
    return CommentResponseCommentsUserVipRightsMusicPackage()
      ..vipCode = vipCode ?? this.vipCode
      ..rights = rights ?? this.rights
      ..iconUrl = iconUrl ?? this.iconUrl;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CommentResponseCommentsPendantData {
  int? id;
  String? imageUrl;

  CommentResponseCommentsPendantData();

  factory CommentResponseCommentsPendantData.fromJson(
          Map<String, dynamic> json) =>
      $CommentResponseCommentsPendantDataFromJson(json);

  Map<String, dynamic> toJson() =>
      $CommentResponseCommentsPendantDataToJson(this);

  CommentResponseCommentsPendantData copyWith({int? id, String? imageUrl}) {
    return CommentResponseCommentsPendantData()
      ..id = id ?? this.id
      ..imageUrl = imageUrl ?? this.imageUrl;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CommentResponseCommentsIpLocation {
  dynamic ip;
  String? location;
  int? userId;

  CommentResponseCommentsIpLocation();

  factory CommentResponseCommentsIpLocation.fromJson(
          Map<String, dynamic> json) =>
      $CommentResponseCommentsIpLocationFromJson(json);

  Map<String, dynamic> toJson() =>
      $CommentResponseCommentsIpLocationToJson(this);

  CommentResponseCommentsIpLocation copyWith(
      {dynamic ip, String? location, int? userId}) {
    return CommentResponseCommentsIpLocation()
      ..ip = ip ?? this.ip
      ..location = location ?? this.location
      ..userId = userId ?? this.userId;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}
