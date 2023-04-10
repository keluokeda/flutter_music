import 'package:flutter/material.dart';
import 'package:music/api/data_store.dart';
import 'package:music/api/http_service.dart';
import 'package:music/entity/user_item.dart';
import 'package:music/pages/common/base_content_view_model.dart';

import '../../entity/share_resource_type.dart';

class ShareResourceViewModel extends BaseContentViewModel<List<UserItem>> {
  final ShareResourceRequest shareResourceRequest;

  final TextEditingController controller = TextEditingController();

  @override
  Future<List<UserItem>?> getContent() async {
    final entity = await HttpService.instance
        .getUserFollows(DataStore.instance.getUserId() ?? 0, 1, limit: 100);

    return entity?.follow?.map((e) => e.toUserItem()).toList();
  }

  ShareResourceViewModel(this.shareResourceRequest) {
    loadContent();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void toggleChecked(UserItem item) {
    item.checked = !item.checked;
    notifyListeners();
  }

  Future share() async {
    final userIdList = optional?.data
            ?.where((element) => element.checked)
            .map((e) => e.id)
            .toList() ??
        [];

    if (shareResourceRequest.resourceType == ShareResourceType.playlist) {
      return await HttpService.instance
          .sharePlaylist(shareResourceRequest.id, userIdList, controller.text);
    } else if (shareResourceRequest.resourceType == ShareResourceType.song) {
      return await HttpService.instance
          .shareSong(shareResourceRequest.id, userIdList, controller.text);
    } else if (shareResourceRequest.resourceType == ShareResourceType.album) {
      return await HttpService.instance
          .shareAlbum(shareResourceRequest.id, userIdList, controller.text);
    }

    return null;
  }
}
