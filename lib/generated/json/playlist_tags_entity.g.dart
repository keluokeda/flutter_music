import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/entity/playlist_tags_entity.dart';

PlaylistTagsEntity $PlaylistTagsEntityFromJson(Map<String, dynamic> json) {
	final PlaylistTagsEntity playlistTagsEntity = PlaylistTagsEntity();
	final List<PlaylistTagsTags>? tags = jsonConvert.convertListNotNull<PlaylistTagsTags>(json['tags']);
	if (tags != null) {
		playlistTagsEntity.tags = tags;
	}
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		playlistTagsEntity.code = code;
	}
	return playlistTagsEntity;
}

Map<String, dynamic> $PlaylistTagsEntityToJson(PlaylistTagsEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['tags'] =  entity.tags?.map((v) => v.toJson()).toList();
	data['code'] = entity.code;
	return data;
}

PlaylistTagsTags $PlaylistTagsTagsFromJson(Map<String, dynamic> json) {
	final PlaylistTagsTags playlistTagsTags = PlaylistTagsTags();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		playlistTagsTags.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		playlistTagsTags.name = name;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		playlistTagsTags.type = type;
	}
	final int? category = jsonConvert.convert<int>(json['category']);
	if (category != null) {
		playlistTagsTags.category = category;
	}
	final bool? hot = jsonConvert.convert<bool>(json['hot']);
	if (hot != null) {
		playlistTagsTags.hot = hot;
	}
	final bool? checked = jsonConvert.convert<bool>(json['checked']);
	if (checked != null) {
		playlistTagsTags.checked = checked;
	}
	return playlistTagsTags;
}

Map<String, dynamic> $PlaylistTagsTagsToJson(PlaylistTagsTags entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['type'] = entity.type;
	data['category'] = entity.category;
	data['hot'] = entity.hot;
	data['checked'] = entity.checked;
	return data;
}