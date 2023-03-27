import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/message_list_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class MessageListEntity {
  List<MessageListMsgs>? msgs;
  int? code;
  bool? more;
  int? newMsgCount;

  MessageListEntity();

  factory MessageListEntity.fromJson(Map<String, dynamic> json) =>
      $MessageListEntityFromJson(json);

  Map<String, dynamic> toJson() => $MessageListEntityToJson(this);

  MessageListEntity copyWith(
      {List<MessageListMsgs>? msgs, int? code, bool? more, int? newMsgCount}) {
    return MessageListEntity()
      ..msgs = msgs ?? this.msgs
      ..code = code ?? this.code
      ..more = more ?? this.more
      ..newMsgCount = newMsgCount ?? this.newMsgCount;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class MessageListMsgs {
  MessageListMsgsUser? user;
  MessageListMsgsFromUser? fromUser;
  MessageListMsgsToUser? toUser;
  bool? noticeAccountFlag;
  dynamic noticeAccount;
  String? lastMsg;
  int? lastMsgTime;
  int? newMsgCount;
  dynamic lastMsgUserId;
  int? msgSenderType;
  int? lastMsgId;

  MessageListMsgs();

  String formatDate() {
    final dateTime =  DateTime.fromMicrosecondsSinceEpoch((lastMsgTime ?? 0) * 1000);

    return "${dateTime.month}月${dateTime.day}日 ${dateTime.hour}:${dateTime.minute}";
  }

  factory MessageListMsgs.fromJson(Map<String, dynamic> json) =>
      $MessageListMsgsFromJson(json);

  Map<String, dynamic> toJson() => $MessageListMsgsToJson(this);

  MessageListMsgs copyWith(
      {MessageListMsgsUser? user,
      MessageListMsgsFromUser? fromUser,
      MessageListMsgsToUser? toUser,
      bool? noticeAccountFlag,
      dynamic noticeAccount,
      String? lastMsg,
      int? lastMsgTime,
      int? newMsgCount,
      dynamic lastMsgUserId,
      int? msgSenderType,
      int? lastMsgId}) {
    return MessageListMsgs()
      ..user = user ?? this.user
      ..fromUser = fromUser ?? this.fromUser
      ..toUser = toUser ?? this.toUser
      ..noticeAccountFlag = noticeAccountFlag ?? this.noticeAccountFlag
      ..noticeAccount = noticeAccount ?? this.noticeAccount
      ..lastMsg = lastMsg ?? this.lastMsg
      ..lastMsgTime = lastMsgTime ?? this.lastMsgTime
      ..newMsgCount = newMsgCount ?? this.newMsgCount
      ..lastMsgUserId = lastMsgUserId ?? this.lastMsgUserId
      ..msgSenderType = msgSenderType ?? this.msgSenderType
      ..lastMsgId = lastMsgId ?? this.lastMsgId;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class MessageListMsgsUser {
  int? id;
  int? toUserId;
  int? fromUserId;
  int? msgCount;
  int? newMsgCount;
  int? lastMsgTime;
  String? lastMsg;

  MessageListMsgsUser();

  factory MessageListMsgsUser.fromJson(Map<String, dynamic> json) =>
      $MessageListMsgsUserFromJson(json);

  Map<String, dynamic> toJson() => $MessageListMsgsUserToJson(this);

  MessageListMsgsUser copyWith(
      {int? id,
      int? toUserId,
      int? fromUserId,
      int? msgCount,
      int? newMsgCount,
      int? lastMsgTime,
      String? lastMsg}) {
    return MessageListMsgsUser()
      ..id = id ?? this.id
      ..toUserId = toUserId ?? this.toUserId
      ..fromUserId = fromUserId ?? this.fromUserId
      ..msgCount = msgCount ?? this.msgCount
      ..newMsgCount = newMsgCount ?? this.newMsgCount
      ..lastMsgTime = lastMsgTime ?? this.lastMsgTime
      ..lastMsg = lastMsg ?? this.lastMsg;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class MessageListMsgsFromUser {
  int? gender;
  int? avatarImgId;
  String? avatarImgIdStr;
  int? backgroundImgId;
  int? birthday;
  int? accountStatus;
  int? city;
  bool? defaultAvatar;
  String? detailDescription;
  int? djStatus;
  String? backgroundUrl;
  String? backgroundImgIdStr;
  MessageListMsgsFromUserAvatarDetail? avatarDetail;
  int? userType;
  String? nickname;
  bool? followed;
  bool? mutual;
  String? avatarUrl;
  dynamic remarkName;
  int? authStatus;
  dynamic expertTags;
  int? vipType;
  dynamic experts;
  int? province;
  int? userId;
  String? description;
  String? signature;
  int? authority;
  bool? blacklist;
  String? artistName;

  MessageListMsgsFromUser();

  factory MessageListMsgsFromUser.fromJson(Map<String, dynamic> json) =>
      $MessageListMsgsFromUserFromJson(json);

  Map<String, dynamic> toJson() => $MessageListMsgsFromUserToJson(this);

  MessageListMsgsFromUser copyWith(
      {int? gender,
      int? avatarImgId,
      String? avatarImgIdStr,
      int? backgroundImgId,
      int? birthday,
      int? accountStatus,
      int? city,
      bool? defaultAvatar,
      String? detailDescription,
      int? djStatus,
      String? backgroundUrl,
      String? backgroundImgIdStr,
      MessageListMsgsFromUserAvatarDetail? avatarDetail,
      int? userType,
      String? nickname,
      bool? followed,
      bool? mutual,
      String? avatarUrl,
      dynamic remarkName,
      int? authStatus,
      dynamic expertTags,
      int? vipType,
      dynamic experts,
      int? province,
      int? userId,
      String? description,
      String? signature,
      int? authority,
      bool? blacklist,
      String? artistName}) {
    return MessageListMsgsFromUser()
      ..gender = gender ?? this.gender
      ..avatarImgId = avatarImgId ?? this.avatarImgId
      ..avatarImgIdStr = avatarImgIdStr ?? this.avatarImgIdStr
      ..backgroundImgId = backgroundImgId ?? this.backgroundImgId
      ..birthday = birthday ?? this.birthday
      ..accountStatus = accountStatus ?? this.accountStatus
      ..city = city ?? this.city
      ..defaultAvatar = defaultAvatar ?? this.defaultAvatar
      ..detailDescription = detailDescription ?? this.detailDescription
      ..djStatus = djStatus ?? this.djStatus
      ..backgroundUrl = backgroundUrl ?? this.backgroundUrl
      ..backgroundImgIdStr = backgroundImgIdStr ?? this.backgroundImgIdStr
      ..avatarDetail = avatarDetail ?? this.avatarDetail
      ..userType = userType ?? this.userType
      ..nickname = nickname ?? this.nickname
      ..followed = followed ?? this.followed
      ..mutual = mutual ?? this.mutual
      ..avatarUrl = avatarUrl ?? this.avatarUrl
      ..remarkName = remarkName ?? this.remarkName
      ..authStatus = authStatus ?? this.authStatus
      ..expertTags = expertTags ?? this.expertTags
      ..vipType = vipType ?? this.vipType
      ..experts = experts ?? this.experts
      ..province = province ?? this.province
      ..userId = userId ?? this.userId
      ..description = description ?? this.description
      ..signature = signature ?? this.signature
      ..authority = authority ?? this.authority
      ..blacklist = blacklist ?? this.blacklist
      ..artistName = artistName ?? this.artistName;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class MessageListMsgsFromUserAvatarDetail {
  int? userType;
  int? identityLevel;
  String? identityIconUrl;

  MessageListMsgsFromUserAvatarDetail();

  factory MessageListMsgsFromUserAvatarDetail.fromJson(
          Map<String, dynamic> json) =>
      $MessageListMsgsFromUserAvatarDetailFromJson(json);

  Map<String, dynamic> toJson() =>
      $MessageListMsgsFromUserAvatarDetailToJson(this);

  MessageListMsgsFromUserAvatarDetail copyWith(
      {int? userType, int? identityLevel, String? identityIconUrl}) {
    return MessageListMsgsFromUserAvatarDetail()
      ..userType = userType ?? this.userType
      ..identityLevel = identityLevel ?? this.identityLevel
      ..identityIconUrl = identityIconUrl ?? this.identityIconUrl;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class MessageListMsgsToUser {
  int? gender;
  int? avatarImgId;
  String? avatarImgIdStr;
  int? backgroundImgId;
  int? birthday;
  int? accountStatus;
  int? city;
  bool? defaultAvatar;
  String? detailDescription;
  int? djStatus;
  String? backgroundUrl;
  String? backgroundImgIdStr;
  dynamic avatarDetail;
  int? userType;
  String? nickname;
  bool? followed;
  bool? mutual;
  String? avatarUrl;
  dynamic remarkName;
  int? authStatus;
  dynamic expertTags;
  int? vipType;
  dynamic experts;
  int? province;
  int? userId;
  String? description;
  String? signature;
  int? authority;

  MessageListMsgsToUser();

  factory MessageListMsgsToUser.fromJson(Map<String, dynamic> json) =>
      $MessageListMsgsToUserFromJson(json);

  Map<String, dynamic> toJson() => $MessageListMsgsToUserToJson(this);

  MessageListMsgsToUser copyWith(
      {int? gender,
      int? avatarImgId,
      String? avatarImgIdStr,
      int? backgroundImgId,
      int? birthday,
      int? accountStatus,
      int? city,
      bool? defaultAvatar,
      String? detailDescription,
      int? djStatus,
      String? backgroundUrl,
      String? backgroundImgIdStr,
      dynamic avatarDetail,
      int? userType,
      String? nickname,
      bool? followed,
      bool? mutual,
      String? avatarUrl,
      dynamic remarkName,
      int? authStatus,
      dynamic expertTags,
      int? vipType,
      dynamic experts,
      int? province,
      int? userId,
      String? description,
      String? signature,
      int? authority}) {
    return MessageListMsgsToUser()
      ..gender = gender ?? this.gender
      ..avatarImgId = avatarImgId ?? this.avatarImgId
      ..avatarImgIdStr = avatarImgIdStr ?? this.avatarImgIdStr
      ..backgroundImgId = backgroundImgId ?? this.backgroundImgId
      ..birthday = birthday ?? this.birthday
      ..accountStatus = accountStatus ?? this.accountStatus
      ..city = city ?? this.city
      ..defaultAvatar = defaultAvatar ?? this.defaultAvatar
      ..detailDescription = detailDescription ?? this.detailDescription
      ..djStatus = djStatus ?? this.djStatus
      ..backgroundUrl = backgroundUrl ?? this.backgroundUrl
      ..backgroundImgIdStr = backgroundImgIdStr ?? this.backgroundImgIdStr
      ..avatarDetail = avatarDetail ?? this.avatarDetail
      ..userType = userType ?? this.userType
      ..nickname = nickname ?? this.nickname
      ..followed = followed ?? this.followed
      ..mutual = mutual ?? this.mutual
      ..avatarUrl = avatarUrl ?? this.avatarUrl
      ..remarkName = remarkName ?? this.remarkName
      ..authStatus = authStatus ?? this.authStatus
      ..expertTags = expertTags ?? this.expertTags
      ..vipType = vipType ?? this.vipType
      ..experts = experts ?? this.experts
      ..province = province ?? this.province
      ..userId = userId ?? this.userId
      ..description = description ?? this.description
      ..signature = signature ?? this.signature
      ..authority = authority ?? this.authority;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}
