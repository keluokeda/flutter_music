import 'package:flutter/foundation.dart';
import 'package:music/api/http_service.dart';
import 'package:music/entity/home_view_data.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewData? _homeViewData;

  HomeViewData? get homeViewData => _homeViewData;

  HomeViewModel() {
    loadContent();
  }

  Future<void> loadContent() async {
    final entity1 = await HttpService.instance.getRecommendPlaylist();

    final entity2 = await HttpService.instance.getNewestAlbum();

    _homeViewData = HomeViewData(
        (entity1?.recommend ?? []).map((e) => e.toPlaylistItem()).toList(),
        (entity2?.albums ?? []).map((e) => e.toAlbumItem()).toList());
    notifyListeners();
  }
}
