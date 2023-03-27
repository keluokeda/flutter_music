import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/playlist_category_entity.dart';

PlaylistCategoryEntity $PlaylistCategoryEntityFromJson(Map<String, dynamic> json) {
	final PlaylistCategoryEntity playlistCategoryEntity = PlaylistCategoryEntity();
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		playlistCategoryEntity.code = code;
	}
	final PlaylistCategoryAll? all = jsonConvert.convert<PlaylistCategoryAll>(json['all']);
	if (all != null) {
		playlistCategoryEntity.all = all;
	}
	final List<PlaylistCategorySub>? sub = jsonConvert.convertListNotNull<PlaylistCategorySub>(json['sub']);
	if (sub != null) {
		playlistCategoryEntity.sub = sub;
	}
	final PlaylistCategoryCategories? categories = jsonConvert.convert<PlaylistCategoryCategories>(json['categories']);
	if (categories != null) {
		playlistCategoryEntity.categories = categories;
	}
	return playlistCategoryEntity;
}

Map<String, dynamic> $PlaylistCategoryEntityToJson(PlaylistCategoryEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['code'] = entity.code;
	data['all'] = entity.all?.toJson();
	data['sub'] =  entity.sub?.map((v) => v.toJson()).toList();
	data['categories'] = entity.categories?.toJson();
	return data;
}

PlaylistCategoryAll $PlaylistCategoryAllFromJson(Map<String, dynamic> json) {
	final PlaylistCategoryAll playlistCategoryAll = PlaylistCategoryAll();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		playlistCategoryAll.name = name;
	}
	final int? resourceCount = jsonConvert.convert<int>(json['resourceCount']);
	if (resourceCount != null) {
		playlistCategoryAll.resourceCount = resourceCount;
	}
	final int? imgId = jsonConvert.convert<int>(json['imgId']);
	if (imgId != null) {
		playlistCategoryAll.imgId = imgId;
	}
	final dynamic imgUrl = jsonConvert.convert<dynamic>(json['imgUrl']);
	if (imgUrl != null) {
		playlistCategoryAll.imgUrl = imgUrl;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		playlistCategoryAll.type = type;
	}
	final int? category = jsonConvert.convert<int>(json['category']);
	if (category != null) {
		playlistCategoryAll.category = category;
	}
	final int? resourceType = jsonConvert.convert<int>(json['resourceType']);
	if (resourceType != null) {
		playlistCategoryAll.resourceType = resourceType;
	}
	final bool? hot = jsonConvert.convert<bool>(json['hot']);
	if (hot != null) {
		playlistCategoryAll.hot = hot;
	}
	final bool? activity = jsonConvert.convert<bool>(json['activity']);
	if (activity != null) {
		playlistCategoryAll.activity = activity;
	}
	return playlistCategoryAll;
}

Map<String, dynamic> $PlaylistCategoryAllToJson(PlaylistCategoryAll entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	data['resourceCount'] = entity.resourceCount;
	data['imgId'] = entity.imgId;
	data['imgUrl'] = entity.imgUrl;
	data['type'] = entity.type;
	data['category'] = entity.category;
	data['resourceType'] = entity.resourceType;
	data['hot'] = entity.hot;
	data['activity'] = entity.activity;
	return data;
}

PlaylistCategorySub $PlaylistCategorySubFromJson(Map<String, dynamic> json) {
	final PlaylistCategorySub playlistCategorySub = PlaylistCategorySub();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		playlistCategorySub.name = name;
	}
	final int? resourceCount = jsonConvert.convert<int>(json['resourceCount']);
	if (resourceCount != null) {
		playlistCategorySub.resourceCount = resourceCount;
	}
	final int? imgId = jsonConvert.convert<int>(json['imgId']);
	if (imgId != null) {
		playlistCategorySub.imgId = imgId;
	}
	final dynamic imgUrl = jsonConvert.convert<dynamic>(json['imgUrl']);
	if (imgUrl != null) {
		playlistCategorySub.imgUrl = imgUrl;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		playlistCategorySub.type = type;
	}
	final int? category = jsonConvert.convert<int>(json['category']);
	if (category != null) {
		playlistCategorySub.category = category;
	}
	final int? resourceType = jsonConvert.convert<int>(json['resourceType']);
	if (resourceType != null) {
		playlistCategorySub.resourceType = resourceType;
	}
	final bool? hot = jsonConvert.convert<bool>(json['hot']);
	if (hot != null) {
		playlistCategorySub.hot = hot;
	}
	final bool? activity = jsonConvert.convert<bool>(json['activity']);
	if (activity != null) {
		playlistCategorySub.activity = activity;
	}
	return playlistCategorySub;
}

Map<String, dynamic> $PlaylistCategorySubToJson(PlaylistCategorySub entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	data['resourceCount'] = entity.resourceCount;
	data['imgId'] = entity.imgId;
	data['imgUrl'] = entity.imgUrl;
	data['type'] = entity.type;
	data['category'] = entity.category;
	data['resourceType'] = entity.resourceType;
	data['hot'] = entity.hot;
	data['activity'] = entity.activity;
	return data;
}

PlaylistCategoryCategories $PlaylistCategoryCategoriesFromJson(Map<String, dynamic> json) {
	final PlaylistCategoryCategories playlistCategoryCategories = PlaylistCategoryCategories();
	final String? x0 = jsonConvert.convert<String>(json['0']);
	if (x0 != null) {
		playlistCategoryCategories.x0 = x0;
	}
	final String? x1 = jsonConvert.convert<String>(json['1']);
	if (x1 != null) {
		playlistCategoryCategories.x1 = x1;
	}
	final String? x2 = jsonConvert.convert<String>(json['2']);
	if (x2 != null) {
		playlistCategoryCategories.x2 = x2;
	}
	final String? x3 = jsonConvert.convert<String>(json['3']);
	if (x3 != null) {
		playlistCategoryCategories.x3 = x3;
	}
	final String? x4 = jsonConvert.convert<String>(json['4']);
	if (x4 != null) {
		playlistCategoryCategories.x4 = x4;
	}
	return playlistCategoryCategories;
}

Map<String, dynamic> $PlaylistCategoryCategoriesToJson(PlaylistCategoryCategories entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['0'] = entity.x0;
	data['1'] = entity.x1;
	data['2'] = entity.x2;
	data['3'] = entity.x3;
	data['4'] = entity.x4;
	return data;
}