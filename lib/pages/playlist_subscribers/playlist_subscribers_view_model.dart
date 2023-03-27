import 'package:easy_refresh/easy_refresh.dart';
import 'package:music/api/http_service.dart';
import 'package:music/entity/load_list_result.dart';
import 'package:music/entity/playlist_subscribers_entity.dart';
import 'package:music/pages/common/base_refreah_and_load_more_view_model.dart';

class PlaylistSubscribersViewModel
    extends BaseRefreshAndLoadMoreViewModel<PlaylistSubscribersSubscribers> {
  final int id;

  PlaylistSubscribersViewModel(this.id);

  @override
  Future<LoadListResult<PlaylistSubscribersSubscribers>> getList(
      int index) async {
    final entity = await HttpService.instance.playlistSubscribers(id, index);
    return LoadListResult(entity?.subscribers ?? [], entity?.more ?? false);
  }

  ///切换关注状态
  void toggleFollow(PlaylistSubscribersSubscribers user) async {
    user.followed = !(user.followed ?? false);
    notifyListeners();
    await HttpService.instance.followUser(user.userId ?? 0, user.followed!);
  }
}
