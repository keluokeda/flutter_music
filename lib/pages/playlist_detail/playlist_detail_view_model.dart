import 'dart:async';

import 'package:music/api/http_service.dart';
import 'package:music/entity/playlist_detail_view_data.dart';
import 'package:music/entity/playlist_tracks_entity.dart';
import 'package:music/event/playlist_songs_updated_event.dart';
import 'package:music/pages/common/base_content_view_model.dart';
import 'package:oktoast/oktoast.dart';

import '../../event/playlist_info_updated_event.dart';
import '../../main.dart';

class PlaylistDetailViewModel
    extends BaseContentViewModel<PlaylistDetailViewData> {
  final int id;

  late StreamSubscription<PlaylistInfoUpdatedEvent> subscription;

  late StreamSubscription<PlaylistSongsUpdatedEvent> subscription1;

  PlaylistDetailViewModel(this.id) {
    loadContent();

    subscription = eventBus.on<PlaylistInfoUpdatedEvent>().listen((event) {
      loadContent();
    });

    subscription1 = eventBus.on<PlaylistSongsUpdatedEvent>().listen((event) {
      if (event.playlistId == id) {
        loadContent();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    subscription.cancel();
    subscription1.cancel();
  }

  @override
  Future<PlaylistDetailViewData?> getContent() async {
    final entity1 = await HttpService.instance.getPlaylistDetail(id);
    if (entity1 == null) {
      return null;
    }
    final entity2 = await HttpService.instance.getPlaylistSongs(id);
    if (entity2 == null) {
      return null;
    }
    final entity3 = await HttpService.instance.getPlaylistDetailDynamic(id);
    if (entity3 == null) {
      return null;
    }

    return PlaylistDetailViewData(entity1, entity2, entity3);
  }

  ///删除歌单
  Future<bool> deletePlaylist() async {
    return await HttpService.instance.deletePlayList(id);
  }

  Future<void> toggleCollect() async {
    final entity = optional?.data?.playlistDetailDynamicEntity;
    if (entity == null) {
      return;
    }

    HttpService.instance.collectPlayList(id, entity.subscribed == false);
    entity.subscribed = !entity.subscribed!;
    notifyListeners();
  }

  //从歌单中删除某个音乐
  Future<void> deleteMusicToPlaylist(PlaylistTracksSongs song) async {
    HttpService.instance
        .insertOrRemoveMusicToPlaylist(id, song.id.toString(), false);

    optional?.data?.playlistTracksEntity.songs?.remove(song);
    notifyListeners();
  }
}
