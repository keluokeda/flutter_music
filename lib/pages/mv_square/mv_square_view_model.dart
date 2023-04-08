import 'package:music/api/http_service.dart';
import 'package:music/entity/load_list_result.dart';
import 'package:music/entity/mv_item.dart';
import 'package:music/pages/common/base_refresh_and_load_more_view_model.dart';

class MVSquareViewModel extends BaseRefreshAndLoadMoreViewModel<MVItem> {
  String _area = '全部';

  String get area => _area;

  String _type = "全部";

  String get type => _type;

  @override
  Future<LoadListResult<MVItem>> getList(int index) async {
    final entity = await HttpService.instance.getAllMV(index, area, type);
    return LoadListResult(entity?.data?.map((e) => e.toMVItem()).toList() ?? [],
        entity?.hasMore ?? false);
  }

  void updateArea(String value) {
    _area = value;
    callRefresh();
    notifyListeners();
  }

  void updateType(String value) {
    _type = value;
    callRefresh();
    notifyListeners();
  }
}
