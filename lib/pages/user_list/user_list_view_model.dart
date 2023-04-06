import 'package:music/api/http_service.dart';
import 'package:music/entity/load_list_result.dart';
import 'package:music/entity/user_list_type.dart';
import 'package:music/pages/common/base_refresh_and_load_more_view_model.dart';

import '../../entity/user_item.dart';

class UserListViewModel extends BaseRefreshAndLoadMoreViewModel<UserItem> {
  final int id;
  final UserListType userListType;

  UserListViewModel(this.id, this.userListType);

  @override
  Future<LoadListResult<UserItem>> getList(int index) async {
    if (userListType == UserListType.followeds) {
      final entity = await HttpService.instance.getUserFolloweds(id, index);

      return LoadListResult(
          entity?.followeds?.map((e) => e.toUserItem()).toList() ?? [],
          entity?.more ?? false);
    } else if (userListType == UserListType.follows) {
      final entity = await HttpService.instance.getUserFollows(id, index);

      return LoadListResult(
          entity?.follow?.map((e) => e.toUserItem()).toList() ?? [],
          entity?.more ?? false);
    } else if (userListType == UserListType.playlistSubscribers) {
      final entity = await HttpService.instance.playlistSubscribers(id, index);
      return LoadListResult(
          entity?.subscribers?.map((e) => e.toUserItem()).toList() ?? [],
          entity?.more ?? false);
    }

    return const LoadListResult([], false);
  }

  ///关注或取关用户
  void followUser(UserItem userItem) {
    HttpService.instance.followUser(userItem.id, !userItem.followed);
    userItem.followed = !userItem.followed;
    notifyListeners();
  }
}
