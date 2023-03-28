import 'package:music/api/http_service.dart';
import 'package:music/pages/common/base_content_view_model.dart';

import '../../entity/album_view_data.dart';

class AlbumDetailViewModel extends BaseContentViewModel<AlbumViewData> {
  final int id;

  AlbumDetailViewModel(this.id) {
    loadContent();
  }

  @override
  Future<AlbumViewData?> getContent() {
    return HttpService.instance.getAlbumDetail(id);
  }

  ///收藏专辑
  void collect() {
    HttpService.instance
        .collectAlbum(id, !(optional?.data?.albumDynamicEntity.isSub ?? false));
    if (optional?.data?.albumDynamicEntity.isSub == true) {
      optional?.data?.albumDynamicEntity.removeToSub();
    } else {
      optional?.data?.albumDynamicEntity.addToSub();
    }
    notifyListeners();
  }
}
