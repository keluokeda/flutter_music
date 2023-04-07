import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/private_history_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class PrivateHistoryEntity {
	int? code;
	bool? isArtist;
	bool? isSubed;
	String? hint;
	bool? more;
	List<PrivateHistoryMsgs>? msgs;

	PrivateHistoryEntity();

	factory PrivateHistoryEntity.fromJson(Map<String, dynamic> json) => $PrivateHistoryEntityFromJson(json);

	Map<String, dynamic> toJson() => $PrivateHistoryEntityToJson(this);

	PrivateHistoryEntity copyWith({int? code, bool? isArtist, bool? isSubed, String? hint, bool? more, List<PrivateHistoryMsgs>? msgs}) {
		return PrivateHistoryEntity()
			..code= code ?? this.code
			..isArtist= isArtist ?? this.isArtist
			..isSubed= isSubed ?? this.isSubed
			..hint= hint ?? this.hint
			..more= more ?? this.more
			..msgs= msgs ?? this.msgs;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PrivateHistoryMsgs {
	PrivateHistoryMsgsFromUser? fromUser;
	PrivateHistoryMsgsToUser? toUser;
	dynamic realFromUser;
	String? msg;
	dynamic tipsInfo;
	dynamic refPrivateMsgData;
	int? batchId;
	int? time;
	int? id;

	PrivateHistoryMsgs();

	factory PrivateHistoryMsgs.fromJson(Map<String, dynamic> json) => $PrivateHistoryMsgsFromJson(json);

	Map<String, dynamic> toJson() => $PrivateHistoryMsgsToJson(this);

	PrivateHistoryMsgs copyWith({PrivateHistoryMsgsFromUser? fromUser, PrivateHistoryMsgsToUser? toUser, dynamic realFromUser, String? msg, dynamic tipsInfo, dynamic refPrivateMsgData, int? batchId, int? time, int? id}) {
		return PrivateHistoryMsgs()
			..fromUser= fromUser ?? this.fromUser
			..toUser= toUser ?? this.toUser
			..realFromUser= realFromUser ?? this.realFromUser
			..msg= msg ?? this.msg
			..tipsInfo= tipsInfo ?? this.tipsInfo
			..refPrivateMsgData= refPrivateMsgData ?? this.refPrivateMsgData
			..batchId= batchId ?? this.batchId
			..time= time ?? this.time
			..id= id ?? this.id;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PrivateHistoryMsgsFromUser {
	int? gender;
	int? avatarImgId;
	String? detailDescription;
	bool? defaultAvatar;
	int? djStatus;
	String? backgroundUrl;
	int? backgroundImgId;
	int? birthday;
	int? accountStatus;
	int? city;
	String? avatarImgIdStr;
	String? backgroundImgIdStr;
	int? userType;
	dynamic avatarDetail;
	String? nickname;
	bool? followed;
	String? avatarUrl;
	int? province;
	int? vipType;
	int? authStatus;
	dynamic expertTags;
	dynamic remarkName;
	dynamic experts;
	bool? mutual;
	int? userId;
	String? description;
	String? signature;
	int? authority;

	PrivateHistoryMsgsFromUser();

	factory PrivateHistoryMsgsFromUser.fromJson(Map<String, dynamic> json) => $PrivateHistoryMsgsFromUserFromJson(json);

	Map<String, dynamic> toJson() => $PrivateHistoryMsgsFromUserToJson(this);

	PrivateHistoryMsgsFromUser copyWith({int? gender, int? avatarImgId, String? detailDescription, bool? defaultAvatar, int? djStatus, String? backgroundUrl, int? backgroundImgId, int? birthday, int? accountStatus, int? city, String? avatarImgIdStr, String? backgroundImgIdStr, int? userType, dynamic avatarDetail, String? nickname, bool? followed, String? avatarUrl, int? province, int? vipType, int? authStatus, dynamic expertTags, dynamic remarkName, dynamic experts, bool? mutual, int? userId, String? description, String? signature, int? authority}) {
		return PrivateHistoryMsgsFromUser()
			..gender= gender ?? this.gender
			..avatarImgId= avatarImgId ?? this.avatarImgId
			..detailDescription= detailDescription ?? this.detailDescription
			..defaultAvatar= defaultAvatar ?? this.defaultAvatar
			..djStatus= djStatus ?? this.djStatus
			..backgroundUrl= backgroundUrl ?? this.backgroundUrl
			..backgroundImgId= backgroundImgId ?? this.backgroundImgId
			..birthday= birthday ?? this.birthday
			..accountStatus= accountStatus ?? this.accountStatus
			..city= city ?? this.city
			..avatarImgIdStr= avatarImgIdStr ?? this.avatarImgIdStr
			..backgroundImgIdStr= backgroundImgIdStr ?? this.backgroundImgIdStr
			..userType= userType ?? this.userType
			..avatarDetail= avatarDetail ?? this.avatarDetail
			..nickname= nickname ?? this.nickname
			..followed= followed ?? this.followed
			..avatarUrl= avatarUrl ?? this.avatarUrl
			..province= province ?? this.province
			..vipType= vipType ?? this.vipType
			..authStatus= authStatus ?? this.authStatus
			..expertTags= expertTags ?? this.expertTags
			..remarkName= remarkName ?? this.remarkName
			..experts= experts ?? this.experts
			..mutual= mutual ?? this.mutual
			..userId= userId ?? this.userId
			..description= description ?? this.description
			..signature= signature ?? this.signature
			..authority= authority ?? this.authority;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PrivateHistoryMsgsToUser {
	int? gender;
	int? avatarImgId;
	String? detailDescription;
	bool? defaultAvatar;
	int? djStatus;
	String? backgroundUrl;
	int? backgroundImgId;
	int? birthday;
	int? accountStatus;
	int? city;
	String? avatarImgIdStr;
	String? backgroundImgIdStr;
	int? userType;
	dynamic avatarDetail;
	String? nickname;
	bool? followed;
	String? avatarUrl;
	int? province;
	int? vipType;
	int? authStatus;
	dynamic expertTags;
	dynamic remarkName;
	dynamic experts;
	bool? mutual;
	int? userId;
	String? description;
	String? signature;
	int? authority;

	PrivateHistoryMsgsToUser();

	factory PrivateHistoryMsgsToUser.fromJson(Map<String, dynamic> json) => $PrivateHistoryMsgsToUserFromJson(json);

	Map<String, dynamic> toJson() => $PrivateHistoryMsgsToUserToJson(this);

	PrivateHistoryMsgsToUser copyWith({int? gender, int? avatarImgId, String? detailDescription, bool? defaultAvatar, int? djStatus, String? backgroundUrl, int? backgroundImgId, int? birthday, int? accountStatus, int? city, String? avatarImgIdStr, String? backgroundImgIdStr, int? userType, dynamic avatarDetail, String? nickname, bool? followed, String? avatarUrl, int? province, int? vipType, int? authStatus, dynamic expertTags, dynamic remarkName, dynamic experts, bool? mutual, int? userId, String? description, String? signature, int? authority}) {
		return PrivateHistoryMsgsToUser()
			..gender= gender ?? this.gender
			..avatarImgId= avatarImgId ?? this.avatarImgId
			..detailDescription= detailDescription ?? this.detailDescription
			..defaultAvatar= defaultAvatar ?? this.defaultAvatar
			..djStatus= djStatus ?? this.djStatus
			..backgroundUrl= backgroundUrl ?? this.backgroundUrl
			..backgroundImgId= backgroundImgId ?? this.backgroundImgId
			..birthday= birthday ?? this.birthday
			..accountStatus= accountStatus ?? this.accountStatus
			..city= city ?? this.city
			..avatarImgIdStr= avatarImgIdStr ?? this.avatarImgIdStr
			..backgroundImgIdStr= backgroundImgIdStr ?? this.backgroundImgIdStr
			..userType= userType ?? this.userType
			..avatarDetail= avatarDetail ?? this.avatarDetail
			..nickname= nickname ?? this.nickname
			..followed= followed ?? this.followed
			..avatarUrl= avatarUrl ?? this.avatarUrl
			..province= province ?? this.province
			..vipType= vipType ?? this.vipType
			..authStatus= authStatus ?? this.authStatus
			..expertTags= expertTags ?? this.expertTags
			..remarkName= remarkName ?? this.remarkName
			..experts= experts ?? this.experts
			..mutual= mutual ?? this.mutual
			..userId= userId ?? this.userId
			..description= description ?? this.description
			..signature= signature ?? this.signature
			..authority= authority ?? this.authority;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}