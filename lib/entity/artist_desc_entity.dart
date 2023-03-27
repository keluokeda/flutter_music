import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/artist_desc_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class ArtistDescEntity {
	List<ArtistDescIntroduction>? introduction;
	String? briefDesc;
	int? count;
	List<ArtistDescTopicData>? topicData;
	int? code;

	ArtistDescEntity();

	factory ArtistDescEntity.fromJson(Map<String, dynamic> json) => $ArtistDescEntityFromJson(json);

	Map<String, dynamic> toJson() => $ArtistDescEntityToJson(this);

	ArtistDescEntity copyWith({List<ArtistDescIntroduction>? introduction, String? briefDesc, int? count, List<ArtistDescTopicData>? topicData, int? code}) {
		return ArtistDescEntity()
			..introduction= introduction ?? this.introduction
			..briefDesc= briefDesc ?? this.briefDesc
			..count= count ?? this.count
			..topicData= topicData ?? this.topicData
			..code= code ?? this.code;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ArtistDescIntroduction {
	String? ti;
	String? txt;

	ArtistDescIntroduction();

	factory ArtistDescIntroduction.fromJson(Map<String, dynamic> json) => $ArtistDescIntroductionFromJson(json);

	Map<String, dynamic> toJson() => $ArtistDescIntroductionToJson(this);

	ArtistDescIntroduction copyWith({String? ti, String? txt}) {
		return ArtistDescIntroduction()
			..ti= ti ?? this.ti
			..txt= txt ?? this.txt;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ArtistDescTopicData {
	ArtistDescTopicDataTopic? topic;
	ArtistDescTopicDataCreator? creator;
	int? shareCount;
	int? commentCount;
	int? likedCount;
	bool? liked;
	int? rewardCount;
	int? rewardMoney;
	dynamic relatedResource;
	String? rectanglePicUrl;
	String? coverUrl;
	int? categoryId;
	String? categoryName;
	String? mainTitle;
	String? commentThreadId;
	bool? reward;
	String? shareContent;
	String? wxTitle;
	int? addTime;
	int? seriesId;
	bool? showComment;
	bool? showRelated;
	dynamic memo;
	String? summary;
	String? recmdTitle;
	String? recmdContent;
	int? readCount;
	String? url;
	List<String>? tags;
	String? title;
	int? id;
	int? number;

	ArtistDescTopicData();

	factory ArtistDescTopicData.fromJson(Map<String, dynamic> json) => $ArtistDescTopicDataFromJson(json);

	Map<String, dynamic> toJson() => $ArtistDescTopicDataToJson(this);

	ArtistDescTopicData copyWith({ArtistDescTopicDataTopic? topic, ArtistDescTopicDataCreator? creator, int? shareCount, int? commentCount, int? likedCount, bool? liked, int? rewardCount, int? rewardMoney, dynamic relatedResource, String? rectanglePicUrl, String? coverUrl, int? categoryId, String? categoryName, String? mainTitle, String? commentThreadId, bool? reward, String? shareContent, String? wxTitle, int? addTime, int? seriesId, bool? showComment, bool? showRelated, dynamic memo, String? summary, String? recmdTitle, String? recmdContent, int? readCount, String? url, List<String>? tags, String? title, int? id, int? number}) {
		return ArtistDescTopicData()
			..topic= topic ?? this.topic
			..creator= creator ?? this.creator
			..shareCount= shareCount ?? this.shareCount
			..commentCount= commentCount ?? this.commentCount
			..likedCount= likedCount ?? this.likedCount
			..liked= liked ?? this.liked
			..rewardCount= rewardCount ?? this.rewardCount
			..rewardMoney= rewardMoney ?? this.rewardMoney
			..relatedResource= relatedResource ?? this.relatedResource
			..rectanglePicUrl= rectanglePicUrl ?? this.rectanglePicUrl
			..coverUrl= coverUrl ?? this.coverUrl
			..categoryId= categoryId ?? this.categoryId
			..categoryName= categoryName ?? this.categoryName
			..mainTitle= mainTitle ?? this.mainTitle
			..commentThreadId= commentThreadId ?? this.commentThreadId
			..reward= reward ?? this.reward
			..shareContent= shareContent ?? this.shareContent
			..wxTitle= wxTitle ?? this.wxTitle
			..addTime= addTime ?? this.addTime
			..seriesId= seriesId ?? this.seriesId
			..showComment= showComment ?? this.showComment
			..showRelated= showRelated ?? this.showRelated
			..memo= memo ?? this.memo
			..summary= summary ?? this.summary
			..recmdTitle= recmdTitle ?? this.recmdTitle
			..recmdContent= recmdContent ?? this.recmdContent
			..readCount= readCount ?? this.readCount
			..url= url ?? this.url
			..tags= tags ?? this.tags
			..title= title ?? this.title
			..id= id ?? this.id
			..number= number ?? this.number;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ArtistDescTopicDataTopic {
	int? id;
	int? addTime;
	String? mainTitle;
	String? title;
	List<ArtistDescTopicDataTopicContent>? content;
	int? userId;
	int? cover;
	int? headPic;
	String? shareContent;
	String? wxTitle;
	bool? showComment;
	int? status;
	int? seriesId;
	int? pubTime;
	int? readCount;
	List<String>? tags;
	bool? pubImmidiatly;
	String? auditor;
	int? auditTime;
	int? auditStatus;
	String? startText;
	String? delReason;
	bool? showRelated;
	bool? fromBackend;
	int? rectanglePic;
	int? updateTime;
	bool? reward;
	String? summary;
	dynamic memo;
	String? adInfo;
	int? categoryId;
	int? hotScore;
	String? recomdTitle;
	String? recomdContent;
	int? number;

	ArtistDescTopicDataTopic();

	factory ArtistDescTopicDataTopic.fromJson(Map<String, dynamic> json) => $ArtistDescTopicDataTopicFromJson(json);

	Map<String, dynamic> toJson() => $ArtistDescTopicDataTopicToJson(this);

	ArtistDescTopicDataTopic copyWith({int? id, int? addTime, String? mainTitle, String? title, List<ArtistDescTopicDataTopicContent>? content, int? userId, int? cover, int? headPic, String? shareContent, String? wxTitle, bool? showComment, int? status, int? seriesId, int? pubTime, int? readCount, List<String>? tags, bool? pubImmidiatly, String? auditor, int? auditTime, int? auditStatus, String? startText, String? delReason, bool? showRelated, bool? fromBackend, int? rectanglePic, int? updateTime, bool? reward, String? summary, dynamic memo, String? adInfo, int? categoryId, int? hotScore, String? recomdTitle, String? recomdContent, int? number}) {
		return ArtistDescTopicDataTopic()
			..id= id ?? this.id
			..addTime= addTime ?? this.addTime
			..mainTitle= mainTitle ?? this.mainTitle
			..title= title ?? this.title
			..content= content ?? this.content
			..userId= userId ?? this.userId
			..cover= cover ?? this.cover
			..headPic= headPic ?? this.headPic
			..shareContent= shareContent ?? this.shareContent
			..wxTitle= wxTitle ?? this.wxTitle
			..showComment= showComment ?? this.showComment
			..status= status ?? this.status
			..seriesId= seriesId ?? this.seriesId
			..pubTime= pubTime ?? this.pubTime
			..readCount= readCount ?? this.readCount
			..tags= tags ?? this.tags
			..pubImmidiatly= pubImmidiatly ?? this.pubImmidiatly
			..auditor= auditor ?? this.auditor
			..auditTime= auditTime ?? this.auditTime
			..auditStatus= auditStatus ?? this.auditStatus
			..startText= startText ?? this.startText
			..delReason= delReason ?? this.delReason
			..showRelated= showRelated ?? this.showRelated
			..fromBackend= fromBackend ?? this.fromBackend
			..rectanglePic= rectanglePic ?? this.rectanglePic
			..updateTime= updateTime ?? this.updateTime
			..reward= reward ?? this.reward
			..summary= summary ?? this.summary
			..memo= memo ?? this.memo
			..adInfo= adInfo ?? this.adInfo
			..categoryId= categoryId ?? this.categoryId
			..hotScore= hotScore ?? this.hotScore
			..recomdTitle= recomdTitle ?? this.recomdTitle
			..recomdContent= recomdContent ?? this.recomdContent
			..number= number ?? this.number;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ArtistDescTopicDataTopicContent {
	int? type;
	int? id;
	String? content;

	ArtistDescTopicDataTopicContent();

	factory ArtistDescTopicDataTopicContent.fromJson(Map<String, dynamic> json) => $ArtistDescTopicDataTopicContentFromJson(json);

	Map<String, dynamic> toJson() => $ArtistDescTopicDataTopicContentToJson(this);

	ArtistDescTopicDataTopicContent copyWith({int? type, int? id, String? content}) {
		return ArtistDescTopicDataTopicContent()
			..type= type ?? this.type
			..id= id ?? this.id
			..content= content ?? this.content;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ArtistDescTopicDataCreator {
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
	String? description;
	String? detailDescription;
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

	ArtistDescTopicDataCreator();

	factory ArtistDescTopicDataCreator.fromJson(Map<String, dynamic> json) => $ArtistDescTopicDataCreatorFromJson(json);

	Map<String, dynamic> toJson() => $ArtistDescTopicDataCreatorToJson(this);

	ArtistDescTopicDataCreator copyWith({int? userId, int? userType, String? nickname, int? avatarImgId, String? avatarUrl, int? backgroundImgId, String? backgroundUrl, String? signature, int? createTime, String? userName, int? accountType, String? shortUserName, int? birthday, int? authority, int? gender, int? accountStatus, int? province, int? city, int? authStatus, String? description, String? detailDescription, bool? defaultAvatar, dynamic expertTags, dynamic experts, int? djStatus, int? locationStatus, int? vipType, bool? followed, bool? mutual, bool? authenticated, int? lastLoginTime, String? lastLoginIP, dynamic remarkName, int? viptypeVersion, int? authenticationTypes, dynamic avatarDetail, bool? anchor}) {
		return ArtistDescTopicDataCreator()
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