import 'package:music/entity/playlist_item.dart';
import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/playlist_list_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class PlaylistListEntity {
  List<PlaylistListPlaylists>? playlists;
  int? total;
  int? code;
  bool? more;
  String? cat;

  PlaylistListEntity();

  factory PlaylistListEntity.fromJson(Map<String, dynamic> json) =>
      $PlaylistListEntityFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistListEntityToJson(this);

  PlaylistListEntity copyWith(
      {List<PlaylistListPlaylists>? playlists,
      int? total,
      int? code,
      bool? more,
      String? cat}) {
    return PlaylistListEntity()
      ..playlists = playlists ?? this.playlists
      ..total = total ?? this.total
      ..code = code ?? this.code
      ..more = more ?? this.more
      ..cat = cat ?? this.cat;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistListPlaylists {
  String? name;
  int? id;
  int? trackNumberUpdateTime;
  int? status;
  int? userId;
  int? createTime;
  int? updateTime;
  int? subscribedCount;
  int? trackCount;
  int? cloudTrackCount;
  String? coverImgUrl;
  int? coverImgId;
  String? description;
  List<String>? tags;
  int? playCount;
  int? trackUpdateTime;
  int? specialType;
  int? totalDuration;
  PlaylistListPlaylistsCreator? creator;
  dynamic tracks;
  List<PlaylistListPlaylistsSubscribers>? subscribers;
  bool? subscribed;
  String? commentThreadId;
  bool? newImported;
  int? adType;
  bool? highQuality;
  int? privacy;
  bool? ordered;
  bool? anonimous;
  int? coverStatus;
  dynamic recommendInfo;
  dynamic socialPlaylistCover;
  dynamic recommendText;
  int? shareCount;
  @JSONField(name: "coverImgId_str")
  String? coverimgidStr;
  String? alg;
  int? commentCount;

  PlaylistListPlaylists();

  PlaylistItem toPlaylistItem() {
    return PlaylistItem(id ?? 0, name ?? '', coverImgUrl ?? '', playCount ?? 0,
        trackCount ?? 0);
  }

  factory PlaylistListPlaylists.fromJson(Map<String, dynamic> json) =>
      $PlaylistListPlaylistsFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistListPlaylistsToJson(this);

  PlaylistListPlaylists copyWith(
      {String? name,
      int? id,
      int? trackNumberUpdateTime,
      int? status,
      int? userId,
      int? createTime,
      int? updateTime,
      int? subscribedCount,
      int? trackCount,
      int? cloudTrackCount,
      String? coverImgUrl,
      int? coverImgId,
      String? description,
      List<String>? tags,
      int? playCount,
      int? trackUpdateTime,
      int? specialType,
      int? totalDuration,
      PlaylistListPlaylistsCreator? creator,
      dynamic tracks,
      List<PlaylistListPlaylistsSubscribers>? subscribers,
      bool? subscribed,
      String? commentThreadId,
      bool? newImported,
      int? adType,
      bool? highQuality,
      int? privacy,
      bool? ordered,
      bool? anonimous,
      int? coverStatus,
      dynamic recommendInfo,
      dynamic socialPlaylistCover,
      dynamic recommendText,
      int? shareCount,
      String? coverimgidStr,
      String? alg,
      int? commentCount}) {
    return PlaylistListPlaylists()
      ..name = name ?? this.name
      ..id = id ?? this.id
      ..trackNumberUpdateTime =
          trackNumberUpdateTime ?? this.trackNumberUpdateTime
      ..status = status ?? this.status
      ..userId = userId ?? this.userId
      ..createTime = createTime ?? this.createTime
      ..updateTime = updateTime ?? this.updateTime
      ..subscribedCount = subscribedCount ?? this.subscribedCount
      ..trackCount = trackCount ?? this.trackCount
      ..cloudTrackCount = cloudTrackCount ?? this.cloudTrackCount
      ..coverImgUrl = coverImgUrl ?? this.coverImgUrl
      ..coverImgId = coverImgId ?? this.coverImgId
      ..description = description ?? this.description
      ..tags = tags ?? this.tags
      ..playCount = playCount ?? this.playCount
      ..trackUpdateTime = trackUpdateTime ?? this.trackUpdateTime
      ..specialType = specialType ?? this.specialType
      ..totalDuration = totalDuration ?? this.totalDuration
      ..creator = creator ?? this.creator
      ..tracks = tracks ?? this.tracks
      ..subscribers = subscribers ?? this.subscribers
      ..subscribed = subscribed ?? this.subscribed
      ..commentThreadId = commentThreadId ?? this.commentThreadId
      ..newImported = newImported ?? this.newImported
      ..adType = adType ?? this.adType
      ..highQuality = highQuality ?? this.highQuality
      ..privacy = privacy ?? this.privacy
      ..ordered = ordered ?? this.ordered
      ..anonimous = anonimous ?? this.anonimous
      ..coverStatus = coverStatus ?? this.coverStatus
      ..recommendInfo = recommendInfo ?? this.recommendInfo
      ..socialPlaylistCover = socialPlaylistCover ?? this.socialPlaylistCover
      ..recommendText = recommendText ?? this.recommendText
      ..shareCount = shareCount ?? this.shareCount
      ..coverimgidStr = coverimgidStr ?? this.coverimgidStr
      ..alg = alg ?? this.alg
      ..commentCount = commentCount ?? this.commentCount;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistListPlaylistsCreator {
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
  int? authenticationTypes;
  PlaylistListPlaylistsCreatorAvatarDetail? avatarDetail;
  String? avatarImgIdStr;
  String? backgroundImgIdStr;
  bool? anchor;
  @JSONField(name: "avatarImgId_str")
  String? avatarimgidStr;

  PlaylistListPlaylistsCreator();

  factory PlaylistListPlaylistsCreator.fromJson(Map<String, dynamic> json) =>
      $PlaylistListPlaylistsCreatorFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistListPlaylistsCreatorToJson(this);

  PlaylistListPlaylistsCreator copyWith(
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
      int? authenticationTypes,
      PlaylistListPlaylistsCreatorAvatarDetail? avatarDetail,
      String? avatarImgIdStr,
      String? backgroundImgIdStr,
      bool? anchor,
      String? avatarimgidStr}) {
    return PlaylistListPlaylistsCreator()
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
      ..authenticationTypes = authenticationTypes ?? this.authenticationTypes
      ..avatarDetail = avatarDetail ?? this.avatarDetail
      ..avatarImgIdStr = avatarImgIdStr ?? this.avatarImgIdStr
      ..backgroundImgIdStr = backgroundImgIdStr ?? this.backgroundImgIdStr
      ..anchor = anchor ?? this.anchor
      ..avatarimgidStr = avatarimgidStr ?? this.avatarimgidStr;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistListPlaylistsCreatorAvatarDetail {
  int? userType;
  int? identityLevel;
  String? identityIconUrl;

  PlaylistListPlaylistsCreatorAvatarDetail();

  factory PlaylistListPlaylistsCreatorAvatarDetail.fromJson(
          Map<String, dynamic> json) =>
      $PlaylistListPlaylistsCreatorAvatarDetailFromJson(json);

  Map<String, dynamic> toJson() =>
      $PlaylistListPlaylistsCreatorAvatarDetailToJson(this);

  PlaylistListPlaylistsCreatorAvatarDetail copyWith(
      {int? userType, int? identityLevel, String? identityIconUrl}) {
    return PlaylistListPlaylistsCreatorAvatarDetail()
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
class PlaylistListPlaylistsSubscribers {
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
  int? authenticationTypes;
  dynamic avatarDetail;
  String? avatarImgIdStr;
  String? backgroundImgIdStr;
  bool? anchor;

  PlaylistListPlaylistsSubscribers();

  factory PlaylistListPlaylistsSubscribers.fromJson(
          Map<String, dynamic> json) =>
      $PlaylistListPlaylistsSubscribersFromJson(json);

  Map<String, dynamic> toJson() =>
      $PlaylistListPlaylistsSubscribersToJson(this);

  PlaylistListPlaylistsSubscribers copyWith(
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
      int? authenticationTypes,
      dynamic avatarDetail,
      String? avatarImgIdStr,
      String? backgroundImgIdStr,
      bool? anchor}) {
    return PlaylistListPlaylistsSubscribers()
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
      ..authenticationTypes = authenticationTypes ?? this.authenticationTypes
      ..avatarDetail = avatarDetail ?? this.avatarDetail
      ..avatarImgIdStr = avatarImgIdStr ?? this.avatarImgIdStr
      ..backgroundImgIdStr = backgroundImgIdStr ?? this.backgroundImgIdStr
      ..anchor = anchor ?? this.anchor;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}
