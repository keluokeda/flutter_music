import 'package:music/api/http_service.dart';
import 'package:music/entity/load_list_result.dart';
import 'package:music/entity/song_item.dart';
import 'package:music/pages/common/base_refresh_and_load_more_view_model.dart';
import 'package:oktoast/oktoast.dart';

class CloudViewModel extends BaseRefreshAndLoadMoreViewModel<SongItem> {
  @override
  Future<LoadListResult<SongItem>> getList(int index) async {
    final entity = await HttpService.instance.userCloudSongs(index);

    return LoadListResult(
        entity?.data?.map((e) => e.simpleSong!.toSongItem()).toList() ?? [],
        entity?.hasMore ?? false);
  }

  void delete(SongItem item) {
    list.remove(item);
    notifyListeners();
    HttpService.instance.deleteCloudSong(item.id);
  }

  void upload(String path) async {
    showToast('上传中');
    await HttpService.instance.uploadMusicToCloud(path);
    showToast('上传完成');
    // refresh();
    callRefresh();
  }
}
