import 'package:music/api/http_service.dart';
import 'package:music/entity/album_item.dart';
import 'package:music/entity/load_list_result.dart';

import '../common/base_refresh_and_load_more_view_model.dart';

class AlbumListViewModel extends BaseRefreshAndLoadMoreViewModel<AlbumItem> {
  final String area;

  AlbumListViewModel(this.area);

  @override
  Future<LoadListResult<AlbumItem>> getList(int index) async {
    final entity = await HttpService.instance.getAlbumList(index, area);

    final list = entity?.albums ?? [];

    return LoadListResult(
        list.map((e) => e.toAlbumItem()).toList(), list.isNotEmpty);
  }
}
