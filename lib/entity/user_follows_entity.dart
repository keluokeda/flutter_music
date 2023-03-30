import 'package:music/entity/user_item.dart';
import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/user_follows_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class UserFollowsEntity {
  List<UserFollowsFollow>? follow;
  int? touchCount;
  bool? more;
  int? code;

  UserFollowsEntity();

  factory UserFollowsEntity.fromJson(Map<String, dynamic> json) =>
      $UserFollowsEntityFromJson(json);

  Map<String, dynamic> toJson() => $UserFollowsEntityToJson(this);

  UserFollowsEntity copyWith(
      {List<UserFollowsFollow>? follow,
      int? touchCount,
      bool? more,
      int? code}) {
    return UserFollowsEntity()
      ..follow = follow ?? this.follow
      ..touchCount = touchCount ?? this.touchCount
      ..more = more ?? this.more
      ..code = code ?? this.code;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserFollowsFollow {
  String? py;
  int? time;
  int? follows;
  int? followeds;
  bool? mutual;
  String? nickname;
  int? userType;
  int? vipType;
  bool? followed;
  int? userId;
  String? avatarUrl;
  int? authStatus;
  int? gender;
  int? accountStatus;
  String? signature;
  UserFollowsFollowVipRights? vipRights;
  bool? blacklist;
  int? eventCount;
  int? playlistCount;
  dynamic remarkName;
  UserFollowsFollowAvatarDetail? avatarDetail;
  dynamic expertTags;
  dynamic experts;

  UserFollowsFollow();

  factory UserFollowsFollow.fromJson(Map<String, dynamic> json) =>
      $UserFollowsFollowFromJson(json);

  Map<String, dynamic> toJson() => $UserFollowsFollowToJson(this);

  UserFollowsFollow copyWith(
      {String? py,
      int? time,
      int? follows,
      int? followeds,
      bool? mutual,
      String? nickname,
      int? userType,
      int? vipType,
      bool? followed,
      int? userId,
      String? avatarUrl,
      int? authStatus,
      int? gender,
      int? accountStatus,
      String? signature,
      UserFollowsFollowVipRights? vipRights,
      bool? blacklist,
      int? eventCount,
      int? playlistCount,
      dynamic remarkName,
      UserFollowsFollowAvatarDetail? avatarDetail,
      dynamic expertTags,
      dynamic experts}) {
    return UserFollowsFollow()
      ..py = py ?? this.py
      ..time = time ?? this.time
      ..follows = follows ?? this.follows
      ..followeds = followeds ?? this.followeds
      ..mutual = mutual ?? this.mutual
      ..nickname = nickname ?? this.nickname
      ..userType = userType ?? this.userType
      ..vipType = vipType ?? this.vipType
      ..followed = followed ?? this.followed
      ..userId = userId ?? this.userId
      ..avatarUrl = avatarUrl ?? this.avatarUrl
      ..authStatus = authStatus ?? this.authStatus
      ..gender = gender ?? this.gender
      ..accountStatus = accountStatus ?? this.accountStatus
      ..signature = signature ?? this.signature
      ..vipRights = vipRights ?? this.vipRights
      ..blacklist = blacklist ?? this.blacklist
      ..eventCount = eventCount ?? this.eventCount
      ..playlistCount = playlistCount ?? this.playlistCount
      ..remarkName = remarkName ?? this.remarkName
      ..avatarDetail = avatarDetail ?? this.avatarDetail
      ..expertTags = expertTags ?? this.expertTags
      ..experts = experts ?? this.experts;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }

  UserItem toUserItem() {
    return UserItem(userId ?? 0, avatarUrl ?? '', nickname ?? '',
        signature ?? '', followed ?? false);
  }
}

@JsonSerializable()
class UserFollowsFollowVipRights {
  int? redVipAnnualCount;
  int? redVipLevel;

  UserFollowsFollowVipRights();

  factory UserFollowsFollowVipRights.fromJson(Map<String, dynamic> json) =>
      $UserFollowsFollowVipRightsFromJson(json);

  Map<String, dynamic> toJson() => $UserFollowsFollowVipRightsToJson(this);

  UserFollowsFollowVipRights copyWith(
      {int? redVipAnnualCount, int? redVipLevel}) {
    return UserFollowsFollowVipRights()
      ..redVipAnnualCount = redVipAnnualCount ?? this.redVipAnnualCount
      ..redVipLevel = redVipLevel ?? this.redVipLevel;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserFollowsFollowAvatarDetail {
  int? userType;
  int? identityLevel;
  String? identityIconUrl;

  UserFollowsFollowAvatarDetail();

  factory UserFollowsFollowAvatarDetail.fromJson(Map<String, dynamic> json) =>
      $UserFollowsFollowAvatarDetailFromJson(json);

  Map<String, dynamic> toJson() => $UserFollowsFollowAvatarDetailToJson(this);

  UserFollowsFollowAvatarDetail copyWith(
      {int? userType, int? identityLevel, String? identityIconUrl}) {
    return UserFollowsFollowAvatarDetail()
      ..userType = userType ?? this.userType
      ..identityLevel = identityLevel ?? this.identityLevel
      ..identityIconUrl = identityIconUrl ?? this.identityIconUrl;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}
