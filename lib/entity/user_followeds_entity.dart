import 'package:music/entity/user_item.dart';
import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/user_followeds_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class UserFollowedsEntity {
  int? code;
  bool? more;
  List<UserFollowedsFolloweds>? followeds;
  int? size;

  UserFollowedsEntity();

  factory UserFollowedsEntity.fromJson(Map<String, dynamic> json) =>
      $UserFollowedsEntityFromJson(json);

  Map<String, dynamic> toJson() => $UserFollowedsEntityToJson(this);

  UserFollowedsEntity copyWith(
      {int? code,
      bool? more,
      List<UserFollowedsFolloweds>? followeds,
      int? size}) {
    return UserFollowedsEntity()
      ..code = code ?? this.code
      ..more = more ?? this.more
      ..followeds = followeds ?? this.followeds
      ..size = size ?? this.size;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserFollowedsFolloweds {
  String? py;
  int? time;
  int? vipType;
  String? avatarUrl;
  int? authStatus;
  int? gender;
  int? accountStatus;
  int? userType;
  bool? followed;
  int? userId;
  int? followeds;
  bool? mutual;
  int? follows;
  String? nickname;
  String? signature;
  int? eventCount;
  int? playlistCount;

  UserFollowedsFolloweds();

  factory UserFollowedsFolloweds.fromJson(Map<String, dynamic> json) =>
      $UserFollowedsFollowedsFromJson(json);

  Map<String, dynamic> toJson() => $UserFollowedsFollowedsToJson(this);

  UserFollowedsFolloweds copyWith(
      {String? py,
      int? time,
      int? vipType,
      String? avatarUrl,
      int? authStatus,
      int? gender,
      int? accountStatus,
      int? userType,
      bool? followed,
      int? userId,
      int? followeds,
      bool? mutual,
      int? follows,
      String? nickname,
      String? signature,
      int? eventCount,
      int? playlistCount}) {
    return UserFollowedsFolloweds()
      ..py = py ?? this.py
      ..time = time ?? this.time
      ..vipType = vipType ?? this.vipType
      ..avatarUrl = avatarUrl ?? this.avatarUrl
      ..authStatus = authStatus ?? this.authStatus
      ..gender = gender ?? this.gender
      ..accountStatus = accountStatus ?? this.accountStatus
      ..userType = userType ?? this.userType
      ..followed = followed ?? this.followed
      ..userId = userId ?? this.userId
      ..followeds = followeds ?? this.followeds
      ..mutual = mutual ?? this.mutual
      ..follows = follows ?? this.follows
      ..nickname = nickname ?? this.nickname
      ..signature = signature ?? this.signature
      ..eventCount = eventCount ?? this.eventCount
      ..playlistCount = playlistCount ?? this.playlistCount;
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
