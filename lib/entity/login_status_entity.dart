import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/login_status_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class LoginStatusEntity {
	LoginStatusData? data;

	LoginStatusEntity();

	factory LoginStatusEntity.fromJson(Map<String, dynamic> json) => $LoginStatusEntityFromJson(json);

	Map<String, dynamic> toJson() => $LoginStatusEntityToJson(this);

	LoginStatusEntity copyWith({LoginStatusData? data}) {
		return LoginStatusEntity()
			..data= data ?? this.data;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LoginStatusData {
	int? code;
	LoginStatusDataAccount? account;
	LoginStatusDataProfile? profile;

	LoginStatusData();

	factory LoginStatusData.fromJson(Map<String, dynamic> json) => $LoginStatusDataFromJson(json);

	Map<String, dynamic> toJson() => $LoginStatusDataToJson(this);

	LoginStatusData copyWith({int? code, LoginStatusDataAccount? account, LoginStatusDataProfile? profile}) {
		return LoginStatusData()
			..code= code ?? this.code
			..account= account ?? this.account
			..profile= profile ?? this.profile;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LoginStatusDataAccount {
	int? id;
	String? userName;
	int? type;
	int? status;
	int? whitelistAuthority;
	int? createTime;
	int? tokenVersion;
	int? ban;
	int? baoyueVersion;
	int? donateVersion;
	int? vipType;
	bool? anonimousUser;
	bool? paidFee;

	LoginStatusDataAccount();

	factory LoginStatusDataAccount.fromJson(Map<String, dynamic> json) => $LoginStatusDataAccountFromJson(json);

	Map<String, dynamic> toJson() => $LoginStatusDataAccountToJson(this);

	LoginStatusDataAccount copyWith({int? id, String? userName, int? type, int? status, int? whitelistAuthority, int? createTime, int? tokenVersion, int? ban, int? baoyueVersion, int? donateVersion, int? vipType, bool? anonimousUser, bool? paidFee}) {
		return LoginStatusDataAccount()
			..id= id ?? this.id
			..userName= userName ?? this.userName
			..type= type ?? this.type
			..status= status ?? this.status
			..whitelistAuthority= whitelistAuthority ?? this.whitelistAuthority
			..createTime= createTime ?? this.createTime
			..tokenVersion= tokenVersion ?? this.tokenVersion
			..ban= ban ?? this.ban
			..baoyueVersion= baoyueVersion ?? this.baoyueVersion
			..donateVersion= donateVersion ?? this.donateVersion
			..vipType= vipType ?? this.vipType
			..anonimousUser= anonimousUser ?? this.anonimousUser
			..paidFee= paidFee ?? this.paidFee;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LoginStatusDataProfile {
	int? userId;
	int? userType;
	String? nickname;
	int? avatarImgId;
	String? avatarUrl;
	int? backgroundImgId;
	String? backgroundUrl;
	String? signature;
	int? createTime;
	String? userName;
	int? accountType;
	String? shortUserName;
	int? birthday;
	int? authority;
	int? gender;
	int? accountStatus;
	int? province;
	int? city;
	int? authStatus;
	dynamic description;
	dynamic detailDescription;
	bool? defaultAvatar;
	dynamic expertTags;
	dynamic experts;
	int? djStatus;
	int? locationStatus;
	int? vipType;
	bool? followed;
	bool? mutual;
	bool? authenticated;
	int? lastLoginTime;
	String? lastLoginIP;
	dynamic remarkName;
	int? viptypeVersion;
	int? authenticationTypes;
	dynamic avatarDetail;
	bool? anchor;

	LoginStatusDataProfile();

	factory LoginStatusDataProfile.fromJson(Map<String, dynamic> json) => $LoginStatusDataProfileFromJson(json);

	Map<String, dynamic> toJson() => $LoginStatusDataProfileToJson(this);

	LoginStatusDataProfile copyWith({int? userId, int? userType, String? nickname, int? avatarImgId, String? avatarUrl, int? backgroundImgId, String? backgroundUrl, String? signature, int? createTime, String? userName, int? accountType, String? shortUserName, int? birthday, int? authority, int? gender, int? accountStatus, int? province, int? city, int? authStatus, dynamic description, dynamic detailDescription, bool? defaultAvatar, dynamic expertTags, dynamic experts, int? djStatus, int? locationStatus, int? vipType, bool? followed, bool? mutual, bool? authenticated, int? lastLoginTime, String? lastLoginIP, dynamic remarkName, int? viptypeVersion, int? authenticationTypes, dynamic avatarDetail, bool? anchor}) {
		return LoginStatusDataProfile()
			..userId= userId ?? this.userId
			..userType= userType ?? this.userType
			..nickname= nickname ?? this.nickname
			..avatarImgId= avatarImgId ?? this.avatarImgId
			..avatarUrl= avatarUrl ?? this.avatarUrl
			..backgroundImgId= backgroundImgId ?? this.backgroundImgId
			..backgroundUrl= backgroundUrl ?? this.backgroundUrl
			..signature= signature ?? this.signature
			..createTime= createTime ?? this.createTime
			..userName= userName ?? this.userName
			..accountType= accountType ?? this.accountType
			..shortUserName= shortUserName ?? this.shortUserName
			..birthday= birthday ?? this.birthday
			..authority= authority ?? this.authority
			..gender= gender ?? this.gender
			..accountStatus= accountStatus ?? this.accountStatus
			..province= province ?? this.province
			..city= city ?? this.city
			..authStatus= authStatus ?? this.authStatus
			..description= description ?? this.description
			..detailDescription= detailDescription ?? this.detailDescription
			..defaultAvatar= defaultAvatar ?? this.defaultAvatar
			..expertTags= expertTags ?? this.expertTags
			..experts= experts ?? this.experts
			..djStatus= djStatus ?? this.djStatus
			..locationStatus= locationStatus ?? this.locationStatus
			..vipType= vipType ?? this.vipType
			..followed= followed ?? this.followed
			..mutual= mutual ?? this.mutual
			..authenticated= authenticated ?? this.authenticated
			..lastLoginTime= lastLoginTime ?? this.lastLoginTime
			..lastLoginIP= lastLoginIP ?? this.lastLoginIP
			..remarkName= remarkName ?? this.remarkName
			..viptypeVersion= viptypeVersion ?? this.viptypeVersion
			..authenticationTypes= authenticationTypes ?? this.authenticationTypes
			..avatarDetail= avatarDetail ?? this.avatarDetail
			..anchor= anchor ?? this.anchor;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}