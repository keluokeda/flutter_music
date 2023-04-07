import 'package:music/entity/simi_mv_entity.dart';

class MVPlayEntity {
  final String videoUrl;

  ///相似的mv
  final List<SimiMvMvs> mvList;

  ///是否收藏了
  bool collected;

  bool liked;

  int likedCount;
  int shareCount;
  int commentCount;
  int subCount;
  int playCount;
  final String name;

  MVPlayEntity(
      this.videoUrl,
      this.mvList,
      this.collected,
      this.liked,
      this.likedCount,
      this.shareCount,
      this.commentCount,
      this.subCount,
      this.playCount,
      this.name);
}
