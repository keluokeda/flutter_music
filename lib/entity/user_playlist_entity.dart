import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/user_playlist_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class UserPlaylistEntity {
	String? version;
	bool? more;
	List<UserPlaylistPlaylist>? playlist;
	int? code;

	UserPlaylistEntity();

	factory UserPlaylistEntity.fromJson(Map<String, dynamic> json) => $UserPlaylistEntityFromJson(json);

	Map<String, dynamic> toJson() => $UserPlaylistEntityToJson(this);

	UserPlaylistEntity copyWith({String? version, bool? more, List<UserPlaylistPlaylist>? playlist, int? code}) {
		return UserPlaylistEntity()
			..version= version ?? this.version
			..more= more ?? this.more
			..playlist= playlist ?? this.playlist
			..code= code ?? this.code;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserPlaylistPlaylist {
	List<dynamic>? subscribers;
	bool? subscribed;
	UserPlaylistPlaylistCreator? creator;
	dynamic artists;
	dynamic tracks;
	dynamic updateFrequency;
	int? backgroundCoverId;
	dynamic backgroundCoverUrl;
	int? titleImage;
	dynamic titleImageUrl;
	dynamic englishTitle;
	bool? opRecommend;
	dynamic recommendInfo;
	int? subscribedCount;
	int? cloudTrackCount;
	int? userId;
	int? totalDuration;
	int? coverImgId;
	int? privacy;
	int? trackUpdateTime;
	int? trackCount;
	int? updateTime;
	String? commentThreadId;
	String? coverImgUrl;
	int? specialType;
	bool? anonimous;
	int? createTime;
	bool? highQuality;
	bool? newImported;
	int? trackNumberUpdateTime;
	int? playCount;
	int? adType;
	String? description;
	List<String>? tags;
	bool? ordered;
	int? status;
	String? name;
	int? id;
	@JSONField(name: "coverImgId_str")
	String? coverimgidStr;
	dynamic sharedUsers;
	dynamic shareStatus;
	bool? copied;

	UserPlaylistPlaylist();

	factory UserPlaylistPlaylist.fromJson(Map<String, dynamic> json) => $UserPlaylistPlaylistFromJson(json);

	Map<String, dynamic> toJson() => $UserPlaylistPlaylistToJson(this);

	UserPlaylistPlaylist copyWith({List<dynamic>? subscribers, bool? subscribed, UserPlaylistPlaylistCreator? creator, dynamic artists, dynamic tracks, dynamic updateFrequency, int? backgroundCoverId, dynamic backgroundCoverUrl, int? titleImage, dynamic titleImageUrl, dynamic englishTitle, bool? opRecommend, dynamic recommendInfo, int? subscribedCount, int? cloudTrackCount, int? userId, int? totalDuration, int? coverImgId, int? privacy, int? trackUpdateTime, int? trackCount, int? updateTime, String? commentThreadId, String? coverImgUrl, int? specialType, bool? anonimous, int? createTime, bool? highQuality, bool? newImported, int? trackNumberUpdateTime, int? playCount, int? adType, String? description, List<String>? tags, bool? ordered, int? status, String? name, int? id, String? coverimgidStr, dynamic sharedUsers, dynamic shareStatus, bool? copied}) {
		return UserPlaylistPlaylist()
			..subscribers= subscribers ?? this.subscribers
			..subscribed= subscribed ?? this.subscribed
			..creator= creator ?? this.creator
			..artists= artists ?? this.artists
			..tracks= tracks ?? this.tracks
			..updateFrequency= updateFrequency ?? this.updateFrequency
			..backgroundCoverId= backgroundCoverId ?? this.backgroundCoverId
			..backgroundCoverUrl= backgroundCoverUrl ?? this.backgroundCoverUrl
			..titleImage= titleImage ?? this.titleImage
			..titleImageUrl= titleImageUrl ?? this.titleImageUrl
			..englishTitle= englishTitle ?? this.englishTitle
			..opRecommend= opRecommend ?? this.opRecommend
			..recommendInfo= recommendInfo ?? this.recommendInfo
			..subscribedCount= subscribedCount ?? this.subscribedCount
			..cloudTrackCount= cloudTrackCount ?? this.cloudTrackCount
			..userId= userId ?? this.userId
			..totalDuration= totalDuration ?? this.totalDuration
			..coverImgId= coverImgId ?? this.coverImgId
			..privacy= privacy ?? this.privacy
			..trackUpdateTime= trackUpdateTime ?? this.trackUpdateTime
			..trackCount= trackCount ?? this.trackCount
			..updateTime= updateTime ?? this.updateTime
			..commentThreadId= commentThreadId ?? this.commentThreadId
			..coverImgUrl= coverImgUrl ?? this.coverImgUrl
			..specialType= specialType ?? this.specialType
			..anonimous= anonimous ?? this.anonimous
			..createTime= createTime ?? this.createTime
			..highQuality= highQuality ?? this.highQuality
			..newImported= newImported ?? this.newImported
			..trackNumberUpdateTime= trackNumberUpdateTime ?? this.trackNumberUpdateTime
			..playCount= playCount ?? this.playCount
			..adType= adType ?? this.adType
			..description= description ?? this.description
			..tags= tags ?? this.tags
			..ordered= ordered ?? this.ordered
			..status= status ?? this.status
			..name= name ?? this.name
			..id= id ?? this.id
			..coverimgidStr= coverimgidStr ?? this.coverimgidStr
			..sharedUsers= sharedUsers ?? this.sharedUsers
			..shareStatus= shareStatus ?? this.shareStatus
			..copied= copied ?? this.copied;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserPlaylistPlaylistCreator {
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
	bool? anchor;
	String? avatarImgIdStr;
	String? backgroundImgIdStr;
	@JSONField(name: "avatarImgId_str")
	String? avatarimgidStr;

	UserPlaylistPlaylistCreator();

	factory UserPlaylistPlaylistCreator.fromJson(Map<String, dynamic> json) => $UserPlaylistPlaylistCreatorFromJson(json);

	Map<String, dynamic> toJson() => $UserPlaylistPlaylistCreatorToJson(this);

	UserPlaylistPlaylistCreator copyWith({bool? defaultAvatar, int? province, int? authStatus, bool? followed, String? avatarUrl, int? accountStatus, int? gender, int? city, int? birthday, int? userId, int? userType, String? nickname, String? signature, String? description, String? detailDescription, int? avatarImgId, int? backgroundImgId, String? backgroundUrl, int? authority, bool? mutual, dynamic expertTags, dynamic experts, int? djStatus, int? vipType, dynamic remarkName, int? authenticationTypes, dynamic avatarDetail, bool? anchor, String? avatarImgIdStr, String? backgroundImgIdStr, String? avatarimgidStr}) {
		return UserPlaylistPlaylistCreator()
			..defaultAvatar= defaultAvatar ?? this.defaultAvatar
			..province= province ?? this.province
			..authStatus= authStatus ?? this.authStatus
			..followed= followed ?? this.followed
			..avatarUrl= avatarUrl ?? this.avatarUrl
			..accountStatus= accountStatus ?? this.accountStatus
			..gender= gender ?? this.gender
			..city= city ?? this.city
			..birthday= birthday ?? this.birthday
			..userId= userId ?? this.userId
			..userType= userType ?? this.userType
			..nickname= nickname ?? this.nickname
			..signature= signature ?? this.signature
			..description= description ?? this.description
			..detailDescription= detailDescription ?? this.detailDescription
			..avatarImgId= avatarImgId ?? this.avatarImgId
			..backgroundImgId= backgroundImgId ?? this.backgroundImgId
			..backgroundUrl= backgroundUrl ?? this.backgroundUrl
			..authority= authority ?? this.authority
			..mutual= mutual ?? this.mutual
			..expertTags= expertTags ?? this.expertTags
			..experts= experts ?? this.experts
			..djStatus= djStatus ?? this.djStatus
			..vipType= vipType ?? this.vipType
			..remarkName= remarkName ?? this.remarkName
			..authenticationTypes= authenticationTypes ?? this.authenticationTypes
			..avatarDetail= avatarDetail ?? this.avatarDetail
			..anchor= anchor ?? this.anchor
			..avatarImgIdStr= avatarImgIdStr ?? this.avatarImgIdStr
			..backgroundImgIdStr= backgroundImgIdStr ?? this.backgroundImgIdStr
			..avatarimgidStr= avatarimgidStr ?? this.avatarimgidStr;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}