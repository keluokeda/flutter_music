import 'package:flutter/material.dart';
import 'package:music/api/http_service.dart';
import 'package:music/entity/playlist_info_edit_view_data.dart';
import 'package:music/event/playlist_info_updated_event.dart';
import 'package:music/main.dart';
import 'package:music/pages/common/base_content_view_model.dart';
import 'package:oktoast/oktoast.dart';

import '../../entity/playlist_tags_entity.dart';

class PlaylistInfoEditViewModel
    extends BaseContentViewModel<PlaylistInfoEditViewData> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController introduceController = TextEditingController();

  final int id;

  bool _loading = false;

  ///是否处于加载中的状态
  bool get loading => _loading;

  PlaylistInfoEditViewModel(this.id) {
    loadContent();
  }

  String _coverImage = '';

  String get coverImage => _coverImage;

  void updateChip(PlaylistTagsTags tag, bool value) {
    tag.checked = value;
    notifyListeners();
  }

  ///更新
  Future<bool> update() async {
    final data = optional?.data;
    if (data == null) {
      return false;
    }
    final tags = data.tags;
    final entity = data.entity;

    _loading = true;
    notifyListeners();
    var list = <PlaylistTagsTags>[];
    list.addAll(tags);
    list.removeWhere((element) => !element.checked);
    final result = await HttpService.instance.updatePlaylistInfo(
        entity.playlist?.id ?? 0,
        nameController.text,
        introduceController.text,
        list.map((e) => e.name ?? '').toList());
    _loading = false;
    notifyListeners();
    if (result) {
      eventBus.fire(PlaylistInfoUpdatedEvent(id));
    }
    return result;
  }

  @override
  Future<PlaylistInfoEditViewData?> getContent() async {
    final entity = await HttpService.instance.getPlaylistDetail(id);
    if (entity == null) {
      return null;
    }
    _coverImage = entity.playlist?.coverImgUrl ?? '';
    nameController.text = entity.playlist?.name ?? '';
    introduceController.text = entity.playlist?.description ?? '';
    final tags = await HttpService.instance.getPlaylistTags();
    for (var element in tags) {
      element.checked = (entity.playlist?.tags ?? []).contains(element.name);
    }

    return PlaylistInfoEditViewData(entity, tags);
  }

  Future<void> updateCover(String path) async {
    _loading = true;
    notifyListeners();
    final json = await HttpService.instance.updatePlaylistCover(id, path);


    //{code: 200, data: {url_pre: https://p1.music.126.net/L7vsJ19b1UGC3Ehg0L2x9A==/109951168526919505, url: https://p1.music.126.net/c53mYNcEz_xuDcsV73TByA==/109951168526909884.jpg, imgId: 109951168526909884, code: 200}}
    if (json == null) {
      showToast('上传失败');
    } else {
      if (json["code"] == 200) {
        //成功
        _coverImage = json['data']['url'];
      } else {
        showToast('上传失败');
      }
    }

    _loading = false;
    notifyListeners();
  }
}
