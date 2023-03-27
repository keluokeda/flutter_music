import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/playlist_category_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class PlaylistCategoryEntity {
	int? code;
	PlaylistCategoryAll? all;
	List<PlaylistCategorySub>? sub;
	PlaylistCategoryCategories? categories;

	PlaylistCategoryEntity();

	factory PlaylistCategoryEntity.fromJson(Map<String, dynamic> json) => $PlaylistCategoryEntityFromJson(json);

	Map<String, dynamic> toJson() => $PlaylistCategoryEntityToJson(this);

	PlaylistCategoryEntity copyWith({int? code, PlaylistCategoryAll? all, List<PlaylistCategorySub>? sub, PlaylistCategoryCategories? categories}) {
		return PlaylistCategoryEntity()
			..code= code ?? this.code
			..all= all ?? this.all
			..sub= sub ?? this.sub
			..categories= categories ?? this.categories;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PlaylistCategoryAll {
	String? name;
	int? resourceCount;
	int? imgId;
	dynamic imgUrl;
	int? type;
	int? category;
	int? resourceType;
	bool? hot;
	bool? activity;

	PlaylistCategoryAll();

	factory PlaylistCategoryAll.fromJson(Map<String, dynamic> json) => $PlaylistCategoryAllFromJson(json);

	Map<String, dynamic> toJson() => $PlaylistCategoryAllToJson(this);

	PlaylistCategoryAll copyWith({String? name, int? resourceCount, int? imgId, dynamic imgUrl, int? type, int? category, int? resourceType, bool? hot, bool? activity}) {
		return PlaylistCategoryAll()
			..name= name ?? this.name
			..resourceCount= resourceCount ?? this.resourceCount
			..imgId= imgId ?? this.imgId
			..imgUrl= imgUrl ?? this.imgUrl
			..type= type ?? this.type
			..category= category ?? this.category
			..resourceType= resourceType ?? this.resourceType
			..hot= hot ?? this.hot
			..activity= activity ?? this.activity;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PlaylistCategorySub {
	String? name;
	int? resourceCount;
	int? imgId;
	dynamic imgUrl;
	int? type;
	int? category;
	int? resourceType;
	bool? hot;
	bool? activity;

	PlaylistCategorySub();

	factory PlaylistCategorySub.fromJson(Map<String, dynamic> json) => $PlaylistCategorySubFromJson(json);

	Map<String, dynamic> toJson() => $PlaylistCategorySubToJson(this);

	PlaylistCategorySub copyWith({String? name, int? resourceCount, int? imgId, dynamic imgUrl, int? type, int? category, int? resourceType, bool? hot, bool? activity}) {
		return PlaylistCategorySub()
			..name= name ?? this.name
			..resourceCount= resourceCount ?? this.resourceCount
			..imgId= imgId ?? this.imgId
			..imgUrl= imgUrl ?? this.imgUrl
			..type= type ?? this.type
			..category= category ?? this.category
			..resourceType= resourceType ?? this.resourceType
			..hot= hot ?? this.hot
			..activity= activity ?? this.activity;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PlaylistCategoryCategories {
	@JSONField(name: "0")
	String? x0;
	@JSONField(name: "1")
	String? x1;
	@JSONField(name: "2")
	String? x2;
	@JSONField(name: "3")
	String? x3;
	@JSONField(name: "4")
	String? x4;

	PlaylistCategoryCategories();

	factory PlaylistCategoryCategories.fromJson(Map<String, dynamic> json) => $PlaylistCategoryCategoriesFromJson(json);

	Map<String, dynamic> toJson() => $PlaylistCategoryCategoriesToJson(this);

	PlaylistCategoryCategories copyWith({String? x0, String? x1, String? x2, String? x3, String? x4}) {
		return PlaylistCategoryCategories()
			..x0= x0 ?? this.x0
			..x1= x1 ?? this.x1
			..x2= x2 ?? this.x2
			..x3= x3 ?? this.x3
			..x4= x4 ?? this.x4;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}