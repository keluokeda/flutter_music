import 'package:music/api/http_service.dart';
import 'package:music/pages/common/base_content_view_model.dart';

import '../../entity/playlist_category_entity.dart';

class PlaylistCategoryViewModel
    extends BaseContentViewModel<PlaylistCategoryEntity> {
  @override
  Future<PlaylistCategoryEntity?> getContent() {
    return HttpService.instance.getPlaylistCategoryList();
  }

  PlaylistCategoryViewModel() {
    loadContent();
  }
}
