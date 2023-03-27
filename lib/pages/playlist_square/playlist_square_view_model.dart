import 'package:music/api/http_service.dart';
import 'package:music/entity/load_list_result.dart';
import 'package:music/pages/common/base_refreah_and_load_more_view_model.dart';

import '../../entity/playlist_list_entity.dart';

class PlaylistSquareViewModel
    extends BaseRefreshAndLoadMoreViewModel<PlaylistListPlaylists> {
  String _category = '全部';

  bool get hot => _hot;

  bool _hot = true;

  String get category => _category;

  @override
  Future<LoadListResult<PlaylistListPlaylists>> getList(int index) async {
    final entity =
        await HttpService.instance.getPlaylistSquareList(index, hot, category);
    if (entity == null) {
      return const LoadListResult([], false);
    }
    return LoadListResult(entity.playlists ?? [], entity.more ?? false);
  }

  void updateCategory(String cat) {
    _category = cat;
    notifyListeners();
    callRefresh();
  }

  void updateHot(bool h) {
    _hot = h;
    callRefresh();
  }
}
