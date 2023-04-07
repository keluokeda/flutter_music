import 'package:music/api/http_service.dart';
import 'package:music/entity/mv_play_entity.dart';
import 'package:music/pages/common/base_content_view_model.dart';
import 'package:video_player/video_player.dart';

class MVPlayViewModel extends BaseContentViewModel<MVPlayEntity> {
  VideoPlayerController? _videoPlayerController;

  VideoPlayerController? get controller => _videoPlayerController;

  final int id;

  MVPlayViewModel(this.id) {
    loadContent();
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController?.dispose();
  }

  @override
  Future<MVPlayEntity?> getContent() async {
    final videoUrl = await HttpService.instance.getMVVideoUrl(id);
    if (videoUrl == null) {
      return null;
    }
    final simiMvEntity = await HttpService.instance.getSimiMvList(id);

    if (simiMvEntity == null) {
      return null;
    }

    final mvDetailEntity = await HttpService.instance.getMVDetail(id);

    if (mvDetailEntity == null) {
      return null;
    }

    final mvDetailInfoEntity = await HttpService.instance.getMVDetailInfo(id);

    if (mvDetailInfoEntity == null) {
      return null;
    }

    if (_videoPlayerController == null) {
      _videoPlayerController = VideoPlayerController.network(videoUrl);
      await _videoPlayerController?.initialize();
      _videoPlayerController?.play();
    }

    return MVPlayEntity(
        videoUrl,
        simiMvEntity.mvs ?? [],
        mvDetailEntity.subed ?? false,
        mvDetailInfoEntity.liked ?? false,
        mvDetailInfoEntity.likedCount ?? 0,
        mvDetailInfoEntity.shareCount ?? 0,
        mvDetailInfoEntity.commentCount ?? 0,
        mvDetailEntity.data?.subCount ?? 0,
        mvDetailEntity.data?.playCount ?? 0,
        mvDetailEntity.data?.name ?? 'MV');
  }
}
