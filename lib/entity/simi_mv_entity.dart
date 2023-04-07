import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/simi_mv_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class SimiMvEntity {
	List<SimiMvMvs>? mvs;
	int? code;

	SimiMvEntity();

	factory SimiMvEntity.fromJson(Map<String, dynamic> json) => $SimiMvEntityFromJson(json);

	Map<String, dynamic> toJson() => $SimiMvEntityToJson(this);

	SimiMvEntity copyWith({List<SimiMvMvs>? mvs, int? code}) {
		return SimiMvEntity()
			..mvs= mvs ?? this.mvs
			..code= code ?? this.code;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SimiMvMvs {
	int? id;
	String? cover;
	String? name;
	int? playCount;
	dynamic briefDesc;
	dynamic desc;
	String? artistName;
	int? artistId;
	int? duration;
	int? mark;
	List<SimiMvMvsArtists>? artists;
	String? alg;

	SimiMvMvs();

	factory SimiMvMvs.fromJson(Map<String, dynamic> json) => $SimiMvMvsFromJson(json);

	Map<String, dynamic> toJson() => $SimiMvMvsToJson(this);

	SimiMvMvs copyWith({int? id, String? cover, String? name, int? playCount, dynamic briefDesc, dynamic desc, String? artistName, int? artistId, int? duration, int? mark, List<SimiMvMvsArtists>? artists, String? alg}) {
		return SimiMvMvs()
			..id= id ?? this.id
			..cover= cover ?? this.cover
			..name= name ?? this.name
			..playCount= playCount ?? this.playCount
			..briefDesc= briefDesc ?? this.briefDesc
			..desc= desc ?? this.desc
			..artistName= artistName ?? this.artistName
			..artistId= artistId ?? this.artistId
			..duration= duration ?? this.duration
			..mark= mark ?? this.mark
			..artists= artists ?? this.artists
			..alg= alg ?? this.alg;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SimiMvMvsArtists {
	int? id;
	String? name;
	List<dynamic>? alias;
	dynamic transNames;

	SimiMvMvsArtists();

	factory SimiMvMvsArtists.fromJson(Map<String, dynamic> json) => $SimiMvMvsArtistsFromJson(json);

	Map<String, dynamic> toJson() => $SimiMvMvsArtistsToJson(this);

	SimiMvMvsArtists copyWith({int? id, String? name, List<dynamic>? alias, dynamic transNames}) {
		return SimiMvMvsArtists()
			..id= id ?? this.id
			..name= name ?? this.name
			..alias= alias ?? this.alias
			..transNames= transNames ?? this.transNames;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}