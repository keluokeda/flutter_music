import 'dart:async';

import 'package:music/api/data_store.dart';
import 'package:music/api/http_service.dart';
import 'package:music/entity/user_playlist_entity.dart';
import 'package:music/event/playlist_delete_event.dart';
import 'package:music/event/playlist_info_updated_event.dart';
import 'package:music/main.dart';
import 'package:music/pages/common/base_content_view_model.dart';

class UserPlaylistViewModel extends BaseContentViewModel<UserPlaylistEntity> {
  late StreamSubscription<PlaylistInfoUpdatedEvent> subscription;

  late StreamSubscription subscription1;

  @override
  Future<UserPlaylistEntity?> getContent() {
    return HttpService.instance
        .getUserPlayList(DataStore.instance.getUserId() ?? 0);
  }

  UserPlaylistViewModel() {
    loadContent();

    subscription = eventBus.on<PlaylistInfoUpdatedEvent>().listen((event) {
      loadContent();
    });

    subscription1 = eventBus.on<PlaylistDeleteEvent>().listen((event) {
      loadContent();
    });
  }

  ///删除歌单
  Future<bool> deletePlaylist(int id) async {
    final result = await HttpService.instance.deletePlayList(id);
    if (result) {
      loadContent();
    }
    return result;
  }

  @override
  void dispose() {
    super.dispose();
    subscription.cancel();
    subscription1.cancel();
  }
}
