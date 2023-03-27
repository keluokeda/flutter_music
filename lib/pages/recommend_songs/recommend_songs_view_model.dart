import 'package:music/api/http_service.dart';
import 'package:music/entity/recommend_songs_entity.dart';
import 'package:music/pages/common/base_content_view_model.dart';

class RecommendSongsViewModel
    extends BaseContentViewModel<List<RecommendSongsDataDailySongs>> {
  @override
  Future<List<RecommendSongsDataDailySongs>?> getContent() async {
    final entity = await HttpService.instance.getRecommendSongs();

    return entity?.data?.dailySongs;
  }

  RecommendSongsViewModel() {
    loadContent();
  }
}
