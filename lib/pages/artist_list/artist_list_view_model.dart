import 'package:music/api/http_service.dart';
import 'package:music/entity/load_list_result.dart';
import 'package:music/pages/common/base_refresh_and_load_more_view_model.dart';

import '../../entity/artist_list_entity.dart';

class ArtistListViewModel
    extends BaseRefreshAndLoadMoreViewModel<ArtistListArtists> {
  int _type = -1;
  int _area = -1;

  int get type => _type;

  int get area => _area;

  void updateType(int t) {
    _type = t;
    callRefresh();
  }

  void updateArea(int a) {
    _area = a;
    callRefresh();
  }

  @override
  Future<LoadListResult<ArtistListArtists>> getList(int index) async {
    final entity =
        await HttpService.instance.getArtistList(index, type: type, area: area);
    return LoadListResult(entity?.artists ?? [], entity?.more ?? false);
  }
}
