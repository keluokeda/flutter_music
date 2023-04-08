import 'package:music/entity/user_item.dart';
import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/playlist_subscribers_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class PlaylistSubscribersEntity {
  int? total;
  int? code;
  bool? more;
  List<PlaylistSubscribersSubscribers>? subscribers;

  PlaylistSubscribersEntity();

  factory PlaylistSubscribersEntity.fromJson(Map<String, dynamic> json) =>
      $PlaylistSubscribersEntityFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistSubscribersEntityToJson(this);

  PlaylistSubscribersEntity copyWith(
      {int? total,
      int? code,
      bool? more,
      List<PlaylistSubscribersSubscribers>? subscribers}) {
    return PlaylistSubscribersEntity()
      ..total = total ?? this.total
      ..code = code ?? this.code
      ..more = more ?? this.more
      ..subscribers = subscribers ?? this.subscribers;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistSubscribersSubscribers {
  bool? defaultAvatar;
  int? province;
  int? authStatus;
  bool? followed;
  String? avatarUrl;
  int? accountStatus;
  int? gender;
  int? city;
  int? birthday;
  int? userId;
  int? userType;
  String? nickname;
  String? signature;
  String? description;
  String? detailDescription;
  int? avatarImgId;
  int? backgroundImgId;
  String? backgroundUrl;
  int? authority;
  bool? mutual;
  dynamic expertTags;
  dynamic experts;
  int? djStatus;
  int? vipType;
  dynamic remarkName;
  int? subscribeTime;
  String? backgroundImgIdStr;
  String? avatarImgIdStr;
  dynamic vipRights;
  @JSONField(name: "avatarImgId_str")
  String? avatarimgidStr;
  dynamic avatarDetail;

  PlaylistSubscribersSubscribers();

  UserItem toUserItem() {
    return UserItem(userId ?? 0, avatarUrl ?? '', nickname ?? '',
        signature ?? '', followed ?? false);
  }

  factory PlaylistSubscribersSubscribers.fromJson(Map<String, dynamic> json) =>
      $PlaylistSubscribersSubscribersFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistSubscribersSubscribersToJson(this);

  PlaylistSubscribersSubscribers copyWith(
      {bool? defaultAvatar,
      int? province,
      int? authStatus,
      bool? followed,
      String? avatarUrl,
      int? accountStatus,
      int? gender,
      int? city,
      int? birthday,
      int? userId,
      int? userType,
      String? nickname,
      String? signature,
      String? description,
      String? detailDescription,
      int? avatarImgId,
      int? backgroundImgId,
      String? backgroundUrl,
      int? authority,
      bool? mutual,
      dynamic expertTags,
      dynamic experts,
      int? djStatus,
      int? vipType,
      dynamic remarkName,
      int? subscribeTime,
      String? backgroundImgIdStr,
      String? avatarImgIdStr,
      dynamic vipRights,
      String? avatarimgidStr,
      dynamic avatarDetail}) {
    return PlaylistSubscribersSubscribers()
      ..defaultAvatar = defaultAvatar ?? this.defaultAvatar
      ..province = province ?? this.province
      ..authStatus = authStatus ?? this.authStatus
      ..followed = followed ?? this.followed
      ..avatarUrl = avatarUrl ?? this.avatarUrl
      ..accountStatus = accountStatus ?? this.accountStatus
      ..gender = gender ?? this.gender
      ..city = city ?? this.city
      ..birthday = birthday ?? this.birthday
      ..userId = userId ?? this.userId
      ..userType = userType ?? this.userType
      ..nickname = nickname ?? this.nickname
      ..signature = signature ?? this.signature
      ..description = description ?? this.description
      ..detailDescription = detailDescription ?? this.detailDescription
      ..avatarImgId = avatarImgId ?? this.avatarImgId
      ..backgroundImgId = backgroundImgId ?? this.backgroundImgId
      ..backgroundUrl = backgroundUrl ?? this.backgroundUrl
      ..authority = authority ?? this.authority
      ..mutual = mutual ?? this.mutual
      ..expertTags = expertTags ?? this.expertTags
      ..experts = experts ?? this.experts
      ..djStatus = djStatus ?? this.djStatus
      ..vipType = vipType ?? this.vipType
      ..remarkName = remarkName ?? this.remarkName
      ..subscribeTime = subscribeTime ?? this.subscribeTime
      ..backgroundImgIdStr = backgroundImgIdStr ?? this.backgroundImgIdStr
      ..avatarImgIdStr = avatarImgIdStr ?? this.avatarImgIdStr
      ..vipRights = vipRights ?? this.vipRights
      ..avatarimgidStr = avatarimgidStr ?? this.avatarimgidStr
      ..avatarDetail = avatarDetail ?? this.avatarDetail;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}
