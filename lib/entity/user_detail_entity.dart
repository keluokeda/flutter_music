import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/user_detail_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class UserDetailEntity {
	int? level;
	int? listenSongs;
	UserDetailUserPoint? userPoint;
	bool? mobileSign;
	bool? pcSign;
	UserDetailProfile? profile;
	bool? peopleCanSeeMyPlayRecord;
	List<UserDetailBindings>? bindings;
	bool? adValid;
	int? code;
	bool? newUser;
	bool? recallUser;
	int? createTime;
	int? createDays;
	UserDetailProfileVillageInfo? profileVillageInfo;

	UserDetailEntity();

	factory UserDetailEntity.fromJson(Map<String, dynamic> json) => $UserDetailEntityFromJson(json);

	Map<String, dynamic> toJson() => $UserDetailEntityToJson(this);

	UserDetailEntity copyWith({int? level, int? listenSongs, UserDetailUserPoint? userPoint, bool? mobileSign, bool? pcSign, UserDetailProfile? profile, bool? peopleCanSeeMyPlayRecord, List<UserDetailBindings>? bindings, bool? adValid, int? code, bool? newUser, bool? recallUser, int? createTime, int? createDays, UserDetailProfileVillageInfo? profileVillageInfo}) {
		return UserDetailEntity()
			..level= level ?? this.level
			..listenSongs= listenSongs ?? this.listenSongs
			..userPoint= userPoint ?? this.userPoint
			..mobileSign= mobileSign ?? this.mobileSign
			..pcSign= pcSign ?? this.pcSign
			..profile= profile ?? this.profile
			..peopleCanSeeMyPlayRecord= peopleCanSeeMyPlayRecord ?? this.peopleCanSeeMyPlayRecord
			..bindings= bindings ?? this.bindings
			..adValid= adValid ?? this.adValid
			..code= code ?? this.code
			..newUser= newUser ?? this.newUser
			..recallUser= recallUser ?? this.recallUser
			..createTime= createTime ?? this.createTime
			..createDays= createDays ?? this.createDays
			..profileVillageInfo= profileVillageInfo ?? this.profileVillageInfo;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserDetailUserPoint {
	int? userId;
	int? balance;
	int? updateTime;
	int? version;
	int? status;
	int? blockBalance;

	UserDetailUserPoint();

	factory UserDetailUserPoint.fromJson(Map<String, dynamic> json) => $UserDetailUserPointFromJson(json);

	Map<String, dynamic> toJson() => $UserDetailUserPointToJson(this);

	UserDetailUserPoint copyWith({int? userId, int? balance, int? updateTime, int? version, int? status, int? blockBalance}) {
		return UserDetailUserPoint()
			..userId= userId ?? this.userId
			..balance= balance ?? this.balance
			..updateTime= updateTime ?? this.updateTime
			..version= version ?? this.version
			..status= status ?? this.status
			..blockBalance= blockBalance ?? this.blockBalance;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserDetailProfile {
	UserDetailProfilePrivacyItemUnlimit? privacyItemUnlimit;
	dynamic avatarDetail;
	int? accountStatus;
	int? vipType;
	int? userType;
	int? createTime;
	String? description;
	String? avatarImgIdStr;
	String? backgroundImgIdStr;
	int? userId;
	int? birthday;
	String? nickname;
	String? avatarUrl;
	bool? mutual;
	bool? followed;
	dynamic remarkName;
	int? authStatus;
	String? detailDescription;
	dynamic expertTags;
	int? djStatus;
	int? province;
	int? city;
	bool? defaultAvatar;
	int? backgroundImgId;
	String? backgroundUrl;
	int? gender;
	int? avatarImgId;
	String? signature;
	int? authority;
	int? followeds;
	int? follows;
	bool? blacklist;
	int? eventCount;
	int? allSubscribedCount;
	int? playlistBeSubscribedCount;
	@JSONField(name: "avatarImgId_str")
	String? avatarimgidStr;
	dynamic followTime;
	bool? followMe;
	List<dynamic>? artistIdentity;
	int? cCount;
	bool? inBlacklist;
	int? sDJPCount;
	int? playlistCount;
	int? sCount;
	int? newFollows;

	UserDetailProfile();

	factory UserDetailProfile.fromJson(Map<String, dynamic> json) => $UserDetailProfileFromJson(json);

	Map<String, dynamic> toJson() => $UserDetailProfileToJson(this);

	UserDetailProfile copyWith({UserDetailProfilePrivacyItemUnlimit? privacyItemUnlimit, dynamic avatarDetail, int? accountStatus, int? vipType, int? userType, int? createTime, String? description, String? avatarImgIdStr, String? backgroundImgIdStr, int? userId, int? birthday, String? nickname, String? avatarUrl, bool? mutual, bool? followed, dynamic remarkName, int? authStatus, String? detailDescription,  dynamic expertTags, int? djStatus, int? province, int? city, bool? defaultAvatar, int? backgroundImgId, String? backgroundUrl, int? gender, int? avatarImgId, String? signature, int? authority, int? followeds, int? follows, bool? blacklist, int? eventCount, int? allSubscribedCount, int? playlistBeSubscribedCount, String? avatarimgidStr, dynamic followTime, bool? followMe, List<dynamic>? artistIdentity, int? cCount, bool? inBlacklist, int? sDJPCount, int? playlistCount, int? sCount, int? newFollows}) {
		return UserDetailProfile()
			..privacyItemUnlimit= privacyItemUnlimit ?? this.privacyItemUnlimit
			..avatarDetail= avatarDetail ?? this.avatarDetail
			..accountStatus= accountStatus ?? this.accountStatus
			..vipType= vipType ?? this.vipType
			..userType= userType ?? this.userType
			..createTime= createTime ?? this.createTime
			..description= description ?? this.description
			..avatarImgIdStr= avatarImgIdStr ?? this.avatarImgIdStr
			..backgroundImgIdStr= backgroundImgIdStr ?? this.backgroundImgIdStr
			..userId= userId ?? this.userId
			..birthday= birthday ?? this.birthday
			..nickname= nickname ?? this.nickname
			..avatarUrl= avatarUrl ?? this.avatarUrl
			..mutual= mutual ?? this.mutual
			..followed= followed ?? this.followed
			..remarkName= remarkName ?? this.remarkName
			..authStatus= authStatus ?? this.authStatus
			..detailDescription= detailDescription ?? this.detailDescription
			..expertTags= expertTags ?? this.expertTags
			..djStatus= djStatus ?? this.djStatus
			..province= province ?? this.province
			..city= city ?? this.city
			..defaultAvatar= defaultAvatar ?? this.defaultAvatar
			..backgroundImgId= backgroundImgId ?? this.backgroundImgId
			..backgroundUrl= backgroundUrl ?? this.backgroundUrl
			..gender= gender ?? this.gender
			..avatarImgId= avatarImgId ?? this.avatarImgId
			..signature= signature ?? this.signature
			..authority= authority ?? this.authority
			..followeds= followeds ?? this.followeds
			..follows= follows ?? this.follows
			..blacklist= blacklist ?? this.blacklist
			..eventCount= eventCount ?? this.eventCount
			..allSubscribedCount= allSubscribedCount ?? this.allSubscribedCount
			..playlistBeSubscribedCount= playlistBeSubscribedCount ?? this.playlistBeSubscribedCount
			..avatarimgidStr= avatarimgidStr ?? this.avatarimgidStr
			..followTime= followTime ?? this.followTime
			..followMe= followMe ?? this.followMe
			..artistIdentity= artistIdentity ?? this.artistIdentity
			..cCount= cCount ?? this.cCount
			..inBlacklist= inBlacklist ?? this.inBlacklist
			..sDJPCount= sDJPCount ?? this.sDJPCount
			..playlistCount= playlistCount ?? this.playlistCount
			..sCount= sCount ?? this.sCount
			..newFollows= newFollows ?? this.newFollows;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserDetailProfilePrivacyItemUnlimit {
	bool? area;
	bool? college;
	bool? gender;
	bool? age;
	bool? villageAge;

	UserDetailProfilePrivacyItemUnlimit();

	factory UserDetailProfilePrivacyItemUnlimit.fromJson(Map<String, dynamic> json) => $UserDetailProfilePrivacyItemUnlimitFromJson(json);

	Map<String, dynamic> toJson() => $UserDetailProfilePrivacyItemUnlimitToJson(this);

	UserDetailProfilePrivacyItemUnlimit copyWith({bool? area, bool? college, bool? gender, bool? age, bool? villageAge}) {
		return UserDetailProfilePrivacyItemUnlimit()
			..area= area ?? this.area
			..college= college ?? this.college
			..gender= gender ?? this.gender
			..age= age ?? this.age
			..villageAge= villageAge ?? this.villageAge;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}


@JsonSerializable()
class UserDetailBindings {
	bool? expired;
	String? url;
	int? userId;
	int? expiresIn;
	int? refreshTime;
	int? bindingTime;
	dynamic tokenJsonStr;
	int? id;
	int? type;

	UserDetailBindings();

	factory UserDetailBindings.fromJson(Map<String, dynamic> json) => $UserDetailBindingsFromJson(json);

	Map<String, dynamic> toJson() => $UserDetailBindingsToJson(this);

	UserDetailBindings copyWith({bool? expired, String? url, int? userId, int? expiresIn, int? refreshTime, int? bindingTime, dynamic tokenJsonStr, int? id, int? type}) {
		return UserDetailBindings()
			..expired= expired ?? this.expired
			..url= url ?? this.url
			..userId= userId ?? this.userId
			..expiresIn= expiresIn ?? this.expiresIn
			..refreshTime= refreshTime ?? this.refreshTime
			..bindingTime= bindingTime ?? this.bindingTime
			..tokenJsonStr= tokenJsonStr ?? this.tokenJsonStr
			..id= id ?? this.id
			..type= type ?? this.type;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserDetailProfileVillageInfo {
	String? title;
	dynamic imageUrl;
	String? targetUrl;

	UserDetailProfileVillageInfo();

	factory UserDetailProfileVillageInfo.fromJson(Map<String, dynamic> json) => $UserDetailProfileVillageInfoFromJson(json);

	Map<String, dynamic> toJson() => $UserDetailProfileVillageInfoToJson(this);

	UserDetailProfileVillageInfo copyWith({String? title, dynamic imageUrl, String? targetUrl}) {
		return UserDetailProfileVillageInfo()
			..title= title ?? this.title
			..imageUrl= imageUrl ?? this.imageUrl
			..targetUrl= targetUrl ?? this.targetUrl;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}