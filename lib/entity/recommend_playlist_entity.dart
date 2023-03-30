import 'package:music/entity/playlist_item.dart';
import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/recommend_playlist_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class RecommendPlaylistEntity {
  int? code;
  bool? featureFirst;
  bool? haveRcmdSongs;
  List<RecommendPlaylistRecommend>? recommend;

  RecommendPlaylistEntity();

  factory RecommendPlaylistEntity.fromJson(Map<String, dynamic> json) =>
      $RecommendPlaylistEntityFromJson(json);

  Map<String, dynamic> toJson() => $RecommendPlaylistEntityToJson(this);

  RecommendPlaylistEntity copyWith(
      {int? code,
      bool? featureFirst,
      bool? haveRcmdSongs,
      List<RecommendPlaylistRecommend>? recommend}) {
    return RecommendPlaylistEntity()
      ..code = code ?? this.code
      ..featureFirst = featureFirst ?? this.featureFirst
      ..haveRcmdSongs = haveRcmdSongs ?? this.haveRcmdSongs
      ..recommend = recommend ?? this.recommend;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendPlaylistRecommend {
  int? id;
  int? type;
  String? name;
  String? copywriter;
  String? picUrl;
  int? playcount;
  int? createTime;
  RecommendPlaylistRecommendCreator? creator;
  int? trackCount;
  int? userId;
  String? alg;

  RecommendPlaylistRecommend();

  factory RecommendPlaylistRecommend.fromJson(Map<String, dynamic> json) =>
      $RecommendPlaylistRecommendFromJson(json);

  Map<String, dynamic> toJson() => $RecommendPlaylistRecommendToJson(this);

  RecommendPlaylistRecommend copyWith(
      {int? id,
      int? type,
      String? name,
      String? copywriter,
      String? picUrl,
      int? playcount,
      int? createTime,
      RecommendPlaylistRecommendCreator? creator,
      int? trackCount,
      int? userId,
      String? alg}) {
    return RecommendPlaylistRecommend()
      ..id = id ?? this.id
      ..type = type ?? this.type
      ..name = name ?? this.name
      ..copywriter = copywriter ?? this.copywriter
      ..picUrl = picUrl ?? this.picUrl
      ..playcount = playcount ?? this.playcount
      ..createTime = createTime ?? this.createTime
      ..creator = creator ?? this.creator
      ..trackCount = trackCount ?? this.trackCount
      ..userId = userId ?? this.userId
      ..alg = alg ?? this.alg;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }

  PlaylistItem toPlaylistItem() {
    return PlaylistItem(
        id ?? 0, name ?? '', picUrl ?? '', playcount ?? 0, trackCount ?? 0);
  }
}

@JsonSerializable()
class RecommendPlaylistRecommendCreator {
  bool? mutual;
  dynamic remarkName;
  bool? followed;
  String? backgroundUrl;
  String? avatarImgIdStr;
  int? avatarImgId;
  int? backgroundImgId;
  String? detailDescription;
  bool? defaultAvatar;
  dynamic expertTags;
  int? djStatus;
  String? backgroundImgIdStr;
  int? accountStatus;
  int? vipType;
  int? province;
  int? gender;
  String? avatarUrl;
  int? authStatus;
  int? userType;
  String? nickname;
  int? birthday;
  int? city;
  int? userId;
  String? description;
  String? signature;
  int? authority;

  RecommendPlaylistRecommendCreator();

  factory RecommendPlaylistRecommendCreator.fromJson(
          Map<String, dynamic> json) =>
      $RecommendPlaylistRecommendCreatorFromJson(json);

  Map<String, dynamic> toJson() =>
      $RecommendPlaylistRecommendCreatorToJson(this);

  RecommendPlaylistRecommendCreator copyWith(
      {bool? mutual,
      dynamic remarkName,
      bool? followed,
      String? backgroundUrl,
      String? avatarImgIdStr,
      int? avatarImgId,
      int? backgroundImgId,
      String? detailDescription,
      bool? defaultAvatar,
      dynamic expertTags,
      int? djStatus,
      String? backgroundImgIdStr,
      int? accountStatus,
      int? vipType,
      int? province,
      int? gender,
      String? avatarUrl,
      int? authStatus,
      int? userType,
      String? nickname,
      int? birthday,
      int? city,
      int? userId,
      String? description,
      String? signature,
      int? authority}) {
    return RecommendPlaylistRecommendCreator()
      ..mutual = mutual ?? this.mutual
      ..remarkName = remarkName ?? this.remarkName
      ..followed = followed ?? this.followed
      ..backgroundUrl = backgroundUrl ?? this.backgroundUrl
      ..avatarImgIdStr = avatarImgIdStr ?? this.avatarImgIdStr
      ..avatarImgId = avatarImgId ?? this.avatarImgId
      ..backgroundImgId = backgroundImgId ?? this.backgroundImgId
      ..detailDescription = detailDescription ?? this.detailDescription
      ..defaultAvatar = defaultAvatar ?? this.defaultAvatar
      ..expertTags = expertTags ?? this.expertTags
      ..djStatus = djStatus ?? this.djStatus
      ..backgroundImgIdStr = backgroundImgIdStr ?? this.backgroundImgIdStr
      ..accountStatus = accountStatus ?? this.accountStatus
      ..vipType = vipType ?? this.vipType
      ..province = province ?? this.province
      ..gender = gender ?? this.gender
      ..avatarUrl = avatarUrl ?? this.avatarUrl
      ..authStatus = authStatus ?? this.authStatus
      ..userType = userType ?? this.userType
      ..nickname = nickname ?? this.nickname
      ..birthday = birthday ?? this.birthday
      ..city = city ?? this.city
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
