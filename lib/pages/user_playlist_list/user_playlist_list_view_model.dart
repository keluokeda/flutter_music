import 'dart:async';

import 'package:music/api/data_store.dart';
import 'package:music/api/http_service.dart';
import 'package:music/event/playlist_songs_updated_event.dart';
import 'package:music/main.dart';
import 'package:music/pages/common/base_content_view_model.dart';

import '../../entity/user_playlist_entity.dart';

class UserPlaylistListViewModel
    extends BaseContentViewModel<List<UserPlaylistPlaylist>> {
  late StreamSubscription<PlaylistSongsUpdatedEvent> subscription;

  @override
  Future<List<UserPlaylistPlaylist>?> getContent() async {
    final entity = await HttpService.instance
        .getUserPlayList(DataStore.instance.getUserId() ?? 0);
    final list = entity?.playlist;
    if (list == null) {
      return null;
    }

    list.removeWhere(
        (element) => element.userId != DataStore.instance.getUserId());

    return list;
  }

  UserPlaylistListViewModel() {
    loadContent();

    subscription = eventBus.on<PlaylistSongsUpdatedEvent>().listen((event) {});
  }

  @override
  void dispose() {
    super.dispose();
    subscription.cancel();
  }
}
